{- This file was auto-generated from protos/perfetto/trace/ftrace/mdss.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Protos.Perfetto.Trace.Ftrace.Mdss (
        MdpCmdKickoffFtraceEvent(), MdpCmdPingpongDoneFtraceEvent(),
        MdpCmdReadptrDoneFtraceEvent(), MdpCmdReleaseBwFtraceEvent(),
        MdpCmdWaitPingpongFtraceEvent(), MdpCommitFtraceEvent(),
        MdpCompareBwFtraceEvent(), MdpMisrCrcFtraceEvent(),
        MdpMixerUpdateFtraceEvent(), MdpPerfPrefillCalcFtraceEvent(),
        MdpPerfSetOtFtraceEvent(), MdpPerfSetPanicLutsFtraceEvent(),
        MdpPerfSetQosLutsFtraceEvent(), MdpPerfSetWmLevelsFtraceEvent(),
        MdpPerfUpdateBusFtraceEvent(), MdpSsppChangeFtraceEvent(),
        MdpSsppSetFtraceEvent(), MdpTraceCounterFtraceEvent(),
        MdpVideoUnderrunDoneFtraceEvent(),
        RotatorBwAoAsContextFtraceEvent(), TracingMarkWriteFtraceEvent()
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
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mdss_Fields.ctlNum' @:: Lens' MdpCmdKickoffFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mdss_Fields.maybe'ctlNum' @:: Lens' MdpCmdKickoffFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mdss_Fields.kickoffCnt' @:: Lens' MdpCmdKickoffFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mdss_Fields.maybe'kickoffCnt' @:: Lens' MdpCmdKickoffFtraceEvent (Prelude.Maybe Data.Int.Int32)@ -}
data MdpCmdKickoffFtraceEvent
  = MdpCmdKickoffFtraceEvent'_constructor {_MdpCmdKickoffFtraceEvent'ctlNum :: !(Prelude.Maybe Data.Word.Word32),
                                           _MdpCmdKickoffFtraceEvent'kickoffCnt :: !(Prelude.Maybe Data.Int.Int32),
                                           _MdpCmdKickoffFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MdpCmdKickoffFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField MdpCmdKickoffFtraceEvent "ctlNum" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MdpCmdKickoffFtraceEvent'ctlNum
           (\ x__ y__ -> x__ {_MdpCmdKickoffFtraceEvent'ctlNum = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MdpCmdKickoffFtraceEvent "maybe'ctlNum" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MdpCmdKickoffFtraceEvent'ctlNum
           (\ x__ y__ -> x__ {_MdpCmdKickoffFtraceEvent'ctlNum = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MdpCmdKickoffFtraceEvent "kickoffCnt" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MdpCmdKickoffFtraceEvent'kickoffCnt
           (\ x__ y__ -> x__ {_MdpCmdKickoffFtraceEvent'kickoffCnt = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MdpCmdKickoffFtraceEvent "maybe'kickoffCnt" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MdpCmdKickoffFtraceEvent'kickoffCnt
           (\ x__ y__ -> x__ {_MdpCmdKickoffFtraceEvent'kickoffCnt = y__}))
        Prelude.id
instance Data.ProtoLens.Message MdpCmdKickoffFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.MdpCmdKickoffFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\CANMdpCmdKickoffFtraceEvent\DC2\ETB\n\
      \\actl_num\CAN\SOH \SOH(\rR\ACKctlNum\DC2\US\n\
      \\vkickoff_cnt\CAN\STX \SOH(\ENQR\n\
      \kickoffCnt"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        ctlNum__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "ctl_num"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'ctlNum")) ::
              Data.ProtoLens.FieldDescriptor MdpCmdKickoffFtraceEvent
        kickoffCnt__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "kickoff_cnt"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'kickoffCnt")) ::
              Data.ProtoLens.FieldDescriptor MdpCmdKickoffFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, ctlNum__field_descriptor),
           (Data.ProtoLens.Tag 2, kickoffCnt__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MdpCmdKickoffFtraceEvent'_unknownFields
        (\ x__ y__ -> x__ {_MdpCmdKickoffFtraceEvent'_unknownFields = y__})
  defMessage
    = MdpCmdKickoffFtraceEvent'_constructor
        {_MdpCmdKickoffFtraceEvent'ctlNum = Prelude.Nothing,
         _MdpCmdKickoffFtraceEvent'kickoffCnt = Prelude.Nothing,
         _MdpCmdKickoffFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MdpCmdKickoffFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser MdpCmdKickoffFtraceEvent
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
                                       "ctl_num"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"ctlNum") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "kickoff_cnt"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"kickoffCnt") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "MdpCmdKickoffFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'ctlNum") _x
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
                       (Data.ProtoLens.Field.field @"maybe'kickoffCnt") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          ((Prelude..)
                             Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData MdpCmdKickoffFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MdpCmdKickoffFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_MdpCmdKickoffFtraceEvent'ctlNum x__)
                (Control.DeepSeq.deepseq
                   (_MdpCmdKickoffFtraceEvent'kickoffCnt x__) ()))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mdss_Fields.ctlNum' @:: Lens' MdpCmdPingpongDoneFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mdss_Fields.maybe'ctlNum' @:: Lens' MdpCmdPingpongDoneFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mdss_Fields.intfNum' @:: Lens' MdpCmdPingpongDoneFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mdss_Fields.maybe'intfNum' @:: Lens' MdpCmdPingpongDoneFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mdss_Fields.ppNum' @:: Lens' MdpCmdPingpongDoneFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mdss_Fields.maybe'ppNum' @:: Lens' MdpCmdPingpongDoneFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mdss_Fields.koffCnt' @:: Lens' MdpCmdPingpongDoneFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mdss_Fields.maybe'koffCnt' @:: Lens' MdpCmdPingpongDoneFtraceEvent (Prelude.Maybe Data.Int.Int32)@ -}
data MdpCmdPingpongDoneFtraceEvent
  = MdpCmdPingpongDoneFtraceEvent'_constructor {_MdpCmdPingpongDoneFtraceEvent'ctlNum :: !(Prelude.Maybe Data.Word.Word32),
                                                _MdpCmdPingpongDoneFtraceEvent'intfNum :: !(Prelude.Maybe Data.Word.Word32),
                                                _MdpCmdPingpongDoneFtraceEvent'ppNum :: !(Prelude.Maybe Data.Word.Word32),
                                                _MdpCmdPingpongDoneFtraceEvent'koffCnt :: !(Prelude.Maybe Data.Int.Int32),
                                                _MdpCmdPingpongDoneFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MdpCmdPingpongDoneFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField MdpCmdPingpongDoneFtraceEvent "ctlNum" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MdpCmdPingpongDoneFtraceEvent'ctlNum
           (\ x__ y__ -> x__ {_MdpCmdPingpongDoneFtraceEvent'ctlNum = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MdpCmdPingpongDoneFtraceEvent "maybe'ctlNum" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MdpCmdPingpongDoneFtraceEvent'ctlNum
           (\ x__ y__ -> x__ {_MdpCmdPingpongDoneFtraceEvent'ctlNum = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MdpCmdPingpongDoneFtraceEvent "intfNum" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MdpCmdPingpongDoneFtraceEvent'intfNum
           (\ x__ y__ -> x__ {_MdpCmdPingpongDoneFtraceEvent'intfNum = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MdpCmdPingpongDoneFtraceEvent "maybe'intfNum" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MdpCmdPingpongDoneFtraceEvent'intfNum
           (\ x__ y__ -> x__ {_MdpCmdPingpongDoneFtraceEvent'intfNum = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MdpCmdPingpongDoneFtraceEvent "ppNum" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MdpCmdPingpongDoneFtraceEvent'ppNum
           (\ x__ y__ -> x__ {_MdpCmdPingpongDoneFtraceEvent'ppNum = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MdpCmdPingpongDoneFtraceEvent "maybe'ppNum" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MdpCmdPingpongDoneFtraceEvent'ppNum
           (\ x__ y__ -> x__ {_MdpCmdPingpongDoneFtraceEvent'ppNum = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MdpCmdPingpongDoneFtraceEvent "koffCnt" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MdpCmdPingpongDoneFtraceEvent'koffCnt
           (\ x__ y__ -> x__ {_MdpCmdPingpongDoneFtraceEvent'koffCnt = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MdpCmdPingpongDoneFtraceEvent "maybe'koffCnt" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MdpCmdPingpongDoneFtraceEvent'koffCnt
           (\ x__ y__ -> x__ {_MdpCmdPingpongDoneFtraceEvent'koffCnt = y__}))
        Prelude.id
instance Data.ProtoLens.Message MdpCmdPingpongDoneFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.MdpCmdPingpongDoneFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\GSMdpCmdPingpongDoneFtraceEvent\DC2\ETB\n\
      \\actl_num\CAN\SOH \SOH(\rR\ACKctlNum\DC2\EM\n\
      \\bintf_num\CAN\STX \SOH(\rR\aintfNum\DC2\NAK\n\
      \\ACKpp_num\CAN\ETX \SOH(\rR\ENQppNum\DC2\EM\n\
      \\bkoff_cnt\CAN\EOT \SOH(\ENQR\akoffCnt"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        ctlNum__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "ctl_num"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'ctlNum")) ::
              Data.ProtoLens.FieldDescriptor MdpCmdPingpongDoneFtraceEvent
        intfNum__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "intf_num"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'intfNum")) ::
              Data.ProtoLens.FieldDescriptor MdpCmdPingpongDoneFtraceEvent
        ppNum__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "pp_num"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'ppNum")) ::
              Data.ProtoLens.FieldDescriptor MdpCmdPingpongDoneFtraceEvent
        koffCnt__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "koff_cnt"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'koffCnt")) ::
              Data.ProtoLens.FieldDescriptor MdpCmdPingpongDoneFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, ctlNum__field_descriptor),
           (Data.ProtoLens.Tag 2, intfNum__field_descriptor),
           (Data.ProtoLens.Tag 3, ppNum__field_descriptor),
           (Data.ProtoLens.Tag 4, koffCnt__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MdpCmdPingpongDoneFtraceEvent'_unknownFields
        (\ x__ y__
           -> x__ {_MdpCmdPingpongDoneFtraceEvent'_unknownFields = y__})
  defMessage
    = MdpCmdPingpongDoneFtraceEvent'_constructor
        {_MdpCmdPingpongDoneFtraceEvent'ctlNum = Prelude.Nothing,
         _MdpCmdPingpongDoneFtraceEvent'intfNum = Prelude.Nothing,
         _MdpCmdPingpongDoneFtraceEvent'ppNum = Prelude.Nothing,
         _MdpCmdPingpongDoneFtraceEvent'koffCnt = Prelude.Nothing,
         _MdpCmdPingpongDoneFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MdpCmdPingpongDoneFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser MdpCmdPingpongDoneFtraceEvent
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
                                       "ctl_num"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"ctlNum") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "intf_num"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"intfNum") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "pp_num"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"ppNum") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "koff_cnt"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"koffCnt") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "MdpCmdPingpongDoneFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'ctlNum") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       ((Prelude..)
                          Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'intfNum") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          ((Prelude..)
                             Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'ppNum") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             ((Prelude..)
                                Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'koffCnt") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                                ((Prelude..)
                                   Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                      (Data.ProtoLens.Encoding.Wire.buildFieldSet
                         (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))
instance Control.DeepSeq.NFData MdpCmdPingpongDoneFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MdpCmdPingpongDoneFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_MdpCmdPingpongDoneFtraceEvent'ctlNum x__)
                (Control.DeepSeq.deepseq
                   (_MdpCmdPingpongDoneFtraceEvent'intfNum x__)
                   (Control.DeepSeq.deepseq
                      (_MdpCmdPingpongDoneFtraceEvent'ppNum x__)
                      (Control.DeepSeq.deepseq
                         (_MdpCmdPingpongDoneFtraceEvent'koffCnt x__) ()))))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mdss_Fields.ctlNum' @:: Lens' MdpCmdReadptrDoneFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mdss_Fields.maybe'ctlNum' @:: Lens' MdpCmdReadptrDoneFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mdss_Fields.koffCnt' @:: Lens' MdpCmdReadptrDoneFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mdss_Fields.maybe'koffCnt' @:: Lens' MdpCmdReadptrDoneFtraceEvent (Prelude.Maybe Data.Int.Int32)@ -}
data MdpCmdReadptrDoneFtraceEvent
  = MdpCmdReadptrDoneFtraceEvent'_constructor {_MdpCmdReadptrDoneFtraceEvent'ctlNum :: !(Prelude.Maybe Data.Word.Word32),
                                               _MdpCmdReadptrDoneFtraceEvent'koffCnt :: !(Prelude.Maybe Data.Int.Int32),
                                               _MdpCmdReadptrDoneFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MdpCmdReadptrDoneFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField MdpCmdReadptrDoneFtraceEvent "ctlNum" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MdpCmdReadptrDoneFtraceEvent'ctlNum
           (\ x__ y__ -> x__ {_MdpCmdReadptrDoneFtraceEvent'ctlNum = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MdpCmdReadptrDoneFtraceEvent "maybe'ctlNum" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MdpCmdReadptrDoneFtraceEvent'ctlNum
           (\ x__ y__ -> x__ {_MdpCmdReadptrDoneFtraceEvent'ctlNum = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MdpCmdReadptrDoneFtraceEvent "koffCnt" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MdpCmdReadptrDoneFtraceEvent'koffCnt
           (\ x__ y__ -> x__ {_MdpCmdReadptrDoneFtraceEvent'koffCnt = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MdpCmdReadptrDoneFtraceEvent "maybe'koffCnt" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MdpCmdReadptrDoneFtraceEvent'koffCnt
           (\ x__ y__ -> x__ {_MdpCmdReadptrDoneFtraceEvent'koffCnt = y__}))
        Prelude.id
instance Data.ProtoLens.Message MdpCmdReadptrDoneFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.MdpCmdReadptrDoneFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\FSMdpCmdReadptrDoneFtraceEvent\DC2\ETB\n\
      \\actl_num\CAN\SOH \SOH(\rR\ACKctlNum\DC2\EM\n\
      \\bkoff_cnt\CAN\STX \SOH(\ENQR\akoffCnt"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        ctlNum__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "ctl_num"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'ctlNum")) ::
              Data.ProtoLens.FieldDescriptor MdpCmdReadptrDoneFtraceEvent
        koffCnt__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "koff_cnt"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'koffCnt")) ::
              Data.ProtoLens.FieldDescriptor MdpCmdReadptrDoneFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, ctlNum__field_descriptor),
           (Data.ProtoLens.Tag 2, koffCnt__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MdpCmdReadptrDoneFtraceEvent'_unknownFields
        (\ x__ y__
           -> x__ {_MdpCmdReadptrDoneFtraceEvent'_unknownFields = y__})
  defMessage
    = MdpCmdReadptrDoneFtraceEvent'_constructor
        {_MdpCmdReadptrDoneFtraceEvent'ctlNum = Prelude.Nothing,
         _MdpCmdReadptrDoneFtraceEvent'koffCnt = Prelude.Nothing,
         _MdpCmdReadptrDoneFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MdpCmdReadptrDoneFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser MdpCmdReadptrDoneFtraceEvent
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
                                       "ctl_num"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"ctlNum") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "koff_cnt"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"koffCnt") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "MdpCmdReadptrDoneFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'ctlNum") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       ((Prelude..)
                          Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'koffCnt") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          ((Prelude..)
                             Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData MdpCmdReadptrDoneFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MdpCmdReadptrDoneFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_MdpCmdReadptrDoneFtraceEvent'ctlNum x__)
                (Control.DeepSeq.deepseq
                   (_MdpCmdReadptrDoneFtraceEvent'koffCnt x__) ()))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mdss_Fields.ctlNum' @:: Lens' MdpCmdReleaseBwFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mdss_Fields.maybe'ctlNum' @:: Lens' MdpCmdReleaseBwFtraceEvent (Prelude.Maybe Data.Word.Word32)@ -}
data MdpCmdReleaseBwFtraceEvent
  = MdpCmdReleaseBwFtraceEvent'_constructor {_MdpCmdReleaseBwFtraceEvent'ctlNum :: !(Prelude.Maybe Data.Word.Word32),
                                             _MdpCmdReleaseBwFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MdpCmdReleaseBwFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField MdpCmdReleaseBwFtraceEvent "ctlNum" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MdpCmdReleaseBwFtraceEvent'ctlNum
           (\ x__ y__ -> x__ {_MdpCmdReleaseBwFtraceEvent'ctlNum = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MdpCmdReleaseBwFtraceEvent "maybe'ctlNum" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MdpCmdReleaseBwFtraceEvent'ctlNum
           (\ x__ y__ -> x__ {_MdpCmdReleaseBwFtraceEvent'ctlNum = y__}))
        Prelude.id
instance Data.ProtoLens.Message MdpCmdReleaseBwFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.MdpCmdReleaseBwFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\SUBMdpCmdReleaseBwFtraceEvent\DC2\ETB\n\
      \\actl_num\CAN\SOH \SOH(\rR\ACKctlNum"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        ctlNum__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "ctl_num"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'ctlNum")) ::
              Data.ProtoLens.FieldDescriptor MdpCmdReleaseBwFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, ctlNum__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MdpCmdReleaseBwFtraceEvent'_unknownFields
        (\ x__ y__
           -> x__ {_MdpCmdReleaseBwFtraceEvent'_unknownFields = y__})
  defMessage
    = MdpCmdReleaseBwFtraceEvent'_constructor
        {_MdpCmdReleaseBwFtraceEvent'ctlNum = Prelude.Nothing,
         _MdpCmdReleaseBwFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MdpCmdReleaseBwFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser MdpCmdReleaseBwFtraceEvent
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
                                       "ctl_num"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"ctlNum") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "MdpCmdReleaseBwFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'ctlNum") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       ((Prelude..)
                          Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData MdpCmdReleaseBwFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MdpCmdReleaseBwFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_MdpCmdReleaseBwFtraceEvent'ctlNum x__) ())
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mdss_Fields.ctlNum' @:: Lens' MdpCmdWaitPingpongFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mdss_Fields.maybe'ctlNum' @:: Lens' MdpCmdWaitPingpongFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mdss_Fields.kickoffCnt' @:: Lens' MdpCmdWaitPingpongFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mdss_Fields.maybe'kickoffCnt' @:: Lens' MdpCmdWaitPingpongFtraceEvent (Prelude.Maybe Data.Int.Int32)@ -}
data MdpCmdWaitPingpongFtraceEvent
  = MdpCmdWaitPingpongFtraceEvent'_constructor {_MdpCmdWaitPingpongFtraceEvent'ctlNum :: !(Prelude.Maybe Data.Word.Word32),
                                                _MdpCmdWaitPingpongFtraceEvent'kickoffCnt :: !(Prelude.Maybe Data.Int.Int32),
                                                _MdpCmdWaitPingpongFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MdpCmdWaitPingpongFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField MdpCmdWaitPingpongFtraceEvent "ctlNum" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MdpCmdWaitPingpongFtraceEvent'ctlNum
           (\ x__ y__ -> x__ {_MdpCmdWaitPingpongFtraceEvent'ctlNum = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MdpCmdWaitPingpongFtraceEvent "maybe'ctlNum" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MdpCmdWaitPingpongFtraceEvent'ctlNum
           (\ x__ y__ -> x__ {_MdpCmdWaitPingpongFtraceEvent'ctlNum = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MdpCmdWaitPingpongFtraceEvent "kickoffCnt" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MdpCmdWaitPingpongFtraceEvent'kickoffCnt
           (\ x__ y__
              -> x__ {_MdpCmdWaitPingpongFtraceEvent'kickoffCnt = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MdpCmdWaitPingpongFtraceEvent "maybe'kickoffCnt" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MdpCmdWaitPingpongFtraceEvent'kickoffCnt
           (\ x__ y__
              -> x__ {_MdpCmdWaitPingpongFtraceEvent'kickoffCnt = y__}))
        Prelude.id
instance Data.ProtoLens.Message MdpCmdWaitPingpongFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.MdpCmdWaitPingpongFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\GSMdpCmdWaitPingpongFtraceEvent\DC2\ETB\n\
      \\actl_num\CAN\SOH \SOH(\rR\ACKctlNum\DC2\US\n\
      \\vkickoff_cnt\CAN\STX \SOH(\ENQR\n\
      \kickoffCnt"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        ctlNum__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "ctl_num"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'ctlNum")) ::
              Data.ProtoLens.FieldDescriptor MdpCmdWaitPingpongFtraceEvent
        kickoffCnt__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "kickoff_cnt"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'kickoffCnt")) ::
              Data.ProtoLens.FieldDescriptor MdpCmdWaitPingpongFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, ctlNum__field_descriptor),
           (Data.ProtoLens.Tag 2, kickoffCnt__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MdpCmdWaitPingpongFtraceEvent'_unknownFields
        (\ x__ y__
           -> x__ {_MdpCmdWaitPingpongFtraceEvent'_unknownFields = y__})
  defMessage
    = MdpCmdWaitPingpongFtraceEvent'_constructor
        {_MdpCmdWaitPingpongFtraceEvent'ctlNum = Prelude.Nothing,
         _MdpCmdWaitPingpongFtraceEvent'kickoffCnt = Prelude.Nothing,
         _MdpCmdWaitPingpongFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MdpCmdWaitPingpongFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser MdpCmdWaitPingpongFtraceEvent
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
                                       "ctl_num"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"ctlNum") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "kickoff_cnt"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"kickoffCnt") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "MdpCmdWaitPingpongFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'ctlNum") _x
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
                       (Data.ProtoLens.Field.field @"maybe'kickoffCnt") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          ((Prelude..)
                             Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData MdpCmdWaitPingpongFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MdpCmdWaitPingpongFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_MdpCmdWaitPingpongFtraceEvent'ctlNum x__)
                (Control.DeepSeq.deepseq
                   (_MdpCmdWaitPingpongFtraceEvent'kickoffCnt x__) ()))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mdss_Fields.num' @:: Lens' MdpCommitFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mdss_Fields.maybe'num' @:: Lens' MdpCommitFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mdss_Fields.playCnt' @:: Lens' MdpCommitFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mdss_Fields.maybe'playCnt' @:: Lens' MdpCommitFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mdss_Fields.clkRate' @:: Lens' MdpCommitFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mdss_Fields.maybe'clkRate' @:: Lens' MdpCommitFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mdss_Fields.bandwidth' @:: Lens' MdpCommitFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mdss_Fields.maybe'bandwidth' @:: Lens' MdpCommitFtraceEvent (Prelude.Maybe Data.Word.Word64)@ -}
data MdpCommitFtraceEvent
  = MdpCommitFtraceEvent'_constructor {_MdpCommitFtraceEvent'num :: !(Prelude.Maybe Data.Word.Word32),
                                       _MdpCommitFtraceEvent'playCnt :: !(Prelude.Maybe Data.Word.Word32),
                                       _MdpCommitFtraceEvent'clkRate :: !(Prelude.Maybe Data.Word.Word32),
                                       _MdpCommitFtraceEvent'bandwidth :: !(Prelude.Maybe Data.Word.Word64),
                                       _MdpCommitFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MdpCommitFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField MdpCommitFtraceEvent "num" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MdpCommitFtraceEvent'num
           (\ x__ y__ -> x__ {_MdpCommitFtraceEvent'num = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MdpCommitFtraceEvent "maybe'num" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MdpCommitFtraceEvent'num
           (\ x__ y__ -> x__ {_MdpCommitFtraceEvent'num = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MdpCommitFtraceEvent "playCnt" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MdpCommitFtraceEvent'playCnt
           (\ x__ y__ -> x__ {_MdpCommitFtraceEvent'playCnt = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MdpCommitFtraceEvent "maybe'playCnt" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MdpCommitFtraceEvent'playCnt
           (\ x__ y__ -> x__ {_MdpCommitFtraceEvent'playCnt = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MdpCommitFtraceEvent "clkRate" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MdpCommitFtraceEvent'clkRate
           (\ x__ y__ -> x__ {_MdpCommitFtraceEvent'clkRate = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MdpCommitFtraceEvent "maybe'clkRate" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MdpCommitFtraceEvent'clkRate
           (\ x__ y__ -> x__ {_MdpCommitFtraceEvent'clkRate = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MdpCommitFtraceEvent "bandwidth" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MdpCommitFtraceEvent'bandwidth
           (\ x__ y__ -> x__ {_MdpCommitFtraceEvent'bandwidth = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MdpCommitFtraceEvent "maybe'bandwidth" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MdpCommitFtraceEvent'bandwidth
           (\ x__ y__ -> x__ {_MdpCommitFtraceEvent'bandwidth = y__}))
        Prelude.id
instance Data.ProtoLens.Message MdpCommitFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.MdpCommitFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\DC4MdpCommitFtraceEvent\DC2\DLE\n\
      \\ETXnum\CAN\SOH \SOH(\rR\ETXnum\DC2\EM\n\
      \\bplay_cnt\CAN\STX \SOH(\rR\aplayCnt\DC2\EM\n\
      \\bclk_rate\CAN\ETX \SOH(\rR\aclkRate\DC2\FS\n\
      \\tbandwidth\CAN\EOT \SOH(\EOTR\tbandwidth"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        num__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "num"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'num")) ::
              Data.ProtoLens.FieldDescriptor MdpCommitFtraceEvent
        playCnt__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "play_cnt"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'playCnt")) ::
              Data.ProtoLens.FieldDescriptor MdpCommitFtraceEvent
        clkRate__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "clk_rate"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'clkRate")) ::
              Data.ProtoLens.FieldDescriptor MdpCommitFtraceEvent
        bandwidth__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "bandwidth"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'bandwidth")) ::
              Data.ProtoLens.FieldDescriptor MdpCommitFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, num__field_descriptor),
           (Data.ProtoLens.Tag 2, playCnt__field_descriptor),
           (Data.ProtoLens.Tag 3, clkRate__field_descriptor),
           (Data.ProtoLens.Tag 4, bandwidth__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MdpCommitFtraceEvent'_unknownFields
        (\ x__ y__ -> x__ {_MdpCommitFtraceEvent'_unknownFields = y__})
  defMessage
    = MdpCommitFtraceEvent'_constructor
        {_MdpCommitFtraceEvent'num = Prelude.Nothing,
         _MdpCommitFtraceEvent'playCnt = Prelude.Nothing,
         _MdpCommitFtraceEvent'clkRate = Prelude.Nothing,
         _MdpCommitFtraceEvent'bandwidth = Prelude.Nothing,
         _MdpCommitFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MdpCommitFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser MdpCommitFtraceEvent
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
                                       "num"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"num") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "play_cnt"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"playCnt") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "clk_rate"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"clkRate") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "bandwidth"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"bandwidth") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "MdpCommitFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'num") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       ((Prelude..)
                          Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'playCnt") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          ((Prelude..)
                             Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'clkRate") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             ((Prelude..)
                                Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view
                             (Data.ProtoLens.Field.field @"maybe'bandwidth") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                      (Data.ProtoLens.Encoding.Wire.buildFieldSet
                         (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))
instance Control.DeepSeq.NFData MdpCommitFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MdpCommitFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_MdpCommitFtraceEvent'num x__)
                (Control.DeepSeq.deepseq
                   (_MdpCommitFtraceEvent'playCnt x__)
                   (Control.DeepSeq.deepseq
                      (_MdpCommitFtraceEvent'clkRate x__)
                      (Control.DeepSeq.deepseq
                         (_MdpCommitFtraceEvent'bandwidth x__) ()))))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mdss_Fields.newAb' @:: Lens' MdpCompareBwFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mdss_Fields.maybe'newAb' @:: Lens' MdpCompareBwFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mdss_Fields.newIb' @:: Lens' MdpCompareBwFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mdss_Fields.maybe'newIb' @:: Lens' MdpCompareBwFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mdss_Fields.newWb' @:: Lens' MdpCompareBwFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mdss_Fields.maybe'newWb' @:: Lens' MdpCompareBwFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mdss_Fields.oldAb' @:: Lens' MdpCompareBwFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mdss_Fields.maybe'oldAb' @:: Lens' MdpCompareBwFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mdss_Fields.oldIb' @:: Lens' MdpCompareBwFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mdss_Fields.maybe'oldIb' @:: Lens' MdpCompareBwFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mdss_Fields.oldWb' @:: Lens' MdpCompareBwFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mdss_Fields.maybe'oldWb' @:: Lens' MdpCompareBwFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mdss_Fields.paramsChanged' @:: Lens' MdpCompareBwFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mdss_Fields.maybe'paramsChanged' @:: Lens' MdpCompareBwFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mdss_Fields.updateBw' @:: Lens' MdpCompareBwFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mdss_Fields.maybe'updateBw' @:: Lens' MdpCompareBwFtraceEvent (Prelude.Maybe Data.Word.Word32)@ -}
data MdpCompareBwFtraceEvent
  = MdpCompareBwFtraceEvent'_constructor {_MdpCompareBwFtraceEvent'newAb :: !(Prelude.Maybe Data.Word.Word64),
                                          _MdpCompareBwFtraceEvent'newIb :: !(Prelude.Maybe Data.Word.Word64),
                                          _MdpCompareBwFtraceEvent'newWb :: !(Prelude.Maybe Data.Word.Word64),
                                          _MdpCompareBwFtraceEvent'oldAb :: !(Prelude.Maybe Data.Word.Word64),
                                          _MdpCompareBwFtraceEvent'oldIb :: !(Prelude.Maybe Data.Word.Word64),
                                          _MdpCompareBwFtraceEvent'oldWb :: !(Prelude.Maybe Data.Word.Word64),
                                          _MdpCompareBwFtraceEvent'paramsChanged :: !(Prelude.Maybe Data.Word.Word32),
                                          _MdpCompareBwFtraceEvent'updateBw :: !(Prelude.Maybe Data.Word.Word32),
                                          _MdpCompareBwFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MdpCompareBwFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField MdpCompareBwFtraceEvent "newAb" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MdpCompareBwFtraceEvent'newAb
           (\ x__ y__ -> x__ {_MdpCompareBwFtraceEvent'newAb = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MdpCompareBwFtraceEvent "maybe'newAb" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MdpCompareBwFtraceEvent'newAb
           (\ x__ y__ -> x__ {_MdpCompareBwFtraceEvent'newAb = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MdpCompareBwFtraceEvent "newIb" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MdpCompareBwFtraceEvent'newIb
           (\ x__ y__ -> x__ {_MdpCompareBwFtraceEvent'newIb = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MdpCompareBwFtraceEvent "maybe'newIb" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MdpCompareBwFtraceEvent'newIb
           (\ x__ y__ -> x__ {_MdpCompareBwFtraceEvent'newIb = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MdpCompareBwFtraceEvent "newWb" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MdpCompareBwFtraceEvent'newWb
           (\ x__ y__ -> x__ {_MdpCompareBwFtraceEvent'newWb = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MdpCompareBwFtraceEvent "maybe'newWb" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MdpCompareBwFtraceEvent'newWb
           (\ x__ y__ -> x__ {_MdpCompareBwFtraceEvent'newWb = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MdpCompareBwFtraceEvent "oldAb" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MdpCompareBwFtraceEvent'oldAb
           (\ x__ y__ -> x__ {_MdpCompareBwFtraceEvent'oldAb = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MdpCompareBwFtraceEvent "maybe'oldAb" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MdpCompareBwFtraceEvent'oldAb
           (\ x__ y__ -> x__ {_MdpCompareBwFtraceEvent'oldAb = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MdpCompareBwFtraceEvent "oldIb" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MdpCompareBwFtraceEvent'oldIb
           (\ x__ y__ -> x__ {_MdpCompareBwFtraceEvent'oldIb = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MdpCompareBwFtraceEvent "maybe'oldIb" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MdpCompareBwFtraceEvent'oldIb
           (\ x__ y__ -> x__ {_MdpCompareBwFtraceEvent'oldIb = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MdpCompareBwFtraceEvent "oldWb" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MdpCompareBwFtraceEvent'oldWb
           (\ x__ y__ -> x__ {_MdpCompareBwFtraceEvent'oldWb = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MdpCompareBwFtraceEvent "maybe'oldWb" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MdpCompareBwFtraceEvent'oldWb
           (\ x__ y__ -> x__ {_MdpCompareBwFtraceEvent'oldWb = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MdpCompareBwFtraceEvent "paramsChanged" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MdpCompareBwFtraceEvent'paramsChanged
           (\ x__ y__ -> x__ {_MdpCompareBwFtraceEvent'paramsChanged = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MdpCompareBwFtraceEvent "maybe'paramsChanged" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MdpCompareBwFtraceEvent'paramsChanged
           (\ x__ y__ -> x__ {_MdpCompareBwFtraceEvent'paramsChanged = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MdpCompareBwFtraceEvent "updateBw" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MdpCompareBwFtraceEvent'updateBw
           (\ x__ y__ -> x__ {_MdpCompareBwFtraceEvent'updateBw = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MdpCompareBwFtraceEvent "maybe'updateBw" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MdpCompareBwFtraceEvent'updateBw
           (\ x__ y__ -> x__ {_MdpCompareBwFtraceEvent'updateBw = y__}))
        Prelude.id
instance Data.ProtoLens.Message MdpCompareBwFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.MdpCompareBwFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\ETBMdpCompareBwFtraceEvent\DC2\NAK\n\
      \\ACKnew_ab\CAN\SOH \SOH(\EOTR\ENQnewAb\DC2\NAK\n\
      \\ACKnew_ib\CAN\STX \SOH(\EOTR\ENQnewIb\DC2\NAK\n\
      \\ACKnew_wb\CAN\ETX \SOH(\EOTR\ENQnewWb\DC2\NAK\n\
      \\ACKold_ab\CAN\EOT \SOH(\EOTR\ENQoldAb\DC2\NAK\n\
      \\ACKold_ib\CAN\ENQ \SOH(\EOTR\ENQoldIb\DC2\NAK\n\
      \\ACKold_wb\CAN\ACK \SOH(\EOTR\ENQoldWb\DC2%\n\
      \\SOparams_changed\CAN\a \SOH(\rR\rparamsChanged\DC2\ESC\n\
      \\tupdate_bw\CAN\b \SOH(\rR\bupdateBw"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        newAb__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "new_ab"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'newAb")) ::
              Data.ProtoLens.FieldDescriptor MdpCompareBwFtraceEvent
        newIb__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "new_ib"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'newIb")) ::
              Data.ProtoLens.FieldDescriptor MdpCompareBwFtraceEvent
        newWb__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "new_wb"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'newWb")) ::
              Data.ProtoLens.FieldDescriptor MdpCompareBwFtraceEvent
        oldAb__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "old_ab"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'oldAb")) ::
              Data.ProtoLens.FieldDescriptor MdpCompareBwFtraceEvent
        oldIb__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "old_ib"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'oldIb")) ::
              Data.ProtoLens.FieldDescriptor MdpCompareBwFtraceEvent
        oldWb__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "old_wb"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'oldWb")) ::
              Data.ProtoLens.FieldDescriptor MdpCompareBwFtraceEvent
        paramsChanged__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "params_changed"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'paramsChanged")) ::
              Data.ProtoLens.FieldDescriptor MdpCompareBwFtraceEvent
        updateBw__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "update_bw"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'updateBw")) ::
              Data.ProtoLens.FieldDescriptor MdpCompareBwFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, newAb__field_descriptor),
           (Data.ProtoLens.Tag 2, newIb__field_descriptor),
           (Data.ProtoLens.Tag 3, newWb__field_descriptor),
           (Data.ProtoLens.Tag 4, oldAb__field_descriptor),
           (Data.ProtoLens.Tag 5, oldIb__field_descriptor),
           (Data.ProtoLens.Tag 6, oldWb__field_descriptor),
           (Data.ProtoLens.Tag 7, paramsChanged__field_descriptor),
           (Data.ProtoLens.Tag 8, updateBw__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MdpCompareBwFtraceEvent'_unknownFields
        (\ x__ y__ -> x__ {_MdpCompareBwFtraceEvent'_unknownFields = y__})
  defMessage
    = MdpCompareBwFtraceEvent'_constructor
        {_MdpCompareBwFtraceEvent'newAb = Prelude.Nothing,
         _MdpCompareBwFtraceEvent'newIb = Prelude.Nothing,
         _MdpCompareBwFtraceEvent'newWb = Prelude.Nothing,
         _MdpCompareBwFtraceEvent'oldAb = Prelude.Nothing,
         _MdpCompareBwFtraceEvent'oldIb = Prelude.Nothing,
         _MdpCompareBwFtraceEvent'oldWb = Prelude.Nothing,
         _MdpCompareBwFtraceEvent'paramsChanged = Prelude.Nothing,
         _MdpCompareBwFtraceEvent'updateBw = Prelude.Nothing,
         _MdpCompareBwFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MdpCompareBwFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser MdpCompareBwFtraceEvent
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
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "new_ab"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"newAb") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "new_ib"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"newIb") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "new_wb"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"newWb") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "old_ab"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"oldAb") y x)
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "old_ib"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"oldIb") y x)
                        48
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "old_wb"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"oldWb") y x)
                        56
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "params_changed"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"paramsChanged") y x)
                        64
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "update_bw"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"updateBw") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "MdpCompareBwFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'newAb") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'newIb") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'newWb") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'oldAb") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                      ((Data.Monoid.<>)
                         (case
                              Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'oldIb") _x
                          of
                            Prelude.Nothing -> Data.Monoid.mempty
                            (Prelude.Just _v)
                              -> (Data.Monoid.<>)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt 40)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                         ((Data.Monoid.<>)
                            (case
                                 Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'oldWb") _x
                             of
                               Prelude.Nothing -> Data.Monoid.mempty
                               (Prelude.Just _v)
                                 -> (Data.Monoid.<>)
                                      (Data.ProtoLens.Encoding.Bytes.putVarInt 48)
                                      (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                            ((Data.Monoid.<>)
                               (case
                                    Lens.Family2.view
                                      (Data.ProtoLens.Field.field @"maybe'paramsChanged") _x
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
                                         (Data.ProtoLens.Field.field @"maybe'updateBw") _x
                                   of
                                     Prelude.Nothing -> Data.Monoid.mempty
                                     (Prelude.Just _v)
                                       -> (Data.Monoid.<>)
                                            (Data.ProtoLens.Encoding.Bytes.putVarInt 64)
                                            ((Prelude..)
                                               Data.ProtoLens.Encoding.Bytes.putVarInt
                                               Prelude.fromIntegral _v))
                                  (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                     (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))))))
instance Control.DeepSeq.NFData MdpCompareBwFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MdpCompareBwFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_MdpCompareBwFtraceEvent'newAb x__)
                (Control.DeepSeq.deepseq
                   (_MdpCompareBwFtraceEvent'newIb x__)
                   (Control.DeepSeq.deepseq
                      (_MdpCompareBwFtraceEvent'newWb x__)
                      (Control.DeepSeq.deepseq
                         (_MdpCompareBwFtraceEvent'oldAb x__)
                         (Control.DeepSeq.deepseq
                            (_MdpCompareBwFtraceEvent'oldIb x__)
                            (Control.DeepSeq.deepseq
                               (_MdpCompareBwFtraceEvent'oldWb x__)
                               (Control.DeepSeq.deepseq
                                  (_MdpCompareBwFtraceEvent'paramsChanged x__)
                                  (Control.DeepSeq.deepseq
                                     (_MdpCompareBwFtraceEvent'updateBw x__) ()))))))))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mdss_Fields.blockId' @:: Lens' MdpMisrCrcFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mdss_Fields.maybe'blockId' @:: Lens' MdpMisrCrcFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mdss_Fields.vsyncCnt' @:: Lens' MdpMisrCrcFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mdss_Fields.maybe'vsyncCnt' @:: Lens' MdpMisrCrcFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mdss_Fields.crc' @:: Lens' MdpMisrCrcFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mdss_Fields.maybe'crc' @:: Lens' MdpMisrCrcFtraceEvent (Prelude.Maybe Data.Word.Word32)@ -}
data MdpMisrCrcFtraceEvent
  = MdpMisrCrcFtraceEvent'_constructor {_MdpMisrCrcFtraceEvent'blockId :: !(Prelude.Maybe Data.Word.Word32),
                                        _MdpMisrCrcFtraceEvent'vsyncCnt :: !(Prelude.Maybe Data.Word.Word32),
                                        _MdpMisrCrcFtraceEvent'crc :: !(Prelude.Maybe Data.Word.Word32),
                                        _MdpMisrCrcFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MdpMisrCrcFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField MdpMisrCrcFtraceEvent "blockId" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MdpMisrCrcFtraceEvent'blockId
           (\ x__ y__ -> x__ {_MdpMisrCrcFtraceEvent'blockId = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MdpMisrCrcFtraceEvent "maybe'blockId" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MdpMisrCrcFtraceEvent'blockId
           (\ x__ y__ -> x__ {_MdpMisrCrcFtraceEvent'blockId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MdpMisrCrcFtraceEvent "vsyncCnt" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MdpMisrCrcFtraceEvent'vsyncCnt
           (\ x__ y__ -> x__ {_MdpMisrCrcFtraceEvent'vsyncCnt = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MdpMisrCrcFtraceEvent "maybe'vsyncCnt" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MdpMisrCrcFtraceEvent'vsyncCnt
           (\ x__ y__ -> x__ {_MdpMisrCrcFtraceEvent'vsyncCnt = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MdpMisrCrcFtraceEvent "crc" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MdpMisrCrcFtraceEvent'crc
           (\ x__ y__ -> x__ {_MdpMisrCrcFtraceEvent'crc = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MdpMisrCrcFtraceEvent "maybe'crc" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MdpMisrCrcFtraceEvent'crc
           (\ x__ y__ -> x__ {_MdpMisrCrcFtraceEvent'crc = y__}))
        Prelude.id
instance Data.ProtoLens.Message MdpMisrCrcFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.MdpMisrCrcFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\NAKMdpMisrCrcFtraceEvent\DC2\EM\n\
      \\bblock_id\CAN\SOH \SOH(\rR\ablockId\DC2\ESC\n\
      \\tvsync_cnt\CAN\STX \SOH(\rR\bvsyncCnt\DC2\DLE\n\
      \\ETXcrc\CAN\ETX \SOH(\rR\ETXcrc"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        blockId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "block_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'blockId")) ::
              Data.ProtoLens.FieldDescriptor MdpMisrCrcFtraceEvent
        vsyncCnt__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "vsync_cnt"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'vsyncCnt")) ::
              Data.ProtoLens.FieldDescriptor MdpMisrCrcFtraceEvent
        crc__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "crc"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'crc")) ::
              Data.ProtoLens.FieldDescriptor MdpMisrCrcFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, blockId__field_descriptor),
           (Data.ProtoLens.Tag 2, vsyncCnt__field_descriptor),
           (Data.ProtoLens.Tag 3, crc__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MdpMisrCrcFtraceEvent'_unknownFields
        (\ x__ y__ -> x__ {_MdpMisrCrcFtraceEvent'_unknownFields = y__})
  defMessage
    = MdpMisrCrcFtraceEvent'_constructor
        {_MdpMisrCrcFtraceEvent'blockId = Prelude.Nothing,
         _MdpMisrCrcFtraceEvent'vsyncCnt = Prelude.Nothing,
         _MdpMisrCrcFtraceEvent'crc = Prelude.Nothing,
         _MdpMisrCrcFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MdpMisrCrcFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser MdpMisrCrcFtraceEvent
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
                                       "block_id"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"blockId") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "vsync_cnt"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"vsyncCnt") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "crc"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"crc") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "MdpMisrCrcFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'blockId") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       ((Prelude..)
                          Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'vsyncCnt") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          ((Prelude..)
                             Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'crc") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             ((Prelude..)
                                Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData MdpMisrCrcFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MdpMisrCrcFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_MdpMisrCrcFtraceEvent'blockId x__)
                (Control.DeepSeq.deepseq
                   (_MdpMisrCrcFtraceEvent'vsyncCnt x__)
                   (Control.DeepSeq.deepseq (_MdpMisrCrcFtraceEvent'crc x__) ())))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mdss_Fields.mixerNum' @:: Lens' MdpMixerUpdateFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mdss_Fields.maybe'mixerNum' @:: Lens' MdpMixerUpdateFtraceEvent (Prelude.Maybe Data.Word.Word32)@ -}
data MdpMixerUpdateFtraceEvent
  = MdpMixerUpdateFtraceEvent'_constructor {_MdpMixerUpdateFtraceEvent'mixerNum :: !(Prelude.Maybe Data.Word.Word32),
                                            _MdpMixerUpdateFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MdpMixerUpdateFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField MdpMixerUpdateFtraceEvent "mixerNum" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MdpMixerUpdateFtraceEvent'mixerNum
           (\ x__ y__ -> x__ {_MdpMixerUpdateFtraceEvent'mixerNum = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MdpMixerUpdateFtraceEvent "maybe'mixerNum" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MdpMixerUpdateFtraceEvent'mixerNum
           (\ x__ y__ -> x__ {_MdpMixerUpdateFtraceEvent'mixerNum = y__}))
        Prelude.id
instance Data.ProtoLens.Message MdpMixerUpdateFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.MdpMixerUpdateFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\EMMdpMixerUpdateFtraceEvent\DC2\ESC\n\
      \\tmixer_num\CAN\SOH \SOH(\rR\bmixerNum"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        mixerNum__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "mixer_num"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'mixerNum")) ::
              Data.ProtoLens.FieldDescriptor MdpMixerUpdateFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, mixerNum__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MdpMixerUpdateFtraceEvent'_unknownFields
        (\ x__ y__
           -> x__ {_MdpMixerUpdateFtraceEvent'_unknownFields = y__})
  defMessage
    = MdpMixerUpdateFtraceEvent'_constructor
        {_MdpMixerUpdateFtraceEvent'mixerNum = Prelude.Nothing,
         _MdpMixerUpdateFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MdpMixerUpdateFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser MdpMixerUpdateFtraceEvent
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
                                       "mixer_num"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"mixerNum") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "MdpMixerUpdateFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'mixerNum") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       ((Prelude..)
                          Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData MdpMixerUpdateFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MdpMixerUpdateFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_MdpMixerUpdateFtraceEvent'mixerNum x__) ())
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mdss_Fields.pnum' @:: Lens' MdpPerfPrefillCalcFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mdss_Fields.maybe'pnum' @:: Lens' MdpPerfPrefillCalcFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mdss_Fields.latencyBuf' @:: Lens' MdpPerfPrefillCalcFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mdss_Fields.maybe'latencyBuf' @:: Lens' MdpPerfPrefillCalcFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mdss_Fields.ot' @:: Lens' MdpPerfPrefillCalcFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mdss_Fields.maybe'ot' @:: Lens' MdpPerfPrefillCalcFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mdss_Fields.yBuf' @:: Lens' MdpPerfPrefillCalcFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mdss_Fields.maybe'yBuf' @:: Lens' MdpPerfPrefillCalcFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mdss_Fields.yScaler' @:: Lens' MdpPerfPrefillCalcFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mdss_Fields.maybe'yScaler' @:: Lens' MdpPerfPrefillCalcFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mdss_Fields.ppLines' @:: Lens' MdpPerfPrefillCalcFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mdss_Fields.maybe'ppLines' @:: Lens' MdpPerfPrefillCalcFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mdss_Fields.ppBytes' @:: Lens' MdpPerfPrefillCalcFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mdss_Fields.maybe'ppBytes' @:: Lens' MdpPerfPrefillCalcFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mdss_Fields.postSc' @:: Lens' MdpPerfPrefillCalcFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mdss_Fields.maybe'postSc' @:: Lens' MdpPerfPrefillCalcFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mdss_Fields.fbcBytes' @:: Lens' MdpPerfPrefillCalcFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mdss_Fields.maybe'fbcBytes' @:: Lens' MdpPerfPrefillCalcFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mdss_Fields.prefillBytes' @:: Lens' MdpPerfPrefillCalcFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mdss_Fields.maybe'prefillBytes' @:: Lens' MdpPerfPrefillCalcFtraceEvent (Prelude.Maybe Data.Word.Word32)@ -}
data MdpPerfPrefillCalcFtraceEvent
  = MdpPerfPrefillCalcFtraceEvent'_constructor {_MdpPerfPrefillCalcFtraceEvent'pnum :: !(Prelude.Maybe Data.Word.Word32),
                                                _MdpPerfPrefillCalcFtraceEvent'latencyBuf :: !(Prelude.Maybe Data.Word.Word32),
                                                _MdpPerfPrefillCalcFtraceEvent'ot :: !(Prelude.Maybe Data.Word.Word32),
                                                _MdpPerfPrefillCalcFtraceEvent'yBuf :: !(Prelude.Maybe Data.Word.Word32),
                                                _MdpPerfPrefillCalcFtraceEvent'yScaler :: !(Prelude.Maybe Data.Word.Word32),
                                                _MdpPerfPrefillCalcFtraceEvent'ppLines :: !(Prelude.Maybe Data.Word.Word32),
                                                _MdpPerfPrefillCalcFtraceEvent'ppBytes :: !(Prelude.Maybe Data.Word.Word32),
                                                _MdpPerfPrefillCalcFtraceEvent'postSc :: !(Prelude.Maybe Data.Word.Word32),
                                                _MdpPerfPrefillCalcFtraceEvent'fbcBytes :: !(Prelude.Maybe Data.Word.Word32),
                                                _MdpPerfPrefillCalcFtraceEvent'prefillBytes :: !(Prelude.Maybe Data.Word.Word32),
                                                _MdpPerfPrefillCalcFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MdpPerfPrefillCalcFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField MdpPerfPrefillCalcFtraceEvent "pnum" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MdpPerfPrefillCalcFtraceEvent'pnum
           (\ x__ y__ -> x__ {_MdpPerfPrefillCalcFtraceEvent'pnum = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MdpPerfPrefillCalcFtraceEvent "maybe'pnum" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MdpPerfPrefillCalcFtraceEvent'pnum
           (\ x__ y__ -> x__ {_MdpPerfPrefillCalcFtraceEvent'pnum = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MdpPerfPrefillCalcFtraceEvent "latencyBuf" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MdpPerfPrefillCalcFtraceEvent'latencyBuf
           (\ x__ y__
              -> x__ {_MdpPerfPrefillCalcFtraceEvent'latencyBuf = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MdpPerfPrefillCalcFtraceEvent "maybe'latencyBuf" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MdpPerfPrefillCalcFtraceEvent'latencyBuf
           (\ x__ y__
              -> x__ {_MdpPerfPrefillCalcFtraceEvent'latencyBuf = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MdpPerfPrefillCalcFtraceEvent "ot" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MdpPerfPrefillCalcFtraceEvent'ot
           (\ x__ y__ -> x__ {_MdpPerfPrefillCalcFtraceEvent'ot = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MdpPerfPrefillCalcFtraceEvent "maybe'ot" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MdpPerfPrefillCalcFtraceEvent'ot
           (\ x__ y__ -> x__ {_MdpPerfPrefillCalcFtraceEvent'ot = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MdpPerfPrefillCalcFtraceEvent "yBuf" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MdpPerfPrefillCalcFtraceEvent'yBuf
           (\ x__ y__ -> x__ {_MdpPerfPrefillCalcFtraceEvent'yBuf = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MdpPerfPrefillCalcFtraceEvent "maybe'yBuf" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MdpPerfPrefillCalcFtraceEvent'yBuf
           (\ x__ y__ -> x__ {_MdpPerfPrefillCalcFtraceEvent'yBuf = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MdpPerfPrefillCalcFtraceEvent "yScaler" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MdpPerfPrefillCalcFtraceEvent'yScaler
           (\ x__ y__ -> x__ {_MdpPerfPrefillCalcFtraceEvent'yScaler = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MdpPerfPrefillCalcFtraceEvent "maybe'yScaler" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MdpPerfPrefillCalcFtraceEvent'yScaler
           (\ x__ y__ -> x__ {_MdpPerfPrefillCalcFtraceEvent'yScaler = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MdpPerfPrefillCalcFtraceEvent "ppLines" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MdpPerfPrefillCalcFtraceEvent'ppLines
           (\ x__ y__ -> x__ {_MdpPerfPrefillCalcFtraceEvent'ppLines = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MdpPerfPrefillCalcFtraceEvent "maybe'ppLines" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MdpPerfPrefillCalcFtraceEvent'ppLines
           (\ x__ y__ -> x__ {_MdpPerfPrefillCalcFtraceEvent'ppLines = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MdpPerfPrefillCalcFtraceEvent "ppBytes" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MdpPerfPrefillCalcFtraceEvent'ppBytes
           (\ x__ y__ -> x__ {_MdpPerfPrefillCalcFtraceEvent'ppBytes = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MdpPerfPrefillCalcFtraceEvent "maybe'ppBytes" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MdpPerfPrefillCalcFtraceEvent'ppBytes
           (\ x__ y__ -> x__ {_MdpPerfPrefillCalcFtraceEvent'ppBytes = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MdpPerfPrefillCalcFtraceEvent "postSc" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MdpPerfPrefillCalcFtraceEvent'postSc
           (\ x__ y__ -> x__ {_MdpPerfPrefillCalcFtraceEvent'postSc = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MdpPerfPrefillCalcFtraceEvent "maybe'postSc" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MdpPerfPrefillCalcFtraceEvent'postSc
           (\ x__ y__ -> x__ {_MdpPerfPrefillCalcFtraceEvent'postSc = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MdpPerfPrefillCalcFtraceEvent "fbcBytes" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MdpPerfPrefillCalcFtraceEvent'fbcBytes
           (\ x__ y__ -> x__ {_MdpPerfPrefillCalcFtraceEvent'fbcBytes = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MdpPerfPrefillCalcFtraceEvent "maybe'fbcBytes" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MdpPerfPrefillCalcFtraceEvent'fbcBytes
           (\ x__ y__ -> x__ {_MdpPerfPrefillCalcFtraceEvent'fbcBytes = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MdpPerfPrefillCalcFtraceEvent "prefillBytes" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MdpPerfPrefillCalcFtraceEvent'prefillBytes
           (\ x__ y__
              -> x__ {_MdpPerfPrefillCalcFtraceEvent'prefillBytes = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MdpPerfPrefillCalcFtraceEvent "maybe'prefillBytes" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MdpPerfPrefillCalcFtraceEvent'prefillBytes
           (\ x__ y__
              -> x__ {_MdpPerfPrefillCalcFtraceEvent'prefillBytes = y__}))
        Prelude.id
instance Data.ProtoLens.Message MdpPerfPrefillCalcFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.MdpPerfPrefillCalcFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\GSMdpPerfPrefillCalcFtraceEvent\DC2\DC2\n\
      \\EOTpnum\CAN\SOH \SOH(\rR\EOTpnum\DC2\US\n\
      \\vlatency_buf\CAN\STX \SOH(\rR\n\
      \latencyBuf\DC2\SO\n\
      \\STXot\CAN\ETX \SOH(\rR\STXot\DC2\DC3\n\
      \\ENQy_buf\CAN\EOT \SOH(\rR\EOTyBuf\DC2\EM\n\
      \\by_scaler\CAN\ENQ \SOH(\rR\ayScaler\DC2\EM\n\
      \\bpp_lines\CAN\ACK \SOH(\rR\appLines\DC2\EM\n\
      \\bpp_bytes\CAN\a \SOH(\rR\appBytes\DC2\ETB\n\
      \\apost_sc\CAN\b \SOH(\rR\ACKpostSc\DC2\ESC\n\
      \\tfbc_bytes\CAN\t \SOH(\rR\bfbcBytes\DC2#\n\
      \\rprefill_bytes\CAN\n\
      \ \SOH(\rR\fprefillBytes"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        pnum__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "pnum"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'pnum")) ::
              Data.ProtoLens.FieldDescriptor MdpPerfPrefillCalcFtraceEvent
        latencyBuf__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "latency_buf"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'latencyBuf")) ::
              Data.ProtoLens.FieldDescriptor MdpPerfPrefillCalcFtraceEvent
        ot__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "ot"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'ot")) ::
              Data.ProtoLens.FieldDescriptor MdpPerfPrefillCalcFtraceEvent
        yBuf__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "y_buf"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'yBuf")) ::
              Data.ProtoLens.FieldDescriptor MdpPerfPrefillCalcFtraceEvent
        yScaler__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "y_scaler"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'yScaler")) ::
              Data.ProtoLens.FieldDescriptor MdpPerfPrefillCalcFtraceEvent
        ppLines__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "pp_lines"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'ppLines")) ::
              Data.ProtoLens.FieldDescriptor MdpPerfPrefillCalcFtraceEvent
        ppBytes__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "pp_bytes"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'ppBytes")) ::
              Data.ProtoLens.FieldDescriptor MdpPerfPrefillCalcFtraceEvent
        postSc__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "post_sc"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'postSc")) ::
              Data.ProtoLens.FieldDescriptor MdpPerfPrefillCalcFtraceEvent
        fbcBytes__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "fbc_bytes"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'fbcBytes")) ::
              Data.ProtoLens.FieldDescriptor MdpPerfPrefillCalcFtraceEvent
        prefillBytes__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "prefill_bytes"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'prefillBytes")) ::
              Data.ProtoLens.FieldDescriptor MdpPerfPrefillCalcFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, pnum__field_descriptor),
           (Data.ProtoLens.Tag 2, latencyBuf__field_descriptor),
           (Data.ProtoLens.Tag 3, ot__field_descriptor),
           (Data.ProtoLens.Tag 4, yBuf__field_descriptor),
           (Data.ProtoLens.Tag 5, yScaler__field_descriptor),
           (Data.ProtoLens.Tag 6, ppLines__field_descriptor),
           (Data.ProtoLens.Tag 7, ppBytes__field_descriptor),
           (Data.ProtoLens.Tag 8, postSc__field_descriptor),
           (Data.ProtoLens.Tag 9, fbcBytes__field_descriptor),
           (Data.ProtoLens.Tag 10, prefillBytes__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MdpPerfPrefillCalcFtraceEvent'_unknownFields
        (\ x__ y__
           -> x__ {_MdpPerfPrefillCalcFtraceEvent'_unknownFields = y__})
  defMessage
    = MdpPerfPrefillCalcFtraceEvent'_constructor
        {_MdpPerfPrefillCalcFtraceEvent'pnum = Prelude.Nothing,
         _MdpPerfPrefillCalcFtraceEvent'latencyBuf = Prelude.Nothing,
         _MdpPerfPrefillCalcFtraceEvent'ot = Prelude.Nothing,
         _MdpPerfPrefillCalcFtraceEvent'yBuf = Prelude.Nothing,
         _MdpPerfPrefillCalcFtraceEvent'yScaler = Prelude.Nothing,
         _MdpPerfPrefillCalcFtraceEvent'ppLines = Prelude.Nothing,
         _MdpPerfPrefillCalcFtraceEvent'ppBytes = Prelude.Nothing,
         _MdpPerfPrefillCalcFtraceEvent'postSc = Prelude.Nothing,
         _MdpPerfPrefillCalcFtraceEvent'fbcBytes = Prelude.Nothing,
         _MdpPerfPrefillCalcFtraceEvent'prefillBytes = Prelude.Nothing,
         _MdpPerfPrefillCalcFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MdpPerfPrefillCalcFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser MdpPerfPrefillCalcFtraceEvent
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
                                       "pnum"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"pnum") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "latency_buf"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"latencyBuf") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "ot"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"ot") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "y_buf"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"yBuf") y x)
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "y_scaler"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"yScaler") y x)
                        48
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "pp_lines"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"ppLines") y x)
                        56
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "pp_bytes"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"ppBytes") y x)
                        64
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "post_sc"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"postSc") y x)
                        72
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "fbc_bytes"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"fbcBytes") y x)
                        80
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "prefill_bytes"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"prefillBytes") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "MdpPerfPrefillCalcFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'pnum") _x
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
                       (Data.ProtoLens.Field.field @"maybe'latencyBuf") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          ((Prelude..)
                             Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'ot") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             ((Prelude..)
                                Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'yBuf") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                                ((Prelude..)
                                   Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                      ((Data.Monoid.<>)
                         (case
                              Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'yScaler") _x
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
                                 Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'ppLines") _x
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
                                      (Data.ProtoLens.Field.field @"maybe'ppBytes") _x
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
                                         (Data.ProtoLens.Field.field @"maybe'postSc") _x
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
                                            (Data.ProtoLens.Field.field @"maybe'fbcBytes") _x
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
                                               (Data.ProtoLens.Field.field @"maybe'prefillBytes") _x
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
instance Control.DeepSeq.NFData MdpPerfPrefillCalcFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MdpPerfPrefillCalcFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_MdpPerfPrefillCalcFtraceEvent'pnum x__)
                (Control.DeepSeq.deepseq
                   (_MdpPerfPrefillCalcFtraceEvent'latencyBuf x__)
                   (Control.DeepSeq.deepseq
                      (_MdpPerfPrefillCalcFtraceEvent'ot x__)
                      (Control.DeepSeq.deepseq
                         (_MdpPerfPrefillCalcFtraceEvent'yBuf x__)
                         (Control.DeepSeq.deepseq
                            (_MdpPerfPrefillCalcFtraceEvent'yScaler x__)
                            (Control.DeepSeq.deepseq
                               (_MdpPerfPrefillCalcFtraceEvent'ppLines x__)
                               (Control.DeepSeq.deepseq
                                  (_MdpPerfPrefillCalcFtraceEvent'ppBytes x__)
                                  (Control.DeepSeq.deepseq
                                     (_MdpPerfPrefillCalcFtraceEvent'postSc x__)
                                     (Control.DeepSeq.deepseq
                                        (_MdpPerfPrefillCalcFtraceEvent'fbcBytes x__)
                                        (Control.DeepSeq.deepseq
                                           (_MdpPerfPrefillCalcFtraceEvent'prefillBytes x__)
                                           ()))))))))))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mdss_Fields.pnum' @:: Lens' MdpPerfSetOtFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mdss_Fields.maybe'pnum' @:: Lens' MdpPerfSetOtFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mdss_Fields.xinId' @:: Lens' MdpPerfSetOtFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mdss_Fields.maybe'xinId' @:: Lens' MdpPerfSetOtFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mdss_Fields.rdLim' @:: Lens' MdpPerfSetOtFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mdss_Fields.maybe'rdLim' @:: Lens' MdpPerfSetOtFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mdss_Fields.isVbifRt' @:: Lens' MdpPerfSetOtFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mdss_Fields.maybe'isVbifRt' @:: Lens' MdpPerfSetOtFtraceEvent (Prelude.Maybe Data.Word.Word32)@ -}
data MdpPerfSetOtFtraceEvent
  = MdpPerfSetOtFtraceEvent'_constructor {_MdpPerfSetOtFtraceEvent'pnum :: !(Prelude.Maybe Data.Word.Word32),
                                          _MdpPerfSetOtFtraceEvent'xinId :: !(Prelude.Maybe Data.Word.Word32),
                                          _MdpPerfSetOtFtraceEvent'rdLim :: !(Prelude.Maybe Data.Word.Word32),
                                          _MdpPerfSetOtFtraceEvent'isVbifRt :: !(Prelude.Maybe Data.Word.Word32),
                                          _MdpPerfSetOtFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MdpPerfSetOtFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField MdpPerfSetOtFtraceEvent "pnum" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MdpPerfSetOtFtraceEvent'pnum
           (\ x__ y__ -> x__ {_MdpPerfSetOtFtraceEvent'pnum = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MdpPerfSetOtFtraceEvent "maybe'pnum" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MdpPerfSetOtFtraceEvent'pnum
           (\ x__ y__ -> x__ {_MdpPerfSetOtFtraceEvent'pnum = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MdpPerfSetOtFtraceEvent "xinId" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MdpPerfSetOtFtraceEvent'xinId
           (\ x__ y__ -> x__ {_MdpPerfSetOtFtraceEvent'xinId = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MdpPerfSetOtFtraceEvent "maybe'xinId" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MdpPerfSetOtFtraceEvent'xinId
           (\ x__ y__ -> x__ {_MdpPerfSetOtFtraceEvent'xinId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MdpPerfSetOtFtraceEvent "rdLim" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MdpPerfSetOtFtraceEvent'rdLim
           (\ x__ y__ -> x__ {_MdpPerfSetOtFtraceEvent'rdLim = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MdpPerfSetOtFtraceEvent "maybe'rdLim" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MdpPerfSetOtFtraceEvent'rdLim
           (\ x__ y__ -> x__ {_MdpPerfSetOtFtraceEvent'rdLim = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MdpPerfSetOtFtraceEvent "isVbifRt" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MdpPerfSetOtFtraceEvent'isVbifRt
           (\ x__ y__ -> x__ {_MdpPerfSetOtFtraceEvent'isVbifRt = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MdpPerfSetOtFtraceEvent "maybe'isVbifRt" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MdpPerfSetOtFtraceEvent'isVbifRt
           (\ x__ y__ -> x__ {_MdpPerfSetOtFtraceEvent'isVbifRt = y__}))
        Prelude.id
instance Data.ProtoLens.Message MdpPerfSetOtFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.MdpPerfSetOtFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\ETBMdpPerfSetOtFtraceEvent\DC2\DC2\n\
      \\EOTpnum\CAN\SOH \SOH(\rR\EOTpnum\DC2\NAK\n\
      \\ACKxin_id\CAN\STX \SOH(\rR\ENQxinId\DC2\NAK\n\
      \\ACKrd_lim\CAN\ETX \SOH(\rR\ENQrdLim\DC2\FS\n\
      \\n\
      \is_vbif_rt\CAN\EOT \SOH(\rR\bisVbifRt"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        pnum__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "pnum"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'pnum")) ::
              Data.ProtoLens.FieldDescriptor MdpPerfSetOtFtraceEvent
        xinId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "xin_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'xinId")) ::
              Data.ProtoLens.FieldDescriptor MdpPerfSetOtFtraceEvent
        rdLim__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "rd_lim"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'rdLim")) ::
              Data.ProtoLens.FieldDescriptor MdpPerfSetOtFtraceEvent
        isVbifRt__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "is_vbif_rt"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'isVbifRt")) ::
              Data.ProtoLens.FieldDescriptor MdpPerfSetOtFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, pnum__field_descriptor),
           (Data.ProtoLens.Tag 2, xinId__field_descriptor),
           (Data.ProtoLens.Tag 3, rdLim__field_descriptor),
           (Data.ProtoLens.Tag 4, isVbifRt__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MdpPerfSetOtFtraceEvent'_unknownFields
        (\ x__ y__ -> x__ {_MdpPerfSetOtFtraceEvent'_unknownFields = y__})
  defMessage
    = MdpPerfSetOtFtraceEvent'_constructor
        {_MdpPerfSetOtFtraceEvent'pnum = Prelude.Nothing,
         _MdpPerfSetOtFtraceEvent'xinId = Prelude.Nothing,
         _MdpPerfSetOtFtraceEvent'rdLim = Prelude.Nothing,
         _MdpPerfSetOtFtraceEvent'isVbifRt = Prelude.Nothing,
         _MdpPerfSetOtFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MdpPerfSetOtFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser MdpPerfSetOtFtraceEvent
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
                                       "pnum"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"pnum") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "xin_id"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"xinId") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "rd_lim"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"rdLim") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "is_vbif_rt"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"isVbifRt") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "MdpPerfSetOtFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'pnum") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       ((Prelude..)
                          Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'xinId") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          ((Prelude..)
                             Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'rdLim") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             ((Prelude..)
                                Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'isVbifRt") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                                ((Prelude..)
                                   Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                      (Data.ProtoLens.Encoding.Wire.buildFieldSet
                         (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))
instance Control.DeepSeq.NFData MdpPerfSetOtFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MdpPerfSetOtFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_MdpPerfSetOtFtraceEvent'pnum x__)
                (Control.DeepSeq.deepseq
                   (_MdpPerfSetOtFtraceEvent'xinId x__)
                   (Control.DeepSeq.deepseq
                      (_MdpPerfSetOtFtraceEvent'rdLim x__)
                      (Control.DeepSeq.deepseq
                         (_MdpPerfSetOtFtraceEvent'isVbifRt x__) ()))))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mdss_Fields.pnum' @:: Lens' MdpPerfSetPanicLutsFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mdss_Fields.maybe'pnum' @:: Lens' MdpPerfSetPanicLutsFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mdss_Fields.fmt' @:: Lens' MdpPerfSetPanicLutsFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mdss_Fields.maybe'fmt' @:: Lens' MdpPerfSetPanicLutsFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mdss_Fields.mode' @:: Lens' MdpPerfSetPanicLutsFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mdss_Fields.maybe'mode' @:: Lens' MdpPerfSetPanicLutsFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mdss_Fields.panicLut' @:: Lens' MdpPerfSetPanicLutsFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mdss_Fields.maybe'panicLut' @:: Lens' MdpPerfSetPanicLutsFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mdss_Fields.robustLut' @:: Lens' MdpPerfSetPanicLutsFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mdss_Fields.maybe'robustLut' @:: Lens' MdpPerfSetPanicLutsFtraceEvent (Prelude.Maybe Data.Word.Word32)@ -}
data MdpPerfSetPanicLutsFtraceEvent
  = MdpPerfSetPanicLutsFtraceEvent'_constructor {_MdpPerfSetPanicLutsFtraceEvent'pnum :: !(Prelude.Maybe Data.Word.Word32),
                                                 _MdpPerfSetPanicLutsFtraceEvent'fmt :: !(Prelude.Maybe Data.Word.Word32),
                                                 _MdpPerfSetPanicLutsFtraceEvent'mode :: !(Prelude.Maybe Data.Word.Word32),
                                                 _MdpPerfSetPanicLutsFtraceEvent'panicLut :: !(Prelude.Maybe Data.Word.Word32),
                                                 _MdpPerfSetPanicLutsFtraceEvent'robustLut :: !(Prelude.Maybe Data.Word.Word32),
                                                 _MdpPerfSetPanicLutsFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MdpPerfSetPanicLutsFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField MdpPerfSetPanicLutsFtraceEvent "pnum" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MdpPerfSetPanicLutsFtraceEvent'pnum
           (\ x__ y__ -> x__ {_MdpPerfSetPanicLutsFtraceEvent'pnum = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MdpPerfSetPanicLutsFtraceEvent "maybe'pnum" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MdpPerfSetPanicLutsFtraceEvent'pnum
           (\ x__ y__ -> x__ {_MdpPerfSetPanicLutsFtraceEvent'pnum = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MdpPerfSetPanicLutsFtraceEvent "fmt" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MdpPerfSetPanicLutsFtraceEvent'fmt
           (\ x__ y__ -> x__ {_MdpPerfSetPanicLutsFtraceEvent'fmt = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MdpPerfSetPanicLutsFtraceEvent "maybe'fmt" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MdpPerfSetPanicLutsFtraceEvent'fmt
           (\ x__ y__ -> x__ {_MdpPerfSetPanicLutsFtraceEvent'fmt = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MdpPerfSetPanicLutsFtraceEvent "mode" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MdpPerfSetPanicLutsFtraceEvent'mode
           (\ x__ y__ -> x__ {_MdpPerfSetPanicLutsFtraceEvent'mode = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MdpPerfSetPanicLutsFtraceEvent "maybe'mode" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MdpPerfSetPanicLutsFtraceEvent'mode
           (\ x__ y__ -> x__ {_MdpPerfSetPanicLutsFtraceEvent'mode = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MdpPerfSetPanicLutsFtraceEvent "panicLut" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MdpPerfSetPanicLutsFtraceEvent'panicLut
           (\ x__ y__
              -> x__ {_MdpPerfSetPanicLutsFtraceEvent'panicLut = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MdpPerfSetPanicLutsFtraceEvent "maybe'panicLut" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MdpPerfSetPanicLutsFtraceEvent'panicLut
           (\ x__ y__
              -> x__ {_MdpPerfSetPanicLutsFtraceEvent'panicLut = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MdpPerfSetPanicLutsFtraceEvent "robustLut" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MdpPerfSetPanicLutsFtraceEvent'robustLut
           (\ x__ y__
              -> x__ {_MdpPerfSetPanicLutsFtraceEvent'robustLut = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MdpPerfSetPanicLutsFtraceEvent "maybe'robustLut" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MdpPerfSetPanicLutsFtraceEvent'robustLut
           (\ x__ y__
              -> x__ {_MdpPerfSetPanicLutsFtraceEvent'robustLut = y__}))
        Prelude.id
instance Data.ProtoLens.Message MdpPerfSetPanicLutsFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.MdpPerfSetPanicLutsFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\RSMdpPerfSetPanicLutsFtraceEvent\DC2\DC2\n\
      \\EOTpnum\CAN\SOH \SOH(\rR\EOTpnum\DC2\DLE\n\
      \\ETXfmt\CAN\STX \SOH(\rR\ETXfmt\DC2\DC2\n\
      \\EOTmode\CAN\ETX \SOH(\rR\EOTmode\DC2\ESC\n\
      \\tpanic_lut\CAN\EOT \SOH(\rR\bpanicLut\DC2\GS\n\
      \\n\
      \robust_lut\CAN\ENQ \SOH(\rR\trobustLut"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        pnum__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "pnum"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'pnum")) ::
              Data.ProtoLens.FieldDescriptor MdpPerfSetPanicLutsFtraceEvent
        fmt__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "fmt"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'fmt")) ::
              Data.ProtoLens.FieldDescriptor MdpPerfSetPanicLutsFtraceEvent
        mode__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "mode"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'mode")) ::
              Data.ProtoLens.FieldDescriptor MdpPerfSetPanicLutsFtraceEvent
        panicLut__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "panic_lut"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'panicLut")) ::
              Data.ProtoLens.FieldDescriptor MdpPerfSetPanicLutsFtraceEvent
        robustLut__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "robust_lut"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'robustLut")) ::
              Data.ProtoLens.FieldDescriptor MdpPerfSetPanicLutsFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, pnum__field_descriptor),
           (Data.ProtoLens.Tag 2, fmt__field_descriptor),
           (Data.ProtoLens.Tag 3, mode__field_descriptor),
           (Data.ProtoLens.Tag 4, panicLut__field_descriptor),
           (Data.ProtoLens.Tag 5, robustLut__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MdpPerfSetPanicLutsFtraceEvent'_unknownFields
        (\ x__ y__
           -> x__ {_MdpPerfSetPanicLutsFtraceEvent'_unknownFields = y__})
  defMessage
    = MdpPerfSetPanicLutsFtraceEvent'_constructor
        {_MdpPerfSetPanicLutsFtraceEvent'pnum = Prelude.Nothing,
         _MdpPerfSetPanicLutsFtraceEvent'fmt = Prelude.Nothing,
         _MdpPerfSetPanicLutsFtraceEvent'mode = Prelude.Nothing,
         _MdpPerfSetPanicLutsFtraceEvent'panicLut = Prelude.Nothing,
         _MdpPerfSetPanicLutsFtraceEvent'robustLut = Prelude.Nothing,
         _MdpPerfSetPanicLutsFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MdpPerfSetPanicLutsFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser MdpPerfSetPanicLutsFtraceEvent
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
                                       "pnum"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"pnum") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "fmt"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"fmt") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "mode"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"mode") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "panic_lut"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"panicLut") y x)
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "robust_lut"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"robustLut") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage)
          "MdpPerfSetPanicLutsFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'pnum") _x
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
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'mode") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             ((Prelude..)
                                Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'panicLut") _x
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
                                (Data.ProtoLens.Field.field @"maybe'robustLut") _x
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
instance Control.DeepSeq.NFData MdpPerfSetPanicLutsFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MdpPerfSetPanicLutsFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_MdpPerfSetPanicLutsFtraceEvent'pnum x__)
                (Control.DeepSeq.deepseq
                   (_MdpPerfSetPanicLutsFtraceEvent'fmt x__)
                   (Control.DeepSeq.deepseq
                      (_MdpPerfSetPanicLutsFtraceEvent'mode x__)
                      (Control.DeepSeq.deepseq
                         (_MdpPerfSetPanicLutsFtraceEvent'panicLut x__)
                         (Control.DeepSeq.deepseq
                            (_MdpPerfSetPanicLutsFtraceEvent'robustLut x__) ())))))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mdss_Fields.pnum' @:: Lens' MdpPerfSetQosLutsFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mdss_Fields.maybe'pnum' @:: Lens' MdpPerfSetQosLutsFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mdss_Fields.fmt' @:: Lens' MdpPerfSetQosLutsFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mdss_Fields.maybe'fmt' @:: Lens' MdpPerfSetQosLutsFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mdss_Fields.intf' @:: Lens' MdpPerfSetQosLutsFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mdss_Fields.maybe'intf' @:: Lens' MdpPerfSetQosLutsFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mdss_Fields.rot' @:: Lens' MdpPerfSetQosLutsFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mdss_Fields.maybe'rot' @:: Lens' MdpPerfSetQosLutsFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mdss_Fields.fl' @:: Lens' MdpPerfSetQosLutsFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mdss_Fields.maybe'fl' @:: Lens' MdpPerfSetQosLutsFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mdss_Fields.lut' @:: Lens' MdpPerfSetQosLutsFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mdss_Fields.maybe'lut' @:: Lens' MdpPerfSetQosLutsFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mdss_Fields.linear' @:: Lens' MdpPerfSetQosLutsFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mdss_Fields.maybe'linear' @:: Lens' MdpPerfSetQosLutsFtraceEvent (Prelude.Maybe Data.Word.Word32)@ -}
data MdpPerfSetQosLutsFtraceEvent
  = MdpPerfSetQosLutsFtraceEvent'_constructor {_MdpPerfSetQosLutsFtraceEvent'pnum :: !(Prelude.Maybe Data.Word.Word32),
                                               _MdpPerfSetQosLutsFtraceEvent'fmt :: !(Prelude.Maybe Data.Word.Word32),
                                               _MdpPerfSetQosLutsFtraceEvent'intf :: !(Prelude.Maybe Data.Word.Word32),
                                               _MdpPerfSetQosLutsFtraceEvent'rot :: !(Prelude.Maybe Data.Word.Word32),
                                               _MdpPerfSetQosLutsFtraceEvent'fl :: !(Prelude.Maybe Data.Word.Word32),
                                               _MdpPerfSetQosLutsFtraceEvent'lut :: !(Prelude.Maybe Data.Word.Word32),
                                               _MdpPerfSetQosLutsFtraceEvent'linear :: !(Prelude.Maybe Data.Word.Word32),
                                               _MdpPerfSetQosLutsFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MdpPerfSetQosLutsFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField MdpPerfSetQosLutsFtraceEvent "pnum" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MdpPerfSetQosLutsFtraceEvent'pnum
           (\ x__ y__ -> x__ {_MdpPerfSetQosLutsFtraceEvent'pnum = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MdpPerfSetQosLutsFtraceEvent "maybe'pnum" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MdpPerfSetQosLutsFtraceEvent'pnum
           (\ x__ y__ -> x__ {_MdpPerfSetQosLutsFtraceEvent'pnum = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MdpPerfSetQosLutsFtraceEvent "fmt" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MdpPerfSetQosLutsFtraceEvent'fmt
           (\ x__ y__ -> x__ {_MdpPerfSetQosLutsFtraceEvent'fmt = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MdpPerfSetQosLutsFtraceEvent "maybe'fmt" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MdpPerfSetQosLutsFtraceEvent'fmt
           (\ x__ y__ -> x__ {_MdpPerfSetQosLutsFtraceEvent'fmt = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MdpPerfSetQosLutsFtraceEvent "intf" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MdpPerfSetQosLutsFtraceEvent'intf
           (\ x__ y__ -> x__ {_MdpPerfSetQosLutsFtraceEvent'intf = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MdpPerfSetQosLutsFtraceEvent "maybe'intf" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MdpPerfSetQosLutsFtraceEvent'intf
           (\ x__ y__ -> x__ {_MdpPerfSetQosLutsFtraceEvent'intf = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MdpPerfSetQosLutsFtraceEvent "rot" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MdpPerfSetQosLutsFtraceEvent'rot
           (\ x__ y__ -> x__ {_MdpPerfSetQosLutsFtraceEvent'rot = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MdpPerfSetQosLutsFtraceEvent "maybe'rot" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MdpPerfSetQosLutsFtraceEvent'rot
           (\ x__ y__ -> x__ {_MdpPerfSetQosLutsFtraceEvent'rot = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MdpPerfSetQosLutsFtraceEvent "fl" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MdpPerfSetQosLutsFtraceEvent'fl
           (\ x__ y__ -> x__ {_MdpPerfSetQosLutsFtraceEvent'fl = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MdpPerfSetQosLutsFtraceEvent "maybe'fl" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MdpPerfSetQosLutsFtraceEvent'fl
           (\ x__ y__ -> x__ {_MdpPerfSetQosLutsFtraceEvent'fl = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MdpPerfSetQosLutsFtraceEvent "lut" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MdpPerfSetQosLutsFtraceEvent'lut
           (\ x__ y__ -> x__ {_MdpPerfSetQosLutsFtraceEvent'lut = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MdpPerfSetQosLutsFtraceEvent "maybe'lut" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MdpPerfSetQosLutsFtraceEvent'lut
           (\ x__ y__ -> x__ {_MdpPerfSetQosLutsFtraceEvent'lut = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MdpPerfSetQosLutsFtraceEvent "linear" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MdpPerfSetQosLutsFtraceEvent'linear
           (\ x__ y__ -> x__ {_MdpPerfSetQosLutsFtraceEvent'linear = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MdpPerfSetQosLutsFtraceEvent "maybe'linear" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MdpPerfSetQosLutsFtraceEvent'linear
           (\ x__ y__ -> x__ {_MdpPerfSetQosLutsFtraceEvent'linear = y__}))
        Prelude.id
instance Data.ProtoLens.Message MdpPerfSetQosLutsFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.MdpPerfSetQosLutsFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\FSMdpPerfSetQosLutsFtraceEvent\DC2\DC2\n\
      \\EOTpnum\CAN\SOH \SOH(\rR\EOTpnum\DC2\DLE\n\
      \\ETXfmt\CAN\STX \SOH(\rR\ETXfmt\DC2\DC2\n\
      \\EOTintf\CAN\ETX \SOH(\rR\EOTintf\DC2\DLE\n\
      \\ETXrot\CAN\EOT \SOH(\rR\ETXrot\DC2\SO\n\
      \\STXfl\CAN\ENQ \SOH(\rR\STXfl\DC2\DLE\n\
      \\ETXlut\CAN\ACK \SOH(\rR\ETXlut\DC2\SYN\n\
      \\ACKlinear\CAN\a \SOH(\rR\ACKlinear"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        pnum__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "pnum"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'pnum")) ::
              Data.ProtoLens.FieldDescriptor MdpPerfSetQosLutsFtraceEvent
        fmt__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "fmt"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'fmt")) ::
              Data.ProtoLens.FieldDescriptor MdpPerfSetQosLutsFtraceEvent
        intf__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "intf"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'intf")) ::
              Data.ProtoLens.FieldDescriptor MdpPerfSetQosLutsFtraceEvent
        rot__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "rot"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'rot")) ::
              Data.ProtoLens.FieldDescriptor MdpPerfSetQosLutsFtraceEvent
        fl__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "fl"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'fl")) ::
              Data.ProtoLens.FieldDescriptor MdpPerfSetQosLutsFtraceEvent
        lut__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "lut"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'lut")) ::
              Data.ProtoLens.FieldDescriptor MdpPerfSetQosLutsFtraceEvent
        linear__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "linear"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'linear")) ::
              Data.ProtoLens.FieldDescriptor MdpPerfSetQosLutsFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, pnum__field_descriptor),
           (Data.ProtoLens.Tag 2, fmt__field_descriptor),
           (Data.ProtoLens.Tag 3, intf__field_descriptor),
           (Data.ProtoLens.Tag 4, rot__field_descriptor),
           (Data.ProtoLens.Tag 5, fl__field_descriptor),
           (Data.ProtoLens.Tag 6, lut__field_descriptor),
           (Data.ProtoLens.Tag 7, linear__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MdpPerfSetQosLutsFtraceEvent'_unknownFields
        (\ x__ y__
           -> x__ {_MdpPerfSetQosLutsFtraceEvent'_unknownFields = y__})
  defMessage
    = MdpPerfSetQosLutsFtraceEvent'_constructor
        {_MdpPerfSetQosLutsFtraceEvent'pnum = Prelude.Nothing,
         _MdpPerfSetQosLutsFtraceEvent'fmt = Prelude.Nothing,
         _MdpPerfSetQosLutsFtraceEvent'intf = Prelude.Nothing,
         _MdpPerfSetQosLutsFtraceEvent'rot = Prelude.Nothing,
         _MdpPerfSetQosLutsFtraceEvent'fl = Prelude.Nothing,
         _MdpPerfSetQosLutsFtraceEvent'lut = Prelude.Nothing,
         _MdpPerfSetQosLutsFtraceEvent'linear = Prelude.Nothing,
         _MdpPerfSetQosLutsFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MdpPerfSetQosLutsFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser MdpPerfSetQosLutsFtraceEvent
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
                                       "pnum"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"pnum") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "fmt"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"fmt") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "intf"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"intf") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "rot"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"rot") y x)
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "fl"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"fl") y x)
                        48
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "lut"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"lut") y x)
                        56
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "linear"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"linear") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "MdpPerfSetQosLutsFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'pnum") _x
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
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'intf") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             ((Prelude..)
                                Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'rot") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                                ((Prelude..)
                                   Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                      ((Data.Monoid.<>)
                         (case
                              Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'fl") _x
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
                                 Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'lut") _x
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
                                      (Data.ProtoLens.Field.field @"maybe'linear") _x
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
instance Control.DeepSeq.NFData MdpPerfSetQosLutsFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MdpPerfSetQosLutsFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_MdpPerfSetQosLutsFtraceEvent'pnum x__)
                (Control.DeepSeq.deepseq
                   (_MdpPerfSetQosLutsFtraceEvent'fmt x__)
                   (Control.DeepSeq.deepseq
                      (_MdpPerfSetQosLutsFtraceEvent'intf x__)
                      (Control.DeepSeq.deepseq
                         (_MdpPerfSetQosLutsFtraceEvent'rot x__)
                         (Control.DeepSeq.deepseq
                            (_MdpPerfSetQosLutsFtraceEvent'fl x__)
                            (Control.DeepSeq.deepseq
                               (_MdpPerfSetQosLutsFtraceEvent'lut x__)
                               (Control.DeepSeq.deepseq
                                  (_MdpPerfSetQosLutsFtraceEvent'linear x__) ())))))))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mdss_Fields.pnum' @:: Lens' MdpPerfSetWmLevelsFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mdss_Fields.maybe'pnum' @:: Lens' MdpPerfSetWmLevelsFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mdss_Fields.useSpace' @:: Lens' MdpPerfSetWmLevelsFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mdss_Fields.maybe'useSpace' @:: Lens' MdpPerfSetWmLevelsFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mdss_Fields.priorityBytes' @:: Lens' MdpPerfSetWmLevelsFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mdss_Fields.maybe'priorityBytes' @:: Lens' MdpPerfSetWmLevelsFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mdss_Fields.wm0' @:: Lens' MdpPerfSetWmLevelsFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mdss_Fields.maybe'wm0' @:: Lens' MdpPerfSetWmLevelsFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mdss_Fields.wm1' @:: Lens' MdpPerfSetWmLevelsFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mdss_Fields.maybe'wm1' @:: Lens' MdpPerfSetWmLevelsFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mdss_Fields.wm2' @:: Lens' MdpPerfSetWmLevelsFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mdss_Fields.maybe'wm2' @:: Lens' MdpPerfSetWmLevelsFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mdss_Fields.mbCnt' @:: Lens' MdpPerfSetWmLevelsFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mdss_Fields.maybe'mbCnt' @:: Lens' MdpPerfSetWmLevelsFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mdss_Fields.mbSize' @:: Lens' MdpPerfSetWmLevelsFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mdss_Fields.maybe'mbSize' @:: Lens' MdpPerfSetWmLevelsFtraceEvent (Prelude.Maybe Data.Word.Word32)@ -}
data MdpPerfSetWmLevelsFtraceEvent
  = MdpPerfSetWmLevelsFtraceEvent'_constructor {_MdpPerfSetWmLevelsFtraceEvent'pnum :: !(Prelude.Maybe Data.Word.Word32),
                                                _MdpPerfSetWmLevelsFtraceEvent'useSpace :: !(Prelude.Maybe Data.Word.Word32),
                                                _MdpPerfSetWmLevelsFtraceEvent'priorityBytes :: !(Prelude.Maybe Data.Word.Word32),
                                                _MdpPerfSetWmLevelsFtraceEvent'wm0 :: !(Prelude.Maybe Data.Word.Word32),
                                                _MdpPerfSetWmLevelsFtraceEvent'wm1 :: !(Prelude.Maybe Data.Word.Word32),
                                                _MdpPerfSetWmLevelsFtraceEvent'wm2 :: !(Prelude.Maybe Data.Word.Word32),
                                                _MdpPerfSetWmLevelsFtraceEvent'mbCnt :: !(Prelude.Maybe Data.Word.Word32),
                                                _MdpPerfSetWmLevelsFtraceEvent'mbSize :: !(Prelude.Maybe Data.Word.Word32),
                                                _MdpPerfSetWmLevelsFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MdpPerfSetWmLevelsFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField MdpPerfSetWmLevelsFtraceEvent "pnum" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MdpPerfSetWmLevelsFtraceEvent'pnum
           (\ x__ y__ -> x__ {_MdpPerfSetWmLevelsFtraceEvent'pnum = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MdpPerfSetWmLevelsFtraceEvent "maybe'pnum" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MdpPerfSetWmLevelsFtraceEvent'pnum
           (\ x__ y__ -> x__ {_MdpPerfSetWmLevelsFtraceEvent'pnum = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MdpPerfSetWmLevelsFtraceEvent "useSpace" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MdpPerfSetWmLevelsFtraceEvent'useSpace
           (\ x__ y__ -> x__ {_MdpPerfSetWmLevelsFtraceEvent'useSpace = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MdpPerfSetWmLevelsFtraceEvent "maybe'useSpace" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MdpPerfSetWmLevelsFtraceEvent'useSpace
           (\ x__ y__ -> x__ {_MdpPerfSetWmLevelsFtraceEvent'useSpace = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MdpPerfSetWmLevelsFtraceEvent "priorityBytes" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MdpPerfSetWmLevelsFtraceEvent'priorityBytes
           (\ x__ y__
              -> x__ {_MdpPerfSetWmLevelsFtraceEvent'priorityBytes = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MdpPerfSetWmLevelsFtraceEvent "maybe'priorityBytes" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MdpPerfSetWmLevelsFtraceEvent'priorityBytes
           (\ x__ y__
              -> x__ {_MdpPerfSetWmLevelsFtraceEvent'priorityBytes = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MdpPerfSetWmLevelsFtraceEvent "wm0" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MdpPerfSetWmLevelsFtraceEvent'wm0
           (\ x__ y__ -> x__ {_MdpPerfSetWmLevelsFtraceEvent'wm0 = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MdpPerfSetWmLevelsFtraceEvent "maybe'wm0" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MdpPerfSetWmLevelsFtraceEvent'wm0
           (\ x__ y__ -> x__ {_MdpPerfSetWmLevelsFtraceEvent'wm0 = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MdpPerfSetWmLevelsFtraceEvent "wm1" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MdpPerfSetWmLevelsFtraceEvent'wm1
           (\ x__ y__ -> x__ {_MdpPerfSetWmLevelsFtraceEvent'wm1 = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MdpPerfSetWmLevelsFtraceEvent "maybe'wm1" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MdpPerfSetWmLevelsFtraceEvent'wm1
           (\ x__ y__ -> x__ {_MdpPerfSetWmLevelsFtraceEvent'wm1 = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MdpPerfSetWmLevelsFtraceEvent "wm2" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MdpPerfSetWmLevelsFtraceEvent'wm2
           (\ x__ y__ -> x__ {_MdpPerfSetWmLevelsFtraceEvent'wm2 = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MdpPerfSetWmLevelsFtraceEvent "maybe'wm2" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MdpPerfSetWmLevelsFtraceEvent'wm2
           (\ x__ y__ -> x__ {_MdpPerfSetWmLevelsFtraceEvent'wm2 = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MdpPerfSetWmLevelsFtraceEvent "mbCnt" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MdpPerfSetWmLevelsFtraceEvent'mbCnt
           (\ x__ y__ -> x__ {_MdpPerfSetWmLevelsFtraceEvent'mbCnt = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MdpPerfSetWmLevelsFtraceEvent "maybe'mbCnt" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MdpPerfSetWmLevelsFtraceEvent'mbCnt
           (\ x__ y__ -> x__ {_MdpPerfSetWmLevelsFtraceEvent'mbCnt = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MdpPerfSetWmLevelsFtraceEvent "mbSize" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MdpPerfSetWmLevelsFtraceEvent'mbSize
           (\ x__ y__ -> x__ {_MdpPerfSetWmLevelsFtraceEvent'mbSize = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MdpPerfSetWmLevelsFtraceEvent "maybe'mbSize" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MdpPerfSetWmLevelsFtraceEvent'mbSize
           (\ x__ y__ -> x__ {_MdpPerfSetWmLevelsFtraceEvent'mbSize = y__}))
        Prelude.id
instance Data.ProtoLens.Message MdpPerfSetWmLevelsFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.MdpPerfSetWmLevelsFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\GSMdpPerfSetWmLevelsFtraceEvent\DC2\DC2\n\
      \\EOTpnum\CAN\SOH \SOH(\rR\EOTpnum\DC2\ESC\n\
      \\tuse_space\CAN\STX \SOH(\rR\buseSpace\DC2%\n\
      \\SOpriority_bytes\CAN\ETX \SOH(\rR\rpriorityBytes\DC2\DLE\n\
      \\ETXwm0\CAN\EOT \SOH(\rR\ETXwm0\DC2\DLE\n\
      \\ETXwm1\CAN\ENQ \SOH(\rR\ETXwm1\DC2\DLE\n\
      \\ETXwm2\CAN\ACK \SOH(\rR\ETXwm2\DC2\NAK\n\
      \\ACKmb_cnt\CAN\a \SOH(\rR\ENQmbCnt\DC2\ETB\n\
      \\amb_size\CAN\b \SOH(\rR\ACKmbSize"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        pnum__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "pnum"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'pnum")) ::
              Data.ProtoLens.FieldDescriptor MdpPerfSetWmLevelsFtraceEvent
        useSpace__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "use_space"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'useSpace")) ::
              Data.ProtoLens.FieldDescriptor MdpPerfSetWmLevelsFtraceEvent
        priorityBytes__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "priority_bytes"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'priorityBytes")) ::
              Data.ProtoLens.FieldDescriptor MdpPerfSetWmLevelsFtraceEvent
        wm0__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "wm0"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'wm0")) ::
              Data.ProtoLens.FieldDescriptor MdpPerfSetWmLevelsFtraceEvent
        wm1__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "wm1"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'wm1")) ::
              Data.ProtoLens.FieldDescriptor MdpPerfSetWmLevelsFtraceEvent
        wm2__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "wm2"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'wm2")) ::
              Data.ProtoLens.FieldDescriptor MdpPerfSetWmLevelsFtraceEvent
        mbCnt__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "mb_cnt"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'mbCnt")) ::
              Data.ProtoLens.FieldDescriptor MdpPerfSetWmLevelsFtraceEvent
        mbSize__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "mb_size"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'mbSize")) ::
              Data.ProtoLens.FieldDescriptor MdpPerfSetWmLevelsFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, pnum__field_descriptor),
           (Data.ProtoLens.Tag 2, useSpace__field_descriptor),
           (Data.ProtoLens.Tag 3, priorityBytes__field_descriptor),
           (Data.ProtoLens.Tag 4, wm0__field_descriptor),
           (Data.ProtoLens.Tag 5, wm1__field_descriptor),
           (Data.ProtoLens.Tag 6, wm2__field_descriptor),
           (Data.ProtoLens.Tag 7, mbCnt__field_descriptor),
           (Data.ProtoLens.Tag 8, mbSize__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MdpPerfSetWmLevelsFtraceEvent'_unknownFields
        (\ x__ y__
           -> x__ {_MdpPerfSetWmLevelsFtraceEvent'_unknownFields = y__})
  defMessage
    = MdpPerfSetWmLevelsFtraceEvent'_constructor
        {_MdpPerfSetWmLevelsFtraceEvent'pnum = Prelude.Nothing,
         _MdpPerfSetWmLevelsFtraceEvent'useSpace = Prelude.Nothing,
         _MdpPerfSetWmLevelsFtraceEvent'priorityBytes = Prelude.Nothing,
         _MdpPerfSetWmLevelsFtraceEvent'wm0 = Prelude.Nothing,
         _MdpPerfSetWmLevelsFtraceEvent'wm1 = Prelude.Nothing,
         _MdpPerfSetWmLevelsFtraceEvent'wm2 = Prelude.Nothing,
         _MdpPerfSetWmLevelsFtraceEvent'mbCnt = Prelude.Nothing,
         _MdpPerfSetWmLevelsFtraceEvent'mbSize = Prelude.Nothing,
         _MdpPerfSetWmLevelsFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MdpPerfSetWmLevelsFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser MdpPerfSetWmLevelsFtraceEvent
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
                                       "pnum"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"pnum") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "use_space"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"useSpace") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "priority_bytes"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"priorityBytes") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "wm0"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"wm0") y x)
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "wm1"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"wm1") y x)
                        48
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "wm2"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"wm2") y x)
                        56
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "mb_cnt"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"mbCnt") y x)
                        64
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "mb_size"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"mbSize") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "MdpPerfSetWmLevelsFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'pnum") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       ((Prelude..)
                          Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'useSpace") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          ((Prelude..)
                             Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view
                          (Data.ProtoLens.Field.field @"maybe'priorityBytes") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             ((Prelude..)
                                Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'wm0") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                                ((Prelude..)
                                   Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                      ((Data.Monoid.<>)
                         (case
                              Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'wm1") _x
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
                                 Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'wm2") _x
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
                                    Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'mbCnt") _x
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
                                         (Data.ProtoLens.Field.field @"maybe'mbSize") _x
                                   of
                                     Prelude.Nothing -> Data.Monoid.mempty
                                     (Prelude.Just _v)
                                       -> (Data.Monoid.<>)
                                            (Data.ProtoLens.Encoding.Bytes.putVarInt 64)
                                            ((Prelude..)
                                               Data.ProtoLens.Encoding.Bytes.putVarInt
                                               Prelude.fromIntegral _v))
                                  (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                     (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))))))
instance Control.DeepSeq.NFData MdpPerfSetWmLevelsFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MdpPerfSetWmLevelsFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_MdpPerfSetWmLevelsFtraceEvent'pnum x__)
                (Control.DeepSeq.deepseq
                   (_MdpPerfSetWmLevelsFtraceEvent'useSpace x__)
                   (Control.DeepSeq.deepseq
                      (_MdpPerfSetWmLevelsFtraceEvent'priorityBytes x__)
                      (Control.DeepSeq.deepseq
                         (_MdpPerfSetWmLevelsFtraceEvent'wm0 x__)
                         (Control.DeepSeq.deepseq
                            (_MdpPerfSetWmLevelsFtraceEvent'wm1 x__)
                            (Control.DeepSeq.deepseq
                               (_MdpPerfSetWmLevelsFtraceEvent'wm2 x__)
                               (Control.DeepSeq.deepseq
                                  (_MdpPerfSetWmLevelsFtraceEvent'mbCnt x__)
                                  (Control.DeepSeq.deepseq
                                     (_MdpPerfSetWmLevelsFtraceEvent'mbSize x__) ()))))))))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mdss_Fields.client' @:: Lens' MdpPerfUpdateBusFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mdss_Fields.maybe'client' @:: Lens' MdpPerfUpdateBusFtraceEvent (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mdss_Fields.abQuota' @:: Lens' MdpPerfUpdateBusFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mdss_Fields.maybe'abQuota' @:: Lens' MdpPerfUpdateBusFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mdss_Fields.ibQuota' @:: Lens' MdpPerfUpdateBusFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mdss_Fields.maybe'ibQuota' @:: Lens' MdpPerfUpdateBusFtraceEvent (Prelude.Maybe Data.Word.Word64)@ -}
data MdpPerfUpdateBusFtraceEvent
  = MdpPerfUpdateBusFtraceEvent'_constructor {_MdpPerfUpdateBusFtraceEvent'client :: !(Prelude.Maybe Data.Int.Int32),
                                              _MdpPerfUpdateBusFtraceEvent'abQuota :: !(Prelude.Maybe Data.Word.Word64),
                                              _MdpPerfUpdateBusFtraceEvent'ibQuota :: !(Prelude.Maybe Data.Word.Word64),
                                              _MdpPerfUpdateBusFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MdpPerfUpdateBusFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField MdpPerfUpdateBusFtraceEvent "client" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MdpPerfUpdateBusFtraceEvent'client
           (\ x__ y__ -> x__ {_MdpPerfUpdateBusFtraceEvent'client = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MdpPerfUpdateBusFtraceEvent "maybe'client" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MdpPerfUpdateBusFtraceEvent'client
           (\ x__ y__ -> x__ {_MdpPerfUpdateBusFtraceEvent'client = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MdpPerfUpdateBusFtraceEvent "abQuota" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MdpPerfUpdateBusFtraceEvent'abQuota
           (\ x__ y__ -> x__ {_MdpPerfUpdateBusFtraceEvent'abQuota = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MdpPerfUpdateBusFtraceEvent "maybe'abQuota" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MdpPerfUpdateBusFtraceEvent'abQuota
           (\ x__ y__ -> x__ {_MdpPerfUpdateBusFtraceEvent'abQuota = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MdpPerfUpdateBusFtraceEvent "ibQuota" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MdpPerfUpdateBusFtraceEvent'ibQuota
           (\ x__ y__ -> x__ {_MdpPerfUpdateBusFtraceEvent'ibQuota = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MdpPerfUpdateBusFtraceEvent "maybe'ibQuota" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MdpPerfUpdateBusFtraceEvent'ibQuota
           (\ x__ y__ -> x__ {_MdpPerfUpdateBusFtraceEvent'ibQuota = y__}))
        Prelude.id
instance Data.ProtoLens.Message MdpPerfUpdateBusFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.MdpPerfUpdateBusFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\ESCMdpPerfUpdateBusFtraceEvent\DC2\SYN\n\
      \\ACKclient\CAN\SOH \SOH(\ENQR\ACKclient\DC2\EM\n\
      \\bab_quota\CAN\STX \SOH(\EOTR\aabQuota\DC2\EM\n\
      \\bib_quota\CAN\ETX \SOH(\EOTR\aibQuota"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        client__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "client"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'client")) ::
              Data.ProtoLens.FieldDescriptor MdpPerfUpdateBusFtraceEvent
        abQuota__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "ab_quota"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'abQuota")) ::
              Data.ProtoLens.FieldDescriptor MdpPerfUpdateBusFtraceEvent
        ibQuota__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "ib_quota"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'ibQuota")) ::
              Data.ProtoLens.FieldDescriptor MdpPerfUpdateBusFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, client__field_descriptor),
           (Data.ProtoLens.Tag 2, abQuota__field_descriptor),
           (Data.ProtoLens.Tag 3, ibQuota__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MdpPerfUpdateBusFtraceEvent'_unknownFields
        (\ x__ y__
           -> x__ {_MdpPerfUpdateBusFtraceEvent'_unknownFields = y__})
  defMessage
    = MdpPerfUpdateBusFtraceEvent'_constructor
        {_MdpPerfUpdateBusFtraceEvent'client = Prelude.Nothing,
         _MdpPerfUpdateBusFtraceEvent'abQuota = Prelude.Nothing,
         _MdpPerfUpdateBusFtraceEvent'ibQuota = Prelude.Nothing,
         _MdpPerfUpdateBusFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MdpPerfUpdateBusFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser MdpPerfUpdateBusFtraceEvent
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
                                       "client"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"client") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "ab_quota"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"abQuota") y x)
                        24
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
          (do loop Data.ProtoLens.defMessage) "MdpPerfUpdateBusFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'client") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       ((Prelude..)
                          Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'abQuota") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'ibQuota") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData MdpPerfUpdateBusFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MdpPerfUpdateBusFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_MdpPerfUpdateBusFtraceEvent'client x__)
                (Control.DeepSeq.deepseq
                   (_MdpPerfUpdateBusFtraceEvent'abQuota x__)
                   (Control.DeepSeq.deepseq
                      (_MdpPerfUpdateBusFtraceEvent'ibQuota x__) ())))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mdss_Fields.num' @:: Lens' MdpSsppChangeFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mdss_Fields.maybe'num' @:: Lens' MdpSsppChangeFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mdss_Fields.playCnt' @:: Lens' MdpSsppChangeFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mdss_Fields.maybe'playCnt' @:: Lens' MdpSsppChangeFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mdss_Fields.mixer' @:: Lens' MdpSsppChangeFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mdss_Fields.maybe'mixer' @:: Lens' MdpSsppChangeFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mdss_Fields.stage' @:: Lens' MdpSsppChangeFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mdss_Fields.maybe'stage' @:: Lens' MdpSsppChangeFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mdss_Fields.flags' @:: Lens' MdpSsppChangeFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mdss_Fields.maybe'flags' @:: Lens' MdpSsppChangeFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mdss_Fields.format' @:: Lens' MdpSsppChangeFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mdss_Fields.maybe'format' @:: Lens' MdpSsppChangeFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mdss_Fields.imgW' @:: Lens' MdpSsppChangeFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mdss_Fields.maybe'imgW' @:: Lens' MdpSsppChangeFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mdss_Fields.imgH' @:: Lens' MdpSsppChangeFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mdss_Fields.maybe'imgH' @:: Lens' MdpSsppChangeFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mdss_Fields.srcX' @:: Lens' MdpSsppChangeFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mdss_Fields.maybe'srcX' @:: Lens' MdpSsppChangeFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mdss_Fields.srcY' @:: Lens' MdpSsppChangeFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mdss_Fields.maybe'srcY' @:: Lens' MdpSsppChangeFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mdss_Fields.srcW' @:: Lens' MdpSsppChangeFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mdss_Fields.maybe'srcW' @:: Lens' MdpSsppChangeFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mdss_Fields.srcH' @:: Lens' MdpSsppChangeFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mdss_Fields.maybe'srcH' @:: Lens' MdpSsppChangeFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mdss_Fields.dstX' @:: Lens' MdpSsppChangeFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mdss_Fields.maybe'dstX' @:: Lens' MdpSsppChangeFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mdss_Fields.dstY' @:: Lens' MdpSsppChangeFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mdss_Fields.maybe'dstY' @:: Lens' MdpSsppChangeFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mdss_Fields.dstW' @:: Lens' MdpSsppChangeFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mdss_Fields.maybe'dstW' @:: Lens' MdpSsppChangeFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mdss_Fields.dstH' @:: Lens' MdpSsppChangeFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mdss_Fields.maybe'dstH' @:: Lens' MdpSsppChangeFtraceEvent (Prelude.Maybe Data.Word.Word32)@ -}
data MdpSsppChangeFtraceEvent
  = MdpSsppChangeFtraceEvent'_constructor {_MdpSsppChangeFtraceEvent'num :: !(Prelude.Maybe Data.Word.Word32),
                                           _MdpSsppChangeFtraceEvent'playCnt :: !(Prelude.Maybe Data.Word.Word32),
                                           _MdpSsppChangeFtraceEvent'mixer :: !(Prelude.Maybe Data.Word.Word32),
                                           _MdpSsppChangeFtraceEvent'stage :: !(Prelude.Maybe Data.Word.Word32),
                                           _MdpSsppChangeFtraceEvent'flags :: !(Prelude.Maybe Data.Word.Word32),
                                           _MdpSsppChangeFtraceEvent'format :: !(Prelude.Maybe Data.Word.Word32),
                                           _MdpSsppChangeFtraceEvent'imgW :: !(Prelude.Maybe Data.Word.Word32),
                                           _MdpSsppChangeFtraceEvent'imgH :: !(Prelude.Maybe Data.Word.Word32),
                                           _MdpSsppChangeFtraceEvent'srcX :: !(Prelude.Maybe Data.Word.Word32),
                                           _MdpSsppChangeFtraceEvent'srcY :: !(Prelude.Maybe Data.Word.Word32),
                                           _MdpSsppChangeFtraceEvent'srcW :: !(Prelude.Maybe Data.Word.Word32),
                                           _MdpSsppChangeFtraceEvent'srcH :: !(Prelude.Maybe Data.Word.Word32),
                                           _MdpSsppChangeFtraceEvent'dstX :: !(Prelude.Maybe Data.Word.Word32),
                                           _MdpSsppChangeFtraceEvent'dstY :: !(Prelude.Maybe Data.Word.Word32),
                                           _MdpSsppChangeFtraceEvent'dstW :: !(Prelude.Maybe Data.Word.Word32),
                                           _MdpSsppChangeFtraceEvent'dstH :: !(Prelude.Maybe Data.Word.Word32),
                                           _MdpSsppChangeFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MdpSsppChangeFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField MdpSsppChangeFtraceEvent "num" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MdpSsppChangeFtraceEvent'num
           (\ x__ y__ -> x__ {_MdpSsppChangeFtraceEvent'num = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MdpSsppChangeFtraceEvent "maybe'num" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MdpSsppChangeFtraceEvent'num
           (\ x__ y__ -> x__ {_MdpSsppChangeFtraceEvent'num = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MdpSsppChangeFtraceEvent "playCnt" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MdpSsppChangeFtraceEvent'playCnt
           (\ x__ y__ -> x__ {_MdpSsppChangeFtraceEvent'playCnt = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MdpSsppChangeFtraceEvent "maybe'playCnt" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MdpSsppChangeFtraceEvent'playCnt
           (\ x__ y__ -> x__ {_MdpSsppChangeFtraceEvent'playCnt = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MdpSsppChangeFtraceEvent "mixer" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MdpSsppChangeFtraceEvent'mixer
           (\ x__ y__ -> x__ {_MdpSsppChangeFtraceEvent'mixer = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MdpSsppChangeFtraceEvent "maybe'mixer" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MdpSsppChangeFtraceEvent'mixer
           (\ x__ y__ -> x__ {_MdpSsppChangeFtraceEvent'mixer = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MdpSsppChangeFtraceEvent "stage" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MdpSsppChangeFtraceEvent'stage
           (\ x__ y__ -> x__ {_MdpSsppChangeFtraceEvent'stage = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MdpSsppChangeFtraceEvent "maybe'stage" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MdpSsppChangeFtraceEvent'stage
           (\ x__ y__ -> x__ {_MdpSsppChangeFtraceEvent'stage = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MdpSsppChangeFtraceEvent "flags" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MdpSsppChangeFtraceEvent'flags
           (\ x__ y__ -> x__ {_MdpSsppChangeFtraceEvent'flags = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MdpSsppChangeFtraceEvent "maybe'flags" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MdpSsppChangeFtraceEvent'flags
           (\ x__ y__ -> x__ {_MdpSsppChangeFtraceEvent'flags = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MdpSsppChangeFtraceEvent "format" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MdpSsppChangeFtraceEvent'format
           (\ x__ y__ -> x__ {_MdpSsppChangeFtraceEvent'format = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MdpSsppChangeFtraceEvent "maybe'format" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MdpSsppChangeFtraceEvent'format
           (\ x__ y__ -> x__ {_MdpSsppChangeFtraceEvent'format = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MdpSsppChangeFtraceEvent "imgW" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MdpSsppChangeFtraceEvent'imgW
           (\ x__ y__ -> x__ {_MdpSsppChangeFtraceEvent'imgW = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MdpSsppChangeFtraceEvent "maybe'imgW" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MdpSsppChangeFtraceEvent'imgW
           (\ x__ y__ -> x__ {_MdpSsppChangeFtraceEvent'imgW = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MdpSsppChangeFtraceEvent "imgH" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MdpSsppChangeFtraceEvent'imgH
           (\ x__ y__ -> x__ {_MdpSsppChangeFtraceEvent'imgH = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MdpSsppChangeFtraceEvent "maybe'imgH" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MdpSsppChangeFtraceEvent'imgH
           (\ x__ y__ -> x__ {_MdpSsppChangeFtraceEvent'imgH = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MdpSsppChangeFtraceEvent "srcX" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MdpSsppChangeFtraceEvent'srcX
           (\ x__ y__ -> x__ {_MdpSsppChangeFtraceEvent'srcX = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MdpSsppChangeFtraceEvent "maybe'srcX" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MdpSsppChangeFtraceEvent'srcX
           (\ x__ y__ -> x__ {_MdpSsppChangeFtraceEvent'srcX = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MdpSsppChangeFtraceEvent "srcY" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MdpSsppChangeFtraceEvent'srcY
           (\ x__ y__ -> x__ {_MdpSsppChangeFtraceEvent'srcY = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MdpSsppChangeFtraceEvent "maybe'srcY" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MdpSsppChangeFtraceEvent'srcY
           (\ x__ y__ -> x__ {_MdpSsppChangeFtraceEvent'srcY = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MdpSsppChangeFtraceEvent "srcW" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MdpSsppChangeFtraceEvent'srcW
           (\ x__ y__ -> x__ {_MdpSsppChangeFtraceEvent'srcW = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MdpSsppChangeFtraceEvent "maybe'srcW" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MdpSsppChangeFtraceEvent'srcW
           (\ x__ y__ -> x__ {_MdpSsppChangeFtraceEvent'srcW = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MdpSsppChangeFtraceEvent "srcH" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MdpSsppChangeFtraceEvent'srcH
           (\ x__ y__ -> x__ {_MdpSsppChangeFtraceEvent'srcH = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MdpSsppChangeFtraceEvent "maybe'srcH" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MdpSsppChangeFtraceEvent'srcH
           (\ x__ y__ -> x__ {_MdpSsppChangeFtraceEvent'srcH = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MdpSsppChangeFtraceEvent "dstX" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MdpSsppChangeFtraceEvent'dstX
           (\ x__ y__ -> x__ {_MdpSsppChangeFtraceEvent'dstX = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MdpSsppChangeFtraceEvent "maybe'dstX" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MdpSsppChangeFtraceEvent'dstX
           (\ x__ y__ -> x__ {_MdpSsppChangeFtraceEvent'dstX = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MdpSsppChangeFtraceEvent "dstY" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MdpSsppChangeFtraceEvent'dstY
           (\ x__ y__ -> x__ {_MdpSsppChangeFtraceEvent'dstY = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MdpSsppChangeFtraceEvent "maybe'dstY" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MdpSsppChangeFtraceEvent'dstY
           (\ x__ y__ -> x__ {_MdpSsppChangeFtraceEvent'dstY = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MdpSsppChangeFtraceEvent "dstW" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MdpSsppChangeFtraceEvent'dstW
           (\ x__ y__ -> x__ {_MdpSsppChangeFtraceEvent'dstW = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MdpSsppChangeFtraceEvent "maybe'dstW" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MdpSsppChangeFtraceEvent'dstW
           (\ x__ y__ -> x__ {_MdpSsppChangeFtraceEvent'dstW = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MdpSsppChangeFtraceEvent "dstH" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MdpSsppChangeFtraceEvent'dstH
           (\ x__ y__ -> x__ {_MdpSsppChangeFtraceEvent'dstH = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MdpSsppChangeFtraceEvent "maybe'dstH" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MdpSsppChangeFtraceEvent'dstH
           (\ x__ y__ -> x__ {_MdpSsppChangeFtraceEvent'dstH = y__}))
        Prelude.id
instance Data.ProtoLens.Message MdpSsppChangeFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.MdpSsppChangeFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\CANMdpSsppChangeFtraceEvent\DC2\DLE\n\
      \\ETXnum\CAN\SOH \SOH(\rR\ETXnum\DC2\EM\n\
      \\bplay_cnt\CAN\STX \SOH(\rR\aplayCnt\DC2\DC4\n\
      \\ENQmixer\CAN\ETX \SOH(\rR\ENQmixer\DC2\DC4\n\
      \\ENQstage\CAN\EOT \SOH(\rR\ENQstage\DC2\DC4\n\
      \\ENQflags\CAN\ENQ \SOH(\rR\ENQflags\DC2\SYN\n\
      \\ACKformat\CAN\ACK \SOH(\rR\ACKformat\DC2\DC3\n\
      \\ENQimg_w\CAN\a \SOH(\rR\EOTimgW\DC2\DC3\n\
      \\ENQimg_h\CAN\b \SOH(\rR\EOTimgH\DC2\DC3\n\
      \\ENQsrc_x\CAN\t \SOH(\rR\EOTsrcX\DC2\DC3\n\
      \\ENQsrc_y\CAN\n\
      \ \SOH(\rR\EOTsrcY\DC2\DC3\n\
      \\ENQsrc_w\CAN\v \SOH(\rR\EOTsrcW\DC2\DC3\n\
      \\ENQsrc_h\CAN\f \SOH(\rR\EOTsrcH\DC2\DC3\n\
      \\ENQdst_x\CAN\r \SOH(\rR\EOTdstX\DC2\DC3\n\
      \\ENQdst_y\CAN\SO \SOH(\rR\EOTdstY\DC2\DC3\n\
      \\ENQdst_w\CAN\SI \SOH(\rR\EOTdstW\DC2\DC3\n\
      \\ENQdst_h\CAN\DLE \SOH(\rR\EOTdstH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        num__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "num"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'num")) ::
              Data.ProtoLens.FieldDescriptor MdpSsppChangeFtraceEvent
        playCnt__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "play_cnt"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'playCnt")) ::
              Data.ProtoLens.FieldDescriptor MdpSsppChangeFtraceEvent
        mixer__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "mixer"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'mixer")) ::
              Data.ProtoLens.FieldDescriptor MdpSsppChangeFtraceEvent
        stage__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "stage"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'stage")) ::
              Data.ProtoLens.FieldDescriptor MdpSsppChangeFtraceEvent
        flags__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "flags"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'flags")) ::
              Data.ProtoLens.FieldDescriptor MdpSsppChangeFtraceEvent
        format__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "format"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'format")) ::
              Data.ProtoLens.FieldDescriptor MdpSsppChangeFtraceEvent
        imgW__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "img_w"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'imgW")) ::
              Data.ProtoLens.FieldDescriptor MdpSsppChangeFtraceEvent
        imgH__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "img_h"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'imgH")) ::
              Data.ProtoLens.FieldDescriptor MdpSsppChangeFtraceEvent
        srcX__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "src_x"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'srcX")) ::
              Data.ProtoLens.FieldDescriptor MdpSsppChangeFtraceEvent
        srcY__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "src_y"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'srcY")) ::
              Data.ProtoLens.FieldDescriptor MdpSsppChangeFtraceEvent
        srcW__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "src_w"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'srcW")) ::
              Data.ProtoLens.FieldDescriptor MdpSsppChangeFtraceEvent
        srcH__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "src_h"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'srcH")) ::
              Data.ProtoLens.FieldDescriptor MdpSsppChangeFtraceEvent
        dstX__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "dst_x"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'dstX")) ::
              Data.ProtoLens.FieldDescriptor MdpSsppChangeFtraceEvent
        dstY__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "dst_y"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'dstY")) ::
              Data.ProtoLens.FieldDescriptor MdpSsppChangeFtraceEvent
        dstW__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "dst_w"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'dstW")) ::
              Data.ProtoLens.FieldDescriptor MdpSsppChangeFtraceEvent
        dstH__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "dst_h"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'dstH")) ::
              Data.ProtoLens.FieldDescriptor MdpSsppChangeFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, num__field_descriptor),
           (Data.ProtoLens.Tag 2, playCnt__field_descriptor),
           (Data.ProtoLens.Tag 3, mixer__field_descriptor),
           (Data.ProtoLens.Tag 4, stage__field_descriptor),
           (Data.ProtoLens.Tag 5, flags__field_descriptor),
           (Data.ProtoLens.Tag 6, format__field_descriptor),
           (Data.ProtoLens.Tag 7, imgW__field_descriptor),
           (Data.ProtoLens.Tag 8, imgH__field_descriptor),
           (Data.ProtoLens.Tag 9, srcX__field_descriptor),
           (Data.ProtoLens.Tag 10, srcY__field_descriptor),
           (Data.ProtoLens.Tag 11, srcW__field_descriptor),
           (Data.ProtoLens.Tag 12, srcH__field_descriptor),
           (Data.ProtoLens.Tag 13, dstX__field_descriptor),
           (Data.ProtoLens.Tag 14, dstY__field_descriptor),
           (Data.ProtoLens.Tag 15, dstW__field_descriptor),
           (Data.ProtoLens.Tag 16, dstH__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MdpSsppChangeFtraceEvent'_unknownFields
        (\ x__ y__ -> x__ {_MdpSsppChangeFtraceEvent'_unknownFields = y__})
  defMessage
    = MdpSsppChangeFtraceEvent'_constructor
        {_MdpSsppChangeFtraceEvent'num = Prelude.Nothing,
         _MdpSsppChangeFtraceEvent'playCnt = Prelude.Nothing,
         _MdpSsppChangeFtraceEvent'mixer = Prelude.Nothing,
         _MdpSsppChangeFtraceEvent'stage = Prelude.Nothing,
         _MdpSsppChangeFtraceEvent'flags = Prelude.Nothing,
         _MdpSsppChangeFtraceEvent'format = Prelude.Nothing,
         _MdpSsppChangeFtraceEvent'imgW = Prelude.Nothing,
         _MdpSsppChangeFtraceEvent'imgH = Prelude.Nothing,
         _MdpSsppChangeFtraceEvent'srcX = Prelude.Nothing,
         _MdpSsppChangeFtraceEvent'srcY = Prelude.Nothing,
         _MdpSsppChangeFtraceEvent'srcW = Prelude.Nothing,
         _MdpSsppChangeFtraceEvent'srcH = Prelude.Nothing,
         _MdpSsppChangeFtraceEvent'dstX = Prelude.Nothing,
         _MdpSsppChangeFtraceEvent'dstY = Prelude.Nothing,
         _MdpSsppChangeFtraceEvent'dstW = Prelude.Nothing,
         _MdpSsppChangeFtraceEvent'dstH = Prelude.Nothing,
         _MdpSsppChangeFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MdpSsppChangeFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser MdpSsppChangeFtraceEvent
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
                                       "num"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"num") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "play_cnt"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"playCnt") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "mixer"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"mixer") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "stage"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"stage") y x)
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "flags"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"flags") y x)
                        48
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "format"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"format") y x)
                        56
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "img_w"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"imgW") y x)
                        64
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "img_h"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"imgH") y x)
                        72
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "src_x"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"srcX") y x)
                        80
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "src_y"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"srcY") y x)
                        88
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "src_w"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"srcW") y x)
                        96
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "src_h"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"srcH") y x)
                        104
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "dst_x"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"dstX") y x)
                        112
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "dst_y"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"dstY") y x)
                        120
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "dst_w"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"dstW") y x)
                        128
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "dst_h"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"dstH") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "MdpSsppChangeFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'num") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       ((Prelude..)
                          Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'playCnt") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          ((Prelude..)
                             Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'mixer") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             ((Prelude..)
                                Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'stage") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                                ((Prelude..)
                                   Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                      ((Data.Monoid.<>)
                         (case
                              Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'flags") _x
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
                                 Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'format") _x
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
                                    Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'imgW") _x
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
                                         (Data.ProtoLens.Field.field @"maybe'imgH") _x
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
                                            (Data.ProtoLens.Field.field @"maybe'srcX") _x
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
                                               (Data.ProtoLens.Field.field @"maybe'srcY") _x
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
                                                  (Data.ProtoLens.Field.field @"maybe'srcW") _x
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
                                                     (Data.ProtoLens.Field.field @"maybe'srcH") _x
                                               of
                                                 Prelude.Nothing -> Data.Monoid.mempty
                                                 (Prelude.Just _v)
                                                   -> (Data.Monoid.<>)
                                                        (Data.ProtoLens.Encoding.Bytes.putVarInt 96)
                                                        ((Prelude..)
                                                           Data.ProtoLens.Encoding.Bytes.putVarInt
                                                           Prelude.fromIntegral _v))
                                              ((Data.Monoid.<>)
                                                 (case
                                                      Lens.Family2.view
                                                        (Data.ProtoLens.Field.field @"maybe'dstX")
                                                        _x
                                                  of
                                                    Prelude.Nothing -> Data.Monoid.mempty
                                                    (Prelude.Just _v)
                                                      -> (Data.Monoid.<>)
                                                           (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                              104)
                                                           ((Prelude..)
                                                              Data.ProtoLens.Encoding.Bytes.putVarInt
                                                              Prelude.fromIntegral _v))
                                                 ((Data.Monoid.<>)
                                                    (case
                                                         Lens.Family2.view
                                                           (Data.ProtoLens.Field.field
                                                              @"maybe'dstY")
                                                           _x
                                                     of
                                                       Prelude.Nothing -> Data.Monoid.mempty
                                                       (Prelude.Just _v)
                                                         -> (Data.Monoid.<>)
                                                              (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                 112)
                                                              ((Prelude..)
                                                                 Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                 Prelude.fromIntegral _v))
                                                    ((Data.Monoid.<>)
                                                       (case
                                                            Lens.Family2.view
                                                              (Data.ProtoLens.Field.field
                                                                 @"maybe'dstW")
                                                              _x
                                                        of
                                                          Prelude.Nothing -> Data.Monoid.mempty
                                                          (Prelude.Just _v)
                                                            -> (Data.Monoid.<>)
                                                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                    120)
                                                                 ((Prelude..)
                                                                    Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                    Prelude.fromIntegral _v))
                                                       ((Data.Monoid.<>)
                                                          (case
                                                               Lens.Family2.view
                                                                 (Data.ProtoLens.Field.field
                                                                    @"maybe'dstH")
                                                                 _x
                                                           of
                                                             Prelude.Nothing -> Data.Monoid.mempty
                                                             (Prelude.Just _v)
                                                               -> (Data.Monoid.<>)
                                                                    (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                       128)
                                                                    ((Prelude..)
                                                                       Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                       Prelude.fromIntegral _v))
                                                          (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                                             (Lens.Family2.view
                                                                Data.ProtoLens.unknownFields
                                                                _x)))))))))))))))))
instance Control.DeepSeq.NFData MdpSsppChangeFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MdpSsppChangeFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_MdpSsppChangeFtraceEvent'num x__)
                (Control.DeepSeq.deepseq
                   (_MdpSsppChangeFtraceEvent'playCnt x__)
                   (Control.DeepSeq.deepseq
                      (_MdpSsppChangeFtraceEvent'mixer x__)
                      (Control.DeepSeq.deepseq
                         (_MdpSsppChangeFtraceEvent'stage x__)
                         (Control.DeepSeq.deepseq
                            (_MdpSsppChangeFtraceEvent'flags x__)
                            (Control.DeepSeq.deepseq
                               (_MdpSsppChangeFtraceEvent'format x__)
                               (Control.DeepSeq.deepseq
                                  (_MdpSsppChangeFtraceEvent'imgW x__)
                                  (Control.DeepSeq.deepseq
                                     (_MdpSsppChangeFtraceEvent'imgH x__)
                                     (Control.DeepSeq.deepseq
                                        (_MdpSsppChangeFtraceEvent'srcX x__)
                                        (Control.DeepSeq.deepseq
                                           (_MdpSsppChangeFtraceEvent'srcY x__)
                                           (Control.DeepSeq.deepseq
                                              (_MdpSsppChangeFtraceEvent'srcW x__)
                                              (Control.DeepSeq.deepseq
                                                 (_MdpSsppChangeFtraceEvent'srcH x__)
                                                 (Control.DeepSeq.deepseq
                                                    (_MdpSsppChangeFtraceEvent'dstX x__)
                                                    (Control.DeepSeq.deepseq
                                                       (_MdpSsppChangeFtraceEvent'dstY x__)
                                                       (Control.DeepSeq.deepseq
                                                          (_MdpSsppChangeFtraceEvent'dstW x__)
                                                          (Control.DeepSeq.deepseq
                                                             (_MdpSsppChangeFtraceEvent'dstH x__)
                                                             ()))))))))))))))))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mdss_Fields.num' @:: Lens' MdpSsppSetFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mdss_Fields.maybe'num' @:: Lens' MdpSsppSetFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mdss_Fields.playCnt' @:: Lens' MdpSsppSetFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mdss_Fields.maybe'playCnt' @:: Lens' MdpSsppSetFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mdss_Fields.mixer' @:: Lens' MdpSsppSetFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mdss_Fields.maybe'mixer' @:: Lens' MdpSsppSetFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mdss_Fields.stage' @:: Lens' MdpSsppSetFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mdss_Fields.maybe'stage' @:: Lens' MdpSsppSetFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mdss_Fields.flags' @:: Lens' MdpSsppSetFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mdss_Fields.maybe'flags' @:: Lens' MdpSsppSetFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mdss_Fields.format' @:: Lens' MdpSsppSetFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mdss_Fields.maybe'format' @:: Lens' MdpSsppSetFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mdss_Fields.imgW' @:: Lens' MdpSsppSetFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mdss_Fields.maybe'imgW' @:: Lens' MdpSsppSetFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mdss_Fields.imgH' @:: Lens' MdpSsppSetFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mdss_Fields.maybe'imgH' @:: Lens' MdpSsppSetFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mdss_Fields.srcX' @:: Lens' MdpSsppSetFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mdss_Fields.maybe'srcX' @:: Lens' MdpSsppSetFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mdss_Fields.srcY' @:: Lens' MdpSsppSetFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mdss_Fields.maybe'srcY' @:: Lens' MdpSsppSetFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mdss_Fields.srcW' @:: Lens' MdpSsppSetFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mdss_Fields.maybe'srcW' @:: Lens' MdpSsppSetFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mdss_Fields.srcH' @:: Lens' MdpSsppSetFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mdss_Fields.maybe'srcH' @:: Lens' MdpSsppSetFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mdss_Fields.dstX' @:: Lens' MdpSsppSetFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mdss_Fields.maybe'dstX' @:: Lens' MdpSsppSetFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mdss_Fields.dstY' @:: Lens' MdpSsppSetFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mdss_Fields.maybe'dstY' @:: Lens' MdpSsppSetFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mdss_Fields.dstW' @:: Lens' MdpSsppSetFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mdss_Fields.maybe'dstW' @:: Lens' MdpSsppSetFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mdss_Fields.dstH' @:: Lens' MdpSsppSetFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mdss_Fields.maybe'dstH' @:: Lens' MdpSsppSetFtraceEvent (Prelude.Maybe Data.Word.Word32)@ -}
data MdpSsppSetFtraceEvent
  = MdpSsppSetFtraceEvent'_constructor {_MdpSsppSetFtraceEvent'num :: !(Prelude.Maybe Data.Word.Word32),
                                        _MdpSsppSetFtraceEvent'playCnt :: !(Prelude.Maybe Data.Word.Word32),
                                        _MdpSsppSetFtraceEvent'mixer :: !(Prelude.Maybe Data.Word.Word32),
                                        _MdpSsppSetFtraceEvent'stage :: !(Prelude.Maybe Data.Word.Word32),
                                        _MdpSsppSetFtraceEvent'flags :: !(Prelude.Maybe Data.Word.Word32),
                                        _MdpSsppSetFtraceEvent'format :: !(Prelude.Maybe Data.Word.Word32),
                                        _MdpSsppSetFtraceEvent'imgW :: !(Prelude.Maybe Data.Word.Word32),
                                        _MdpSsppSetFtraceEvent'imgH :: !(Prelude.Maybe Data.Word.Word32),
                                        _MdpSsppSetFtraceEvent'srcX :: !(Prelude.Maybe Data.Word.Word32),
                                        _MdpSsppSetFtraceEvent'srcY :: !(Prelude.Maybe Data.Word.Word32),
                                        _MdpSsppSetFtraceEvent'srcW :: !(Prelude.Maybe Data.Word.Word32),
                                        _MdpSsppSetFtraceEvent'srcH :: !(Prelude.Maybe Data.Word.Word32),
                                        _MdpSsppSetFtraceEvent'dstX :: !(Prelude.Maybe Data.Word.Word32),
                                        _MdpSsppSetFtraceEvent'dstY :: !(Prelude.Maybe Data.Word.Word32),
                                        _MdpSsppSetFtraceEvent'dstW :: !(Prelude.Maybe Data.Word.Word32),
                                        _MdpSsppSetFtraceEvent'dstH :: !(Prelude.Maybe Data.Word.Word32),
                                        _MdpSsppSetFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MdpSsppSetFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField MdpSsppSetFtraceEvent "num" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MdpSsppSetFtraceEvent'num
           (\ x__ y__ -> x__ {_MdpSsppSetFtraceEvent'num = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MdpSsppSetFtraceEvent "maybe'num" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MdpSsppSetFtraceEvent'num
           (\ x__ y__ -> x__ {_MdpSsppSetFtraceEvent'num = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MdpSsppSetFtraceEvent "playCnt" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MdpSsppSetFtraceEvent'playCnt
           (\ x__ y__ -> x__ {_MdpSsppSetFtraceEvent'playCnt = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MdpSsppSetFtraceEvent "maybe'playCnt" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MdpSsppSetFtraceEvent'playCnt
           (\ x__ y__ -> x__ {_MdpSsppSetFtraceEvent'playCnt = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MdpSsppSetFtraceEvent "mixer" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MdpSsppSetFtraceEvent'mixer
           (\ x__ y__ -> x__ {_MdpSsppSetFtraceEvent'mixer = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MdpSsppSetFtraceEvent "maybe'mixer" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MdpSsppSetFtraceEvent'mixer
           (\ x__ y__ -> x__ {_MdpSsppSetFtraceEvent'mixer = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MdpSsppSetFtraceEvent "stage" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MdpSsppSetFtraceEvent'stage
           (\ x__ y__ -> x__ {_MdpSsppSetFtraceEvent'stage = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MdpSsppSetFtraceEvent "maybe'stage" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MdpSsppSetFtraceEvent'stage
           (\ x__ y__ -> x__ {_MdpSsppSetFtraceEvent'stage = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MdpSsppSetFtraceEvent "flags" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MdpSsppSetFtraceEvent'flags
           (\ x__ y__ -> x__ {_MdpSsppSetFtraceEvent'flags = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MdpSsppSetFtraceEvent "maybe'flags" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MdpSsppSetFtraceEvent'flags
           (\ x__ y__ -> x__ {_MdpSsppSetFtraceEvent'flags = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MdpSsppSetFtraceEvent "format" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MdpSsppSetFtraceEvent'format
           (\ x__ y__ -> x__ {_MdpSsppSetFtraceEvent'format = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MdpSsppSetFtraceEvent "maybe'format" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MdpSsppSetFtraceEvent'format
           (\ x__ y__ -> x__ {_MdpSsppSetFtraceEvent'format = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MdpSsppSetFtraceEvent "imgW" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MdpSsppSetFtraceEvent'imgW
           (\ x__ y__ -> x__ {_MdpSsppSetFtraceEvent'imgW = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MdpSsppSetFtraceEvent "maybe'imgW" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MdpSsppSetFtraceEvent'imgW
           (\ x__ y__ -> x__ {_MdpSsppSetFtraceEvent'imgW = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MdpSsppSetFtraceEvent "imgH" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MdpSsppSetFtraceEvent'imgH
           (\ x__ y__ -> x__ {_MdpSsppSetFtraceEvent'imgH = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MdpSsppSetFtraceEvent "maybe'imgH" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MdpSsppSetFtraceEvent'imgH
           (\ x__ y__ -> x__ {_MdpSsppSetFtraceEvent'imgH = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MdpSsppSetFtraceEvent "srcX" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MdpSsppSetFtraceEvent'srcX
           (\ x__ y__ -> x__ {_MdpSsppSetFtraceEvent'srcX = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MdpSsppSetFtraceEvent "maybe'srcX" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MdpSsppSetFtraceEvent'srcX
           (\ x__ y__ -> x__ {_MdpSsppSetFtraceEvent'srcX = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MdpSsppSetFtraceEvent "srcY" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MdpSsppSetFtraceEvent'srcY
           (\ x__ y__ -> x__ {_MdpSsppSetFtraceEvent'srcY = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MdpSsppSetFtraceEvent "maybe'srcY" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MdpSsppSetFtraceEvent'srcY
           (\ x__ y__ -> x__ {_MdpSsppSetFtraceEvent'srcY = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MdpSsppSetFtraceEvent "srcW" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MdpSsppSetFtraceEvent'srcW
           (\ x__ y__ -> x__ {_MdpSsppSetFtraceEvent'srcW = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MdpSsppSetFtraceEvent "maybe'srcW" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MdpSsppSetFtraceEvent'srcW
           (\ x__ y__ -> x__ {_MdpSsppSetFtraceEvent'srcW = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MdpSsppSetFtraceEvent "srcH" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MdpSsppSetFtraceEvent'srcH
           (\ x__ y__ -> x__ {_MdpSsppSetFtraceEvent'srcH = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MdpSsppSetFtraceEvent "maybe'srcH" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MdpSsppSetFtraceEvent'srcH
           (\ x__ y__ -> x__ {_MdpSsppSetFtraceEvent'srcH = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MdpSsppSetFtraceEvent "dstX" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MdpSsppSetFtraceEvent'dstX
           (\ x__ y__ -> x__ {_MdpSsppSetFtraceEvent'dstX = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MdpSsppSetFtraceEvent "maybe'dstX" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MdpSsppSetFtraceEvent'dstX
           (\ x__ y__ -> x__ {_MdpSsppSetFtraceEvent'dstX = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MdpSsppSetFtraceEvent "dstY" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MdpSsppSetFtraceEvent'dstY
           (\ x__ y__ -> x__ {_MdpSsppSetFtraceEvent'dstY = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MdpSsppSetFtraceEvent "maybe'dstY" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MdpSsppSetFtraceEvent'dstY
           (\ x__ y__ -> x__ {_MdpSsppSetFtraceEvent'dstY = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MdpSsppSetFtraceEvent "dstW" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MdpSsppSetFtraceEvent'dstW
           (\ x__ y__ -> x__ {_MdpSsppSetFtraceEvent'dstW = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MdpSsppSetFtraceEvent "maybe'dstW" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MdpSsppSetFtraceEvent'dstW
           (\ x__ y__ -> x__ {_MdpSsppSetFtraceEvent'dstW = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MdpSsppSetFtraceEvent "dstH" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MdpSsppSetFtraceEvent'dstH
           (\ x__ y__ -> x__ {_MdpSsppSetFtraceEvent'dstH = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MdpSsppSetFtraceEvent "maybe'dstH" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MdpSsppSetFtraceEvent'dstH
           (\ x__ y__ -> x__ {_MdpSsppSetFtraceEvent'dstH = y__}))
        Prelude.id
instance Data.ProtoLens.Message MdpSsppSetFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.MdpSsppSetFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\NAKMdpSsppSetFtraceEvent\DC2\DLE\n\
      \\ETXnum\CAN\SOH \SOH(\rR\ETXnum\DC2\EM\n\
      \\bplay_cnt\CAN\STX \SOH(\rR\aplayCnt\DC2\DC4\n\
      \\ENQmixer\CAN\ETX \SOH(\rR\ENQmixer\DC2\DC4\n\
      \\ENQstage\CAN\EOT \SOH(\rR\ENQstage\DC2\DC4\n\
      \\ENQflags\CAN\ENQ \SOH(\rR\ENQflags\DC2\SYN\n\
      \\ACKformat\CAN\ACK \SOH(\rR\ACKformat\DC2\DC3\n\
      \\ENQimg_w\CAN\a \SOH(\rR\EOTimgW\DC2\DC3\n\
      \\ENQimg_h\CAN\b \SOH(\rR\EOTimgH\DC2\DC3\n\
      \\ENQsrc_x\CAN\t \SOH(\rR\EOTsrcX\DC2\DC3\n\
      \\ENQsrc_y\CAN\n\
      \ \SOH(\rR\EOTsrcY\DC2\DC3\n\
      \\ENQsrc_w\CAN\v \SOH(\rR\EOTsrcW\DC2\DC3\n\
      \\ENQsrc_h\CAN\f \SOH(\rR\EOTsrcH\DC2\DC3\n\
      \\ENQdst_x\CAN\r \SOH(\rR\EOTdstX\DC2\DC3\n\
      \\ENQdst_y\CAN\SO \SOH(\rR\EOTdstY\DC2\DC3\n\
      \\ENQdst_w\CAN\SI \SOH(\rR\EOTdstW\DC2\DC3\n\
      \\ENQdst_h\CAN\DLE \SOH(\rR\EOTdstH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        num__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "num"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'num")) ::
              Data.ProtoLens.FieldDescriptor MdpSsppSetFtraceEvent
        playCnt__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "play_cnt"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'playCnt")) ::
              Data.ProtoLens.FieldDescriptor MdpSsppSetFtraceEvent
        mixer__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "mixer"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'mixer")) ::
              Data.ProtoLens.FieldDescriptor MdpSsppSetFtraceEvent
        stage__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "stage"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'stage")) ::
              Data.ProtoLens.FieldDescriptor MdpSsppSetFtraceEvent
        flags__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "flags"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'flags")) ::
              Data.ProtoLens.FieldDescriptor MdpSsppSetFtraceEvent
        format__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "format"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'format")) ::
              Data.ProtoLens.FieldDescriptor MdpSsppSetFtraceEvent
        imgW__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "img_w"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'imgW")) ::
              Data.ProtoLens.FieldDescriptor MdpSsppSetFtraceEvent
        imgH__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "img_h"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'imgH")) ::
              Data.ProtoLens.FieldDescriptor MdpSsppSetFtraceEvent
        srcX__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "src_x"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'srcX")) ::
              Data.ProtoLens.FieldDescriptor MdpSsppSetFtraceEvent
        srcY__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "src_y"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'srcY")) ::
              Data.ProtoLens.FieldDescriptor MdpSsppSetFtraceEvent
        srcW__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "src_w"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'srcW")) ::
              Data.ProtoLens.FieldDescriptor MdpSsppSetFtraceEvent
        srcH__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "src_h"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'srcH")) ::
              Data.ProtoLens.FieldDescriptor MdpSsppSetFtraceEvent
        dstX__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "dst_x"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'dstX")) ::
              Data.ProtoLens.FieldDescriptor MdpSsppSetFtraceEvent
        dstY__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "dst_y"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'dstY")) ::
              Data.ProtoLens.FieldDescriptor MdpSsppSetFtraceEvent
        dstW__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "dst_w"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'dstW")) ::
              Data.ProtoLens.FieldDescriptor MdpSsppSetFtraceEvent
        dstH__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "dst_h"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'dstH")) ::
              Data.ProtoLens.FieldDescriptor MdpSsppSetFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, num__field_descriptor),
           (Data.ProtoLens.Tag 2, playCnt__field_descriptor),
           (Data.ProtoLens.Tag 3, mixer__field_descriptor),
           (Data.ProtoLens.Tag 4, stage__field_descriptor),
           (Data.ProtoLens.Tag 5, flags__field_descriptor),
           (Data.ProtoLens.Tag 6, format__field_descriptor),
           (Data.ProtoLens.Tag 7, imgW__field_descriptor),
           (Data.ProtoLens.Tag 8, imgH__field_descriptor),
           (Data.ProtoLens.Tag 9, srcX__field_descriptor),
           (Data.ProtoLens.Tag 10, srcY__field_descriptor),
           (Data.ProtoLens.Tag 11, srcW__field_descriptor),
           (Data.ProtoLens.Tag 12, srcH__field_descriptor),
           (Data.ProtoLens.Tag 13, dstX__field_descriptor),
           (Data.ProtoLens.Tag 14, dstY__field_descriptor),
           (Data.ProtoLens.Tag 15, dstW__field_descriptor),
           (Data.ProtoLens.Tag 16, dstH__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MdpSsppSetFtraceEvent'_unknownFields
        (\ x__ y__ -> x__ {_MdpSsppSetFtraceEvent'_unknownFields = y__})
  defMessage
    = MdpSsppSetFtraceEvent'_constructor
        {_MdpSsppSetFtraceEvent'num = Prelude.Nothing,
         _MdpSsppSetFtraceEvent'playCnt = Prelude.Nothing,
         _MdpSsppSetFtraceEvent'mixer = Prelude.Nothing,
         _MdpSsppSetFtraceEvent'stage = Prelude.Nothing,
         _MdpSsppSetFtraceEvent'flags = Prelude.Nothing,
         _MdpSsppSetFtraceEvent'format = Prelude.Nothing,
         _MdpSsppSetFtraceEvent'imgW = Prelude.Nothing,
         _MdpSsppSetFtraceEvent'imgH = Prelude.Nothing,
         _MdpSsppSetFtraceEvent'srcX = Prelude.Nothing,
         _MdpSsppSetFtraceEvent'srcY = Prelude.Nothing,
         _MdpSsppSetFtraceEvent'srcW = Prelude.Nothing,
         _MdpSsppSetFtraceEvent'srcH = Prelude.Nothing,
         _MdpSsppSetFtraceEvent'dstX = Prelude.Nothing,
         _MdpSsppSetFtraceEvent'dstY = Prelude.Nothing,
         _MdpSsppSetFtraceEvent'dstW = Prelude.Nothing,
         _MdpSsppSetFtraceEvent'dstH = Prelude.Nothing,
         _MdpSsppSetFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MdpSsppSetFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser MdpSsppSetFtraceEvent
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
                                       "num"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"num") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "play_cnt"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"playCnt") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "mixer"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"mixer") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "stage"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"stage") y x)
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "flags"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"flags") y x)
                        48
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "format"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"format") y x)
                        56
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "img_w"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"imgW") y x)
                        64
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "img_h"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"imgH") y x)
                        72
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "src_x"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"srcX") y x)
                        80
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "src_y"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"srcY") y x)
                        88
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "src_w"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"srcW") y x)
                        96
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "src_h"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"srcH") y x)
                        104
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "dst_x"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"dstX") y x)
                        112
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "dst_y"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"dstY") y x)
                        120
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "dst_w"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"dstW") y x)
                        128
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "dst_h"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"dstH") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "MdpSsppSetFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'num") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       ((Prelude..)
                          Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'playCnt") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          ((Prelude..)
                             Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'mixer") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             ((Prelude..)
                                Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'stage") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                                ((Prelude..)
                                   Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                      ((Data.Monoid.<>)
                         (case
                              Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'flags") _x
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
                                 Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'format") _x
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
                                    Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'imgW") _x
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
                                         (Data.ProtoLens.Field.field @"maybe'imgH") _x
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
                                            (Data.ProtoLens.Field.field @"maybe'srcX") _x
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
                                               (Data.ProtoLens.Field.field @"maybe'srcY") _x
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
                                                  (Data.ProtoLens.Field.field @"maybe'srcW") _x
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
                                                     (Data.ProtoLens.Field.field @"maybe'srcH") _x
                                               of
                                                 Prelude.Nothing -> Data.Monoid.mempty
                                                 (Prelude.Just _v)
                                                   -> (Data.Monoid.<>)
                                                        (Data.ProtoLens.Encoding.Bytes.putVarInt 96)
                                                        ((Prelude..)
                                                           Data.ProtoLens.Encoding.Bytes.putVarInt
                                                           Prelude.fromIntegral _v))
                                              ((Data.Monoid.<>)
                                                 (case
                                                      Lens.Family2.view
                                                        (Data.ProtoLens.Field.field @"maybe'dstX")
                                                        _x
                                                  of
                                                    Prelude.Nothing -> Data.Monoid.mempty
                                                    (Prelude.Just _v)
                                                      -> (Data.Monoid.<>)
                                                           (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                              104)
                                                           ((Prelude..)
                                                              Data.ProtoLens.Encoding.Bytes.putVarInt
                                                              Prelude.fromIntegral _v))
                                                 ((Data.Monoid.<>)
                                                    (case
                                                         Lens.Family2.view
                                                           (Data.ProtoLens.Field.field
                                                              @"maybe'dstY")
                                                           _x
                                                     of
                                                       Prelude.Nothing -> Data.Monoid.mempty
                                                       (Prelude.Just _v)
                                                         -> (Data.Monoid.<>)
                                                              (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                 112)
                                                              ((Prelude..)
                                                                 Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                 Prelude.fromIntegral _v))
                                                    ((Data.Monoid.<>)
                                                       (case
                                                            Lens.Family2.view
                                                              (Data.ProtoLens.Field.field
                                                                 @"maybe'dstW")
                                                              _x
                                                        of
                                                          Prelude.Nothing -> Data.Monoid.mempty
                                                          (Prelude.Just _v)
                                                            -> (Data.Monoid.<>)
                                                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                    120)
                                                                 ((Prelude..)
                                                                    Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                    Prelude.fromIntegral _v))
                                                       ((Data.Monoid.<>)
                                                          (case
                                                               Lens.Family2.view
                                                                 (Data.ProtoLens.Field.field
                                                                    @"maybe'dstH")
                                                                 _x
                                                           of
                                                             Prelude.Nothing -> Data.Monoid.mempty
                                                             (Prelude.Just _v)
                                                               -> (Data.Monoid.<>)
                                                                    (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                       128)
                                                                    ((Prelude..)
                                                                       Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                       Prelude.fromIntegral _v))
                                                          (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                                             (Lens.Family2.view
                                                                Data.ProtoLens.unknownFields
                                                                _x)))))))))))))))))
instance Control.DeepSeq.NFData MdpSsppSetFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MdpSsppSetFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_MdpSsppSetFtraceEvent'num x__)
                (Control.DeepSeq.deepseq
                   (_MdpSsppSetFtraceEvent'playCnt x__)
                   (Control.DeepSeq.deepseq
                      (_MdpSsppSetFtraceEvent'mixer x__)
                      (Control.DeepSeq.deepseq
                         (_MdpSsppSetFtraceEvent'stage x__)
                         (Control.DeepSeq.deepseq
                            (_MdpSsppSetFtraceEvent'flags x__)
                            (Control.DeepSeq.deepseq
                               (_MdpSsppSetFtraceEvent'format x__)
                               (Control.DeepSeq.deepseq
                                  (_MdpSsppSetFtraceEvent'imgW x__)
                                  (Control.DeepSeq.deepseq
                                     (_MdpSsppSetFtraceEvent'imgH x__)
                                     (Control.DeepSeq.deepseq
                                        (_MdpSsppSetFtraceEvent'srcX x__)
                                        (Control.DeepSeq.deepseq
                                           (_MdpSsppSetFtraceEvent'srcY x__)
                                           (Control.DeepSeq.deepseq
                                              (_MdpSsppSetFtraceEvent'srcW x__)
                                              (Control.DeepSeq.deepseq
                                                 (_MdpSsppSetFtraceEvent'srcH x__)
                                                 (Control.DeepSeq.deepseq
                                                    (_MdpSsppSetFtraceEvent'dstX x__)
                                                    (Control.DeepSeq.deepseq
                                                       (_MdpSsppSetFtraceEvent'dstY x__)
                                                       (Control.DeepSeq.deepseq
                                                          (_MdpSsppSetFtraceEvent'dstW x__)
                                                          (Control.DeepSeq.deepseq
                                                             (_MdpSsppSetFtraceEvent'dstH x__)
                                                             ()))))))))))))))))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mdss_Fields.pid' @:: Lens' MdpTraceCounterFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mdss_Fields.maybe'pid' @:: Lens' MdpTraceCounterFtraceEvent (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mdss_Fields.counterName' @:: Lens' MdpTraceCounterFtraceEvent Data.Text.Text@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mdss_Fields.maybe'counterName' @:: Lens' MdpTraceCounterFtraceEvent (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mdss_Fields.value' @:: Lens' MdpTraceCounterFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mdss_Fields.maybe'value' @:: Lens' MdpTraceCounterFtraceEvent (Prelude.Maybe Data.Int.Int32)@ -}
data MdpTraceCounterFtraceEvent
  = MdpTraceCounterFtraceEvent'_constructor {_MdpTraceCounterFtraceEvent'pid :: !(Prelude.Maybe Data.Int.Int32),
                                             _MdpTraceCounterFtraceEvent'counterName :: !(Prelude.Maybe Data.Text.Text),
                                             _MdpTraceCounterFtraceEvent'value :: !(Prelude.Maybe Data.Int.Int32),
                                             _MdpTraceCounterFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MdpTraceCounterFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField MdpTraceCounterFtraceEvent "pid" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MdpTraceCounterFtraceEvent'pid
           (\ x__ y__ -> x__ {_MdpTraceCounterFtraceEvent'pid = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MdpTraceCounterFtraceEvent "maybe'pid" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MdpTraceCounterFtraceEvent'pid
           (\ x__ y__ -> x__ {_MdpTraceCounterFtraceEvent'pid = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MdpTraceCounterFtraceEvent "counterName" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MdpTraceCounterFtraceEvent'counterName
           (\ x__ y__ -> x__ {_MdpTraceCounterFtraceEvent'counterName = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MdpTraceCounterFtraceEvent "maybe'counterName" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MdpTraceCounterFtraceEvent'counterName
           (\ x__ y__ -> x__ {_MdpTraceCounterFtraceEvent'counterName = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MdpTraceCounterFtraceEvent "value" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MdpTraceCounterFtraceEvent'value
           (\ x__ y__ -> x__ {_MdpTraceCounterFtraceEvent'value = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MdpTraceCounterFtraceEvent "maybe'value" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MdpTraceCounterFtraceEvent'value
           (\ x__ y__ -> x__ {_MdpTraceCounterFtraceEvent'value = y__}))
        Prelude.id
instance Data.ProtoLens.Message MdpTraceCounterFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.MdpTraceCounterFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\SUBMdpTraceCounterFtraceEvent\DC2\DLE\n\
      \\ETXpid\CAN\SOH \SOH(\ENQR\ETXpid\DC2!\n\
      \\fcounter_name\CAN\STX \SOH(\tR\vcounterName\DC2\DC4\n\
      \\ENQvalue\CAN\ETX \SOH(\ENQR\ENQvalue"
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
              Data.ProtoLens.FieldDescriptor MdpTraceCounterFtraceEvent
        counterName__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "counter_name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'counterName")) ::
              Data.ProtoLens.FieldDescriptor MdpTraceCounterFtraceEvent
        value__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "value"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'value")) ::
              Data.ProtoLens.FieldDescriptor MdpTraceCounterFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, pid__field_descriptor),
           (Data.ProtoLens.Tag 2, counterName__field_descriptor),
           (Data.ProtoLens.Tag 3, value__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MdpTraceCounterFtraceEvent'_unknownFields
        (\ x__ y__
           -> x__ {_MdpTraceCounterFtraceEvent'_unknownFields = y__})
  defMessage
    = MdpTraceCounterFtraceEvent'_constructor
        {_MdpTraceCounterFtraceEvent'pid = Prelude.Nothing,
         _MdpTraceCounterFtraceEvent'counterName = Prelude.Nothing,
         _MdpTraceCounterFtraceEvent'value = Prelude.Nothing,
         _MdpTraceCounterFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MdpTraceCounterFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser MdpTraceCounterFtraceEvent
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
                                       "counter_name"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"counterName") y x)
                        24
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
          (do loop Data.ProtoLens.defMessage) "MdpTraceCounterFtraceEvent"
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
                       (Data.ProtoLens.Field.field @"maybe'counterName") _x
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
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'value") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             ((Prelude..)
                                Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData MdpTraceCounterFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MdpTraceCounterFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_MdpTraceCounterFtraceEvent'pid x__)
                (Control.DeepSeq.deepseq
                   (_MdpTraceCounterFtraceEvent'counterName x__)
                   (Control.DeepSeq.deepseq
                      (_MdpTraceCounterFtraceEvent'value x__) ())))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mdss_Fields.ctlNum' @:: Lens' MdpVideoUnderrunDoneFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mdss_Fields.maybe'ctlNum' @:: Lens' MdpVideoUnderrunDoneFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mdss_Fields.underrunCnt' @:: Lens' MdpVideoUnderrunDoneFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mdss_Fields.maybe'underrunCnt' @:: Lens' MdpVideoUnderrunDoneFtraceEvent (Prelude.Maybe Data.Word.Word32)@ -}
data MdpVideoUnderrunDoneFtraceEvent
  = MdpVideoUnderrunDoneFtraceEvent'_constructor {_MdpVideoUnderrunDoneFtraceEvent'ctlNum :: !(Prelude.Maybe Data.Word.Word32),
                                                  _MdpVideoUnderrunDoneFtraceEvent'underrunCnt :: !(Prelude.Maybe Data.Word.Word32),
                                                  _MdpVideoUnderrunDoneFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MdpVideoUnderrunDoneFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField MdpVideoUnderrunDoneFtraceEvent "ctlNum" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MdpVideoUnderrunDoneFtraceEvent'ctlNum
           (\ x__ y__ -> x__ {_MdpVideoUnderrunDoneFtraceEvent'ctlNum = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MdpVideoUnderrunDoneFtraceEvent "maybe'ctlNum" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MdpVideoUnderrunDoneFtraceEvent'ctlNum
           (\ x__ y__ -> x__ {_MdpVideoUnderrunDoneFtraceEvent'ctlNum = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MdpVideoUnderrunDoneFtraceEvent "underrunCnt" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MdpVideoUnderrunDoneFtraceEvent'underrunCnt
           (\ x__ y__
              -> x__ {_MdpVideoUnderrunDoneFtraceEvent'underrunCnt = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MdpVideoUnderrunDoneFtraceEvent "maybe'underrunCnt" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MdpVideoUnderrunDoneFtraceEvent'underrunCnt
           (\ x__ y__
              -> x__ {_MdpVideoUnderrunDoneFtraceEvent'underrunCnt = y__}))
        Prelude.id
instance Data.ProtoLens.Message MdpVideoUnderrunDoneFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.MdpVideoUnderrunDoneFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\USMdpVideoUnderrunDoneFtraceEvent\DC2\ETB\n\
      \\actl_num\CAN\SOH \SOH(\rR\ACKctlNum\DC2!\n\
      \\funderrun_cnt\CAN\STX \SOH(\rR\vunderrunCnt"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        ctlNum__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "ctl_num"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'ctlNum")) ::
              Data.ProtoLens.FieldDescriptor MdpVideoUnderrunDoneFtraceEvent
        underrunCnt__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "underrun_cnt"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'underrunCnt")) ::
              Data.ProtoLens.FieldDescriptor MdpVideoUnderrunDoneFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, ctlNum__field_descriptor),
           (Data.ProtoLens.Tag 2, underrunCnt__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MdpVideoUnderrunDoneFtraceEvent'_unknownFields
        (\ x__ y__
           -> x__ {_MdpVideoUnderrunDoneFtraceEvent'_unknownFields = y__})
  defMessage
    = MdpVideoUnderrunDoneFtraceEvent'_constructor
        {_MdpVideoUnderrunDoneFtraceEvent'ctlNum = Prelude.Nothing,
         _MdpVideoUnderrunDoneFtraceEvent'underrunCnt = Prelude.Nothing,
         _MdpVideoUnderrunDoneFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MdpVideoUnderrunDoneFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser MdpVideoUnderrunDoneFtraceEvent
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
                                       "ctl_num"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"ctlNum") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "underrun_cnt"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"underrunCnt") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage)
          "MdpVideoUnderrunDoneFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'ctlNum") _x
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
                       (Data.ProtoLens.Field.field @"maybe'underrunCnt") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          ((Prelude..)
                             Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData MdpVideoUnderrunDoneFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MdpVideoUnderrunDoneFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_MdpVideoUnderrunDoneFtraceEvent'ctlNum x__)
                (Control.DeepSeq.deepseq
                   (_MdpVideoUnderrunDoneFtraceEvent'underrunCnt x__) ()))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mdss_Fields.state' @:: Lens' RotatorBwAoAsContextFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mdss_Fields.maybe'state' @:: Lens' RotatorBwAoAsContextFtraceEvent (Prelude.Maybe Data.Word.Word32)@ -}
data RotatorBwAoAsContextFtraceEvent
  = RotatorBwAoAsContextFtraceEvent'_constructor {_RotatorBwAoAsContextFtraceEvent'state :: !(Prelude.Maybe Data.Word.Word32),
                                                  _RotatorBwAoAsContextFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show RotatorBwAoAsContextFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField RotatorBwAoAsContextFtraceEvent "state" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RotatorBwAoAsContextFtraceEvent'state
           (\ x__ y__ -> x__ {_RotatorBwAoAsContextFtraceEvent'state = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField RotatorBwAoAsContextFtraceEvent "maybe'state" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RotatorBwAoAsContextFtraceEvent'state
           (\ x__ y__ -> x__ {_RotatorBwAoAsContextFtraceEvent'state = y__}))
        Prelude.id
instance Data.ProtoLens.Message RotatorBwAoAsContextFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.RotatorBwAoAsContextFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\USRotatorBwAoAsContextFtraceEvent\DC2\DC4\n\
      \\ENQstate\CAN\SOH \SOH(\rR\ENQstate"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        state__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "state"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'state")) ::
              Data.ProtoLens.FieldDescriptor RotatorBwAoAsContextFtraceEvent
      in
        Data.Map.fromList [(Data.ProtoLens.Tag 1, state__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _RotatorBwAoAsContextFtraceEvent'_unknownFields
        (\ x__ y__
           -> x__ {_RotatorBwAoAsContextFtraceEvent'_unknownFields = y__})
  defMessage
    = RotatorBwAoAsContextFtraceEvent'_constructor
        {_RotatorBwAoAsContextFtraceEvent'state = Prelude.Nothing,
         _RotatorBwAoAsContextFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          RotatorBwAoAsContextFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser RotatorBwAoAsContextFtraceEvent
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
          (do loop Data.ProtoLens.defMessage)
          "RotatorBwAoAsContextFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'state") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       ((Prelude..)
                          Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData RotatorBwAoAsContextFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_RotatorBwAoAsContextFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_RotatorBwAoAsContextFtraceEvent'state x__) ())
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mdss_Fields.pid' @:: Lens' TracingMarkWriteFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mdss_Fields.maybe'pid' @:: Lens' TracingMarkWriteFtraceEvent (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mdss_Fields.traceName' @:: Lens' TracingMarkWriteFtraceEvent Data.Text.Text@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mdss_Fields.maybe'traceName' @:: Lens' TracingMarkWriteFtraceEvent (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mdss_Fields.traceBegin' @:: Lens' TracingMarkWriteFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Mdss_Fields.maybe'traceBegin' @:: Lens' TracingMarkWriteFtraceEvent (Prelude.Maybe Data.Word.Word32)@ -}
data TracingMarkWriteFtraceEvent
  = TracingMarkWriteFtraceEvent'_constructor {_TracingMarkWriteFtraceEvent'pid :: !(Prelude.Maybe Data.Int.Int32),
                                              _TracingMarkWriteFtraceEvent'traceName :: !(Prelude.Maybe Data.Text.Text),
                                              _TracingMarkWriteFtraceEvent'traceBegin :: !(Prelude.Maybe Data.Word.Word32),
                                              _TracingMarkWriteFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show TracingMarkWriteFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField TracingMarkWriteFtraceEvent "pid" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TracingMarkWriteFtraceEvent'pid
           (\ x__ y__ -> x__ {_TracingMarkWriteFtraceEvent'pid = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField TracingMarkWriteFtraceEvent "maybe'pid" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TracingMarkWriteFtraceEvent'pid
           (\ x__ y__ -> x__ {_TracingMarkWriteFtraceEvent'pid = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TracingMarkWriteFtraceEvent "traceName" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TracingMarkWriteFtraceEvent'traceName
           (\ x__ y__ -> x__ {_TracingMarkWriteFtraceEvent'traceName = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField TracingMarkWriteFtraceEvent "maybe'traceName" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TracingMarkWriteFtraceEvent'traceName
           (\ x__ y__ -> x__ {_TracingMarkWriteFtraceEvent'traceName = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TracingMarkWriteFtraceEvent "traceBegin" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TracingMarkWriteFtraceEvent'traceBegin
           (\ x__ y__ -> x__ {_TracingMarkWriteFtraceEvent'traceBegin = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField TracingMarkWriteFtraceEvent "maybe'traceBegin" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TracingMarkWriteFtraceEvent'traceBegin
           (\ x__ y__ -> x__ {_TracingMarkWriteFtraceEvent'traceBegin = y__}))
        Prelude.id
instance Data.ProtoLens.Message TracingMarkWriteFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.TracingMarkWriteFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\ESCTracingMarkWriteFtraceEvent\DC2\DLE\n\
      \\ETXpid\CAN\SOH \SOH(\ENQR\ETXpid\DC2\GS\n\
      \\n\
      \trace_name\CAN\STX \SOH(\tR\ttraceName\DC2\US\n\
      \\vtrace_begin\CAN\ETX \SOH(\rR\n\
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
              Data.ProtoLens.FieldDescriptor TracingMarkWriteFtraceEvent
        traceName__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "trace_name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'traceName")) ::
              Data.ProtoLens.FieldDescriptor TracingMarkWriteFtraceEvent
        traceBegin__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "trace_begin"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'traceBegin")) ::
              Data.ProtoLens.FieldDescriptor TracingMarkWriteFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, pid__field_descriptor),
           (Data.ProtoLens.Tag 2, traceName__field_descriptor),
           (Data.ProtoLens.Tag 3, traceBegin__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _TracingMarkWriteFtraceEvent'_unknownFields
        (\ x__ y__
           -> x__ {_TracingMarkWriteFtraceEvent'_unknownFields = y__})
  defMessage
    = TracingMarkWriteFtraceEvent'_constructor
        {_TracingMarkWriteFtraceEvent'pid = Prelude.Nothing,
         _TracingMarkWriteFtraceEvent'traceName = Prelude.Nothing,
         _TracingMarkWriteFtraceEvent'traceBegin = Prelude.Nothing,
         _TracingMarkWriteFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          TracingMarkWriteFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser TracingMarkWriteFtraceEvent
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
          (do loop Data.ProtoLens.defMessage) "TracingMarkWriteFtraceEvent"
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
                          (Data.ProtoLens.Field.field @"maybe'traceBegin") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             ((Prelude..)
                                Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData TracingMarkWriteFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_TracingMarkWriteFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_TracingMarkWriteFtraceEvent'pid x__)
                (Control.DeepSeq.deepseq
                   (_TracingMarkWriteFtraceEvent'traceName x__)
                   (Control.DeepSeq.deepseq
                      (_TracingMarkWriteFtraceEvent'traceBegin x__) ())))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \'protos/perfetto/trace/ftrace/mdss.proto\DC2\SIperfetto.protos\"T\n\
    \\CANMdpCmdKickoffFtraceEvent\DC2\ETB\n\
    \\actl_num\CAN\SOH \SOH(\rR\ACKctlNum\DC2\US\n\
    \\vkickoff_cnt\CAN\STX \SOH(\ENQR\n\
    \kickoffCnt\"|\n\
    \\DC4MdpCommitFtraceEvent\DC2\DLE\n\
    \\ETXnum\CAN\SOH \SOH(\rR\ETXnum\DC2\EM\n\
    \\bplay_cnt\CAN\STX \SOH(\rR\aplayCnt\DC2\EM\n\
    \\bclk_rate\CAN\ETX \SOH(\rR\aclkRate\DC2\FS\n\
    \\tbandwidth\CAN\EOT \SOH(\EOTR\tbandwidth\"y\n\
    \\ETBMdpPerfSetOtFtraceEvent\DC2\DC2\n\
    \\EOTpnum\CAN\SOH \SOH(\rR\EOTpnum\DC2\NAK\n\
    \\ACKxin_id\CAN\STX \SOH(\rR\ENQxinId\DC2\NAK\n\
    \\ACKrd_lim\CAN\ETX \SOH(\rR\ENQrdLim\DC2\FS\n\
    \\n\
    \is_vbif_rt\CAN\EOT \SOH(\rR\bisVbifRt\"\243\STX\n\
    \\CANMdpSsppChangeFtraceEvent\DC2\DLE\n\
    \\ETXnum\CAN\SOH \SOH(\rR\ETXnum\DC2\EM\n\
    \\bplay_cnt\CAN\STX \SOH(\rR\aplayCnt\DC2\DC4\n\
    \\ENQmixer\CAN\ETX \SOH(\rR\ENQmixer\DC2\DC4\n\
    \\ENQstage\CAN\EOT \SOH(\rR\ENQstage\DC2\DC4\n\
    \\ENQflags\CAN\ENQ \SOH(\rR\ENQflags\DC2\SYN\n\
    \\ACKformat\CAN\ACK \SOH(\rR\ACKformat\DC2\DC3\n\
    \\ENQimg_w\CAN\a \SOH(\rR\EOTimgW\DC2\DC3\n\
    \\ENQimg_h\CAN\b \SOH(\rR\EOTimgH\DC2\DC3\n\
    \\ENQsrc_x\CAN\t \SOH(\rR\EOTsrcX\DC2\DC3\n\
    \\ENQsrc_y\CAN\n\
    \ \SOH(\rR\EOTsrcY\DC2\DC3\n\
    \\ENQsrc_w\CAN\v \SOH(\rR\EOTsrcW\DC2\DC3\n\
    \\ENQsrc_h\CAN\f \SOH(\rR\EOTsrcH\DC2\DC3\n\
    \\ENQdst_x\CAN\r \SOH(\rR\EOTdstX\DC2\DC3\n\
    \\ENQdst_y\CAN\SO \SOH(\rR\EOTdstY\DC2\DC3\n\
    \\ENQdst_w\CAN\SI \SOH(\rR\EOTdstW\DC2\DC3\n\
    \\ENQdst_h\CAN\DLE \SOH(\rR\EOTdstH\"o\n\
    \\ESCTracingMarkWriteFtraceEvent\DC2\DLE\n\
    \\ETXpid\CAN\SOH \SOH(\ENQR\ETXpid\DC2\GS\n\
    \\n\
    \trace_name\CAN\STX \SOH(\tR\ttraceName\DC2\US\n\
    \\vtrace_begin\CAN\ETX \SOH(\rR\n\
    \traceBegin\"\133\SOH\n\
    \\GSMdpCmdPingpongDoneFtraceEvent\DC2\ETB\n\
    \\actl_num\CAN\SOH \SOH(\rR\ACKctlNum\DC2\EM\n\
    \\bintf_num\CAN\STX \SOH(\rR\aintfNum\DC2\NAK\n\
    \\ACKpp_num\CAN\ETX \SOH(\rR\ENQppNum\DC2\EM\n\
    \\bkoff_cnt\CAN\EOT \SOH(\ENQR\akoffCnt\"\231\SOH\n\
    \\ETBMdpCompareBwFtraceEvent\DC2\NAK\n\
    \\ACKnew_ab\CAN\SOH \SOH(\EOTR\ENQnewAb\DC2\NAK\n\
    \\ACKnew_ib\CAN\STX \SOH(\EOTR\ENQnewIb\DC2\NAK\n\
    \\ACKnew_wb\CAN\ETX \SOH(\EOTR\ENQnewWb\DC2\NAK\n\
    \\ACKold_ab\CAN\EOT \SOH(\EOTR\ENQoldAb\DC2\NAK\n\
    \\ACKold_ib\CAN\ENQ \SOH(\EOTR\ENQoldIb\DC2\NAK\n\
    \\ACKold_wb\CAN\ACK \SOH(\EOTR\ENQoldWb\DC2%\n\
    \\SOparams_changed\CAN\a \SOH(\rR\rparamsChanged\DC2\ESC\n\
    \\tupdate_bw\CAN\b \SOH(\rR\bupdateBw\"\150\SOH\n\
    \\RSMdpPerfSetPanicLutsFtraceEvent\DC2\DC2\n\
    \\EOTpnum\CAN\SOH \SOH(\rR\EOTpnum\DC2\DLE\n\
    \\ETXfmt\CAN\STX \SOH(\rR\ETXfmt\DC2\DC2\n\
    \\EOTmode\CAN\ETX \SOH(\rR\EOTmode\DC2\ESC\n\
    \\tpanic_lut\CAN\EOT \SOH(\rR\bpanicLut\DC2\GS\n\
    \\n\
    \robust_lut\CAN\ENQ \SOH(\rR\trobustLut\"\240\STX\n\
    \\NAKMdpSsppSetFtraceEvent\DC2\DLE\n\
    \\ETXnum\CAN\SOH \SOH(\rR\ETXnum\DC2\EM\n\
    \\bplay_cnt\CAN\STX \SOH(\rR\aplayCnt\DC2\DC4\n\
    \\ENQmixer\CAN\ETX \SOH(\rR\ENQmixer\DC2\DC4\n\
    \\ENQstage\CAN\EOT \SOH(\rR\ENQstage\DC2\DC4\n\
    \\ENQflags\CAN\ENQ \SOH(\rR\ENQflags\DC2\SYN\n\
    \\ACKformat\CAN\ACK \SOH(\rR\ACKformat\DC2\DC3\n\
    \\ENQimg_w\CAN\a \SOH(\rR\EOTimgW\DC2\DC3\n\
    \\ENQimg_h\CAN\b \SOH(\rR\EOTimgH\DC2\DC3\n\
    \\ENQsrc_x\CAN\t \SOH(\rR\EOTsrcX\DC2\DC3\n\
    \\ENQsrc_y\CAN\n\
    \ \SOH(\rR\EOTsrcY\DC2\DC3\n\
    \\ENQsrc_w\CAN\v \SOH(\rR\EOTsrcW\DC2\DC3\n\
    \\ENQsrc_h\CAN\f \SOH(\rR\EOTsrcH\DC2\DC3\n\
    \\ENQdst_x\CAN\r \SOH(\rR\EOTdstX\DC2\DC3\n\
    \\ENQdst_y\CAN\SO \SOH(\rR\EOTdstY\DC2\DC3\n\
    \\ENQdst_w\CAN\SI \SOH(\rR\EOTdstW\DC2\DC3\n\
    \\ENQdst_h\CAN\DLE \SOH(\rR\EOTdstH\"R\n\
    \\FSMdpCmdReadptrDoneFtraceEvent\DC2\ETB\n\
    \\actl_num\CAN\SOH \SOH(\rR\ACKctlNum\DC2\EM\n\
    \\bkoff_cnt\CAN\STX \SOH(\ENQR\akoffCnt\"a\n\
    \\NAKMdpMisrCrcFtraceEvent\DC2\EM\n\
    \\bblock_id\CAN\SOH \SOH(\rR\ablockId\DC2\ESC\n\
    \\tvsync_cnt\CAN\STX \SOH(\rR\bvsyncCnt\DC2\DLE\n\
    \\ETXcrc\CAN\ETX \SOH(\rR\ETXcrc\"\164\SOH\n\
    \\FSMdpPerfSetQosLutsFtraceEvent\DC2\DC2\n\
    \\EOTpnum\CAN\SOH \SOH(\rR\EOTpnum\DC2\DLE\n\
    \\ETXfmt\CAN\STX \SOH(\rR\ETXfmt\DC2\DC2\n\
    \\EOTintf\CAN\ETX \SOH(\rR\EOTintf\DC2\DLE\n\
    \\ETXrot\CAN\EOT \SOH(\rR\ETXrot\DC2\SO\n\
    \\STXfl\CAN\ENQ \SOH(\rR\STXfl\DC2\DLE\n\
    \\ETXlut\CAN\ACK \SOH(\rR\ETXlut\DC2\SYN\n\
    \\ACKlinear\CAN\a \SOH(\rR\ACKlinear\"g\n\
    \\SUBMdpTraceCounterFtraceEvent\DC2\DLE\n\
    \\ETXpid\CAN\SOH \SOH(\ENQR\ETXpid\DC2!\n\
    \\fcounter_name\CAN\STX \SOH(\tR\vcounterName\DC2\DC4\n\
    \\ENQvalue\CAN\ETX \SOH(\ENQR\ENQvalue\"5\n\
    \\SUBMdpCmdReleaseBwFtraceEvent\DC2\ETB\n\
    \\actl_num\CAN\SOH \SOH(\rR\ACKctlNum\"8\n\
    \\EMMdpMixerUpdateFtraceEvent\DC2\ESC\n\
    \\tmixer_num\CAN\SOH \SOH(\rR\bmixerNum\"\221\SOH\n\
    \\GSMdpPerfSetWmLevelsFtraceEvent\DC2\DC2\n\
    \\EOTpnum\CAN\SOH \SOH(\rR\EOTpnum\DC2\ESC\n\
    \\tuse_space\CAN\STX \SOH(\rR\buseSpace\DC2%\n\
    \\SOpriority_bytes\CAN\ETX \SOH(\rR\rpriorityBytes\DC2\DLE\n\
    \\ETXwm0\CAN\EOT \SOH(\rR\ETXwm0\DC2\DLE\n\
    \\ETXwm1\CAN\ENQ \SOH(\rR\ETXwm1\DC2\DLE\n\
    \\ETXwm2\CAN\ACK \SOH(\rR\ETXwm2\DC2\NAK\n\
    \\ACKmb_cnt\CAN\a \SOH(\rR\ENQmbCnt\DC2\ETB\n\
    \\amb_size\CAN\b \SOH(\rR\ACKmbSize\"]\n\
    \\USMdpVideoUnderrunDoneFtraceEvent\DC2\ETB\n\
    \\actl_num\CAN\SOH \SOH(\rR\ACKctlNum\DC2!\n\
    \\funderrun_cnt\CAN\STX \SOH(\rR\vunderrunCnt\"Y\n\
    \\GSMdpCmdWaitPingpongFtraceEvent\DC2\ETB\n\
    \\actl_num\CAN\SOH \SOH(\rR\ACKctlNum\DC2\US\n\
    \\vkickoff_cnt\CAN\STX \SOH(\ENQR\n\
    \kickoffCnt\"\165\STX\n\
    \\GSMdpPerfPrefillCalcFtraceEvent\DC2\DC2\n\
    \\EOTpnum\CAN\SOH \SOH(\rR\EOTpnum\DC2\US\n\
    \\vlatency_buf\CAN\STX \SOH(\rR\n\
    \latencyBuf\DC2\SO\n\
    \\STXot\CAN\ETX \SOH(\rR\STXot\DC2\DC3\n\
    \\ENQy_buf\CAN\EOT \SOH(\rR\EOTyBuf\DC2\EM\n\
    \\by_scaler\CAN\ENQ \SOH(\rR\ayScaler\DC2\EM\n\
    \\bpp_lines\CAN\ACK \SOH(\rR\appLines\DC2\EM\n\
    \\bpp_bytes\CAN\a \SOH(\rR\appBytes\DC2\ETB\n\
    \\apost_sc\CAN\b \SOH(\rR\ACKpostSc\DC2\ESC\n\
    \\tfbc_bytes\CAN\t \SOH(\rR\bfbcBytes\DC2#\n\
    \\rprefill_bytes\CAN\n\
    \ \SOH(\rR\fprefillBytes\"k\n\
    \\ESCMdpPerfUpdateBusFtraceEvent\DC2\SYN\n\
    \\ACKclient\CAN\SOH \SOH(\ENQR\ACKclient\DC2\EM\n\
    \\bab_quota\CAN\STX \SOH(\EOTR\aabQuota\DC2\EM\n\
    \\bib_quota\CAN\ETX \SOH(\EOTR\aibQuota\"7\n\
    \\USRotatorBwAoAsContextFtraceEvent\DC2\DC4\n\
    \\ENQstate\CAN\SOH \SOH(\rR\ENQstateJ\157>\n\
    \\a\DC2\ENQ\EOT\NUL\153\SOH\SOH\n\
    \a\n\
    \\SOH\f\DC2\ETX\EOT\NUL\DC22W Autogenerated by:\n\
    \ ../../src/tools/ftrace_proto_gen/ftrace_proto_gen.cc\n\
    \ Do not edit.\n\
    \\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\ENQ\NUL\CAN\n\
    \\n\
    \\n\
    \\STX\EOT\NUL\DC2\EOT\a\NUL\n\
    \\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\a\b \n\
    \\v\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\b\STX\RS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\EOT\DC2\ETX\b\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX\b\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\b\DC2\EM\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\b\FS\GS\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX\t\STX!\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\EOT\DC2\ETX\t\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ENQ\DC2\ETX\t\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX\t\DC1\FS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX\t\US \n\
    \\n\
    \\n\
    \\STX\EOT\SOH\DC2\EOT\v\NUL\DLE\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX\v\b\FS\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETX\f\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\EOT\DC2\ETX\f\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ENQ\DC2\ETX\f\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETX\f\DC2\NAK\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETX\f\CAN\EM\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\SOH\DC2\ETX\r\STX\US\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\EOT\DC2\ETX\r\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ENQ\DC2\ETX\r\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\SOH\DC2\ETX\r\DC2\SUB\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ETX\DC2\ETX\r\GS\RS\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\STX\DC2\ETX\SO\STX\US\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\EOT\DC2\ETX\SO\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\ENQ\DC2\ETX\SO\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\SOH\DC2\ETX\SO\DC2\SUB\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\ETX\DC2\ETX\SO\GS\RS\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\ETX\DC2\ETX\SI\STX \n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\EOT\DC2\ETX\SI\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\ENQ\DC2\ETX\SI\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\SOH\DC2\ETX\SI\DC2\ESC\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\ETX\DC2\ETX\SI\RS\US\n\
    \\n\
    \\n\
    \\STX\EOT\STX\DC2\EOT\DC1\NUL\SYN\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\SOH\DC2\ETX\DC1\b\US\n\
    \\v\n\
    \\EOT\EOT\STX\STX\NUL\DC2\ETX\DC2\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\EOT\DC2\ETX\DC2\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ENQ\DC2\ETX\DC2\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\SOH\DC2\ETX\DC2\DC2\SYN\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ETX\DC2\ETX\DC2\EM\SUB\n\
    \\v\n\
    \\EOT\EOT\STX\STX\SOH\DC2\ETX\DC3\STX\GS\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\EOT\DC2\ETX\DC3\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ENQ\DC2\ETX\DC3\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\SOH\DC2\ETX\DC3\DC2\CAN\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ETX\DC2\ETX\DC3\ESC\FS\n\
    \\v\n\
    \\EOT\EOT\STX\STX\STX\DC2\ETX\DC4\STX\GS\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\EOT\DC2\ETX\DC4\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\ENQ\DC2\ETX\DC4\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\SOH\DC2\ETX\DC4\DC2\CAN\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\ETX\DC2\ETX\DC4\ESC\FS\n\
    \\v\n\
    \\EOT\EOT\STX\STX\ETX\DC2\ETX\NAK\STX!\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ETX\EOT\DC2\ETX\NAK\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ETX\ENQ\DC2\ETX\NAK\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ETX\SOH\DC2\ETX\NAK\DC2\FS\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ETX\ETX\DC2\ETX\NAK\US \n\
    \\n\
    \\n\
    \\STX\EOT\ETX\DC2\EOT\ETB\NUL(\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\ETX\SOH\DC2\ETX\ETB\b \n\
    \\v\n\
    \\EOT\EOT\ETX\STX\NUL\DC2\ETX\CAN\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\EOT\DC2\ETX\CAN\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ENQ\DC2\ETX\CAN\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\SOH\DC2\ETX\CAN\DC2\NAK\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ETX\DC2\ETX\CAN\CAN\EM\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\SOH\DC2\ETX\EM\STX\US\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\EOT\DC2\ETX\EM\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\ENQ\DC2\ETX\EM\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\SOH\DC2\ETX\EM\DC2\SUB\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\ETX\DC2\ETX\EM\GS\RS\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\STX\DC2\ETX\SUB\STX\FS\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\STX\EOT\DC2\ETX\SUB\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\STX\ENQ\DC2\ETX\SUB\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\STX\SOH\DC2\ETX\SUB\DC2\ETB\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\STX\ETX\DC2\ETX\SUB\SUB\ESC\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\ETX\DC2\ETX\ESC\STX\FS\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ETX\EOT\DC2\ETX\ESC\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ETX\ENQ\DC2\ETX\ESC\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ETX\SOH\DC2\ETX\ESC\DC2\ETB\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ETX\ETX\DC2\ETX\ESC\SUB\ESC\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\EOT\DC2\ETX\FS\STX\FS\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\EOT\EOT\DC2\ETX\FS\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\EOT\ENQ\DC2\ETX\FS\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\EOT\SOH\DC2\ETX\FS\DC2\ETB\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\EOT\ETX\DC2\ETX\FS\SUB\ESC\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\ENQ\DC2\ETX\GS\STX\GS\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ENQ\EOT\DC2\ETX\GS\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ENQ\ENQ\DC2\ETX\GS\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ENQ\SOH\DC2\ETX\GS\DC2\CAN\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ENQ\ETX\DC2\ETX\GS\ESC\FS\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\ACK\DC2\ETX\RS\STX\FS\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ACK\EOT\DC2\ETX\RS\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ACK\ENQ\DC2\ETX\RS\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ACK\SOH\DC2\ETX\RS\DC2\ETB\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ACK\ETX\DC2\ETX\RS\SUB\ESC\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\a\DC2\ETX\US\STX\FS\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\a\EOT\DC2\ETX\US\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\a\ENQ\DC2\ETX\US\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\a\SOH\DC2\ETX\US\DC2\ETB\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\a\ETX\DC2\ETX\US\SUB\ESC\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\b\DC2\ETX \STX\FS\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\b\EOT\DC2\ETX \STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\b\ENQ\DC2\ETX \v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\b\SOH\DC2\ETX \DC2\ETB\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\b\ETX\DC2\ETX \SUB\ESC\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\t\DC2\ETX!\STX\GS\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\t\EOT\DC2\ETX!\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\t\ENQ\DC2\ETX!\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\t\SOH\DC2\ETX!\DC2\ETB\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\t\ETX\DC2\ETX!\SUB\FS\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\n\
    \\DC2\ETX\"\STX\GS\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\n\
    \\EOT\DC2\ETX\"\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\n\
    \\ENQ\DC2\ETX\"\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\n\
    \\SOH\DC2\ETX\"\DC2\ETB\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\n\
    \\ETX\DC2\ETX\"\SUB\FS\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\v\DC2\ETX#\STX\GS\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\v\EOT\DC2\ETX#\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\v\ENQ\DC2\ETX#\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\v\SOH\DC2\ETX#\DC2\ETB\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\v\ETX\DC2\ETX#\SUB\FS\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\f\DC2\ETX$\STX\GS\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\f\EOT\DC2\ETX$\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\f\ENQ\DC2\ETX$\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\f\SOH\DC2\ETX$\DC2\ETB\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\f\ETX\DC2\ETX$\SUB\FS\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\r\DC2\ETX%\STX\GS\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\r\EOT\DC2\ETX%\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\r\ENQ\DC2\ETX%\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\r\SOH\DC2\ETX%\DC2\ETB\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\r\ETX\DC2\ETX%\SUB\FS\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\SO\DC2\ETX&\STX\GS\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SO\EOT\DC2\ETX&\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SO\ENQ\DC2\ETX&\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SO\SOH\DC2\ETX&\DC2\ETB\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SO\ETX\DC2\ETX&\SUB\FS\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\SI\DC2\ETX'\STX\GS\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SI\EOT\DC2\ETX'\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SI\ENQ\DC2\ETX'\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SI\SOH\DC2\ETX'\DC2\ETB\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SI\ETX\DC2\ETX'\SUB\FS\n\
    \\n\
    \\n\
    \\STX\EOT\EOT\DC2\EOT)\NUL-\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\EOT\SOH\DC2\ETX)\b#\n\
    \\v\n\
    \\EOT\EOT\EOT\STX\NUL\DC2\ETX*\STX\EM\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\EOT\DC2\ETX*\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\ENQ\DC2\ETX*\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\SOH\DC2\ETX*\DC1\DC4\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\ETX\DC2\ETX*\ETB\CAN\n\
    \\v\n\
    \\EOT\EOT\EOT\STX\SOH\DC2\ETX+\STX!\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\EOT\DC2\ETX+\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\ENQ\DC2\ETX+\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\SOH\DC2\ETX+\DC2\FS\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\ETX\DC2\ETX+\US \n\
    \\v\n\
    \\EOT\EOT\EOT\STX\STX\DC2\ETX,\STX\"\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\STX\EOT\DC2\ETX,\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\STX\ENQ\DC2\ETX,\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\STX\SOH\DC2\ETX,\DC2\GS\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\STX\ETX\DC2\ETX, !\n\
    \\n\
    \\n\
    \\STX\EOT\ENQ\DC2\EOT.\NUL3\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\ENQ\SOH\DC2\ETX.\b%\n\
    \\v\n\
    \\EOT\EOT\ENQ\STX\NUL\DC2\ETX/\STX\RS\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\EOT\DC2\ETX/\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\ENQ\DC2\ETX/\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\SOH\DC2\ETX/\DC2\EM\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\ETX\DC2\ETX/\FS\GS\n\
    \\v\n\
    \\EOT\EOT\ENQ\STX\SOH\DC2\ETX0\STX\US\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\SOH\EOT\DC2\ETX0\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\SOH\ENQ\DC2\ETX0\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\SOH\SOH\DC2\ETX0\DC2\SUB\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\SOH\ETX\DC2\ETX0\GS\RS\n\
    \\v\n\
    \\EOT\EOT\ENQ\STX\STX\DC2\ETX1\STX\GS\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\STX\EOT\DC2\ETX1\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\STX\ENQ\DC2\ETX1\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\STX\SOH\DC2\ETX1\DC2\CAN\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\STX\ETX\DC2\ETX1\ESC\FS\n\
    \\v\n\
    \\EOT\EOT\ENQ\STX\ETX\DC2\ETX2\STX\RS\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\ETX\EOT\DC2\ETX2\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\ETX\ENQ\DC2\ETX2\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\ETX\SOH\DC2\ETX2\DC1\EM\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\ETX\ETX\DC2\ETX2\FS\GS\n\
    \\n\
    \\n\
    \\STX\EOT\ACK\DC2\EOT4\NUL=\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\ACK\SOH\DC2\ETX4\b\US\n\
    \\v\n\
    \\EOT\EOT\ACK\STX\NUL\DC2\ETX5\STX\GS\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\EOT\DC2\ETX5\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\ENQ\DC2\ETX5\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\SOH\DC2\ETX5\DC2\CAN\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\ETX\DC2\ETX5\ESC\FS\n\
    \\v\n\
    \\EOT\EOT\ACK\STX\SOH\DC2\ETX6\STX\GS\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\SOH\EOT\DC2\ETX6\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\SOH\ENQ\DC2\ETX6\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\SOH\SOH\DC2\ETX6\DC2\CAN\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\SOH\ETX\DC2\ETX6\ESC\FS\n\
    \\v\n\
    \\EOT\EOT\ACK\STX\STX\DC2\ETX7\STX\GS\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\STX\EOT\DC2\ETX7\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\STX\ENQ\DC2\ETX7\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\STX\SOH\DC2\ETX7\DC2\CAN\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\STX\ETX\DC2\ETX7\ESC\FS\n\
    \\v\n\
    \\EOT\EOT\ACK\STX\ETX\DC2\ETX8\STX\GS\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\ETX\EOT\DC2\ETX8\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\ETX\ENQ\DC2\ETX8\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\ETX\SOH\DC2\ETX8\DC2\CAN\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\ETX\ETX\DC2\ETX8\ESC\FS\n\
    \\v\n\
    \\EOT\EOT\ACK\STX\EOT\DC2\ETX9\STX\GS\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\EOT\EOT\DC2\ETX9\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\EOT\ENQ\DC2\ETX9\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\EOT\SOH\DC2\ETX9\DC2\CAN\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\EOT\ETX\DC2\ETX9\ESC\FS\n\
    \\v\n\
    \\EOT\EOT\ACK\STX\ENQ\DC2\ETX:\STX\GS\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\ENQ\EOT\DC2\ETX:\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\ENQ\ENQ\DC2\ETX:\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\ENQ\SOH\DC2\ETX:\DC2\CAN\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\ENQ\ETX\DC2\ETX:\ESC\FS\n\
    \\v\n\
    \\EOT\EOT\ACK\STX\ACK\DC2\ETX;\STX%\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\ACK\EOT\DC2\ETX;\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\ACK\ENQ\DC2\ETX;\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\ACK\SOH\DC2\ETX;\DC2 \n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\ACK\ETX\DC2\ETX;#$\n\
    \\v\n\
    \\EOT\EOT\ACK\STX\a\DC2\ETX<\STX \n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\a\EOT\DC2\ETX<\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\a\ENQ\DC2\ETX<\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\a\SOH\DC2\ETX<\DC2\ESC\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\a\ETX\DC2\ETX<\RS\US\n\
    \\n\
    \\n\
    \\STX\EOT\a\DC2\EOT>\NULD\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\a\SOH\DC2\ETX>\b&\n\
    \\v\n\
    \\EOT\EOT\a\STX\NUL\DC2\ETX?\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\a\STX\NUL\EOT\DC2\ETX?\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\a\STX\NUL\ENQ\DC2\ETX?\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\a\STX\NUL\SOH\DC2\ETX?\DC2\SYN\n\
    \\f\n\
    \\ENQ\EOT\a\STX\NUL\ETX\DC2\ETX?\EM\SUB\n\
    \\v\n\
    \\EOT\EOT\a\STX\SOH\DC2\ETX@\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\a\STX\SOH\EOT\DC2\ETX@\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\a\STX\SOH\ENQ\DC2\ETX@\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\a\STX\SOH\SOH\DC2\ETX@\DC2\NAK\n\
    \\f\n\
    \\ENQ\EOT\a\STX\SOH\ETX\DC2\ETX@\CAN\EM\n\
    \\v\n\
    \\EOT\EOT\a\STX\STX\DC2\ETXA\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\a\STX\STX\EOT\DC2\ETXA\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\a\STX\STX\ENQ\DC2\ETXA\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\a\STX\STX\SOH\DC2\ETXA\DC2\SYN\n\
    \\f\n\
    \\ENQ\EOT\a\STX\STX\ETX\DC2\ETXA\EM\SUB\n\
    \\v\n\
    \\EOT\EOT\a\STX\ETX\DC2\ETXB\STX \n\
    \\f\n\
    \\ENQ\EOT\a\STX\ETX\EOT\DC2\ETXB\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\a\STX\ETX\ENQ\DC2\ETXB\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\a\STX\ETX\SOH\DC2\ETXB\DC2\ESC\n\
    \\f\n\
    \\ENQ\EOT\a\STX\ETX\ETX\DC2\ETXB\RS\US\n\
    \\v\n\
    \\EOT\EOT\a\STX\EOT\DC2\ETXC\STX!\n\
    \\f\n\
    \\ENQ\EOT\a\STX\EOT\EOT\DC2\ETXC\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\a\STX\EOT\ENQ\DC2\ETXC\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\a\STX\EOT\SOH\DC2\ETXC\DC2\FS\n\
    \\f\n\
    \\ENQ\EOT\a\STX\EOT\ETX\DC2\ETXC\US \n\
    \\n\
    \\n\
    \\STX\EOT\b\DC2\EOTE\NULV\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\b\SOH\DC2\ETXE\b\GS\n\
    \\v\n\
    \\EOT\EOT\b\STX\NUL\DC2\ETXF\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\b\STX\NUL\EOT\DC2\ETXF\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\b\STX\NUL\ENQ\DC2\ETXF\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\b\STX\NUL\SOH\DC2\ETXF\DC2\NAK\n\
    \\f\n\
    \\ENQ\EOT\b\STX\NUL\ETX\DC2\ETXF\CAN\EM\n\
    \\v\n\
    \\EOT\EOT\b\STX\SOH\DC2\ETXG\STX\US\n\
    \\f\n\
    \\ENQ\EOT\b\STX\SOH\EOT\DC2\ETXG\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\b\STX\SOH\ENQ\DC2\ETXG\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\b\STX\SOH\SOH\DC2\ETXG\DC2\SUB\n\
    \\f\n\
    \\ENQ\EOT\b\STX\SOH\ETX\DC2\ETXG\GS\RS\n\
    \\v\n\
    \\EOT\EOT\b\STX\STX\DC2\ETXH\STX\FS\n\
    \\f\n\
    \\ENQ\EOT\b\STX\STX\EOT\DC2\ETXH\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\b\STX\STX\ENQ\DC2\ETXH\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\b\STX\STX\SOH\DC2\ETXH\DC2\ETB\n\
    \\f\n\
    \\ENQ\EOT\b\STX\STX\ETX\DC2\ETXH\SUB\ESC\n\
    \\v\n\
    \\EOT\EOT\b\STX\ETX\DC2\ETXI\STX\FS\n\
    \\f\n\
    \\ENQ\EOT\b\STX\ETX\EOT\DC2\ETXI\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\b\STX\ETX\ENQ\DC2\ETXI\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\b\STX\ETX\SOH\DC2\ETXI\DC2\ETB\n\
    \\f\n\
    \\ENQ\EOT\b\STX\ETX\ETX\DC2\ETXI\SUB\ESC\n\
    \\v\n\
    \\EOT\EOT\b\STX\EOT\DC2\ETXJ\STX\FS\n\
    \\f\n\
    \\ENQ\EOT\b\STX\EOT\EOT\DC2\ETXJ\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\b\STX\EOT\ENQ\DC2\ETXJ\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\b\STX\EOT\SOH\DC2\ETXJ\DC2\ETB\n\
    \\f\n\
    \\ENQ\EOT\b\STX\EOT\ETX\DC2\ETXJ\SUB\ESC\n\
    \\v\n\
    \\EOT\EOT\b\STX\ENQ\DC2\ETXK\STX\GS\n\
    \\f\n\
    \\ENQ\EOT\b\STX\ENQ\EOT\DC2\ETXK\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\b\STX\ENQ\ENQ\DC2\ETXK\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\b\STX\ENQ\SOH\DC2\ETXK\DC2\CAN\n\
    \\f\n\
    \\ENQ\EOT\b\STX\ENQ\ETX\DC2\ETXK\ESC\FS\n\
    \\v\n\
    \\EOT\EOT\b\STX\ACK\DC2\ETXL\STX\FS\n\
    \\f\n\
    \\ENQ\EOT\b\STX\ACK\EOT\DC2\ETXL\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\b\STX\ACK\ENQ\DC2\ETXL\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\b\STX\ACK\SOH\DC2\ETXL\DC2\ETB\n\
    \\f\n\
    \\ENQ\EOT\b\STX\ACK\ETX\DC2\ETXL\SUB\ESC\n\
    \\v\n\
    \\EOT\EOT\b\STX\a\DC2\ETXM\STX\FS\n\
    \\f\n\
    \\ENQ\EOT\b\STX\a\EOT\DC2\ETXM\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\b\STX\a\ENQ\DC2\ETXM\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\b\STX\a\SOH\DC2\ETXM\DC2\ETB\n\
    \\f\n\
    \\ENQ\EOT\b\STX\a\ETX\DC2\ETXM\SUB\ESC\n\
    \\v\n\
    \\EOT\EOT\b\STX\b\DC2\ETXN\STX\FS\n\
    \\f\n\
    \\ENQ\EOT\b\STX\b\EOT\DC2\ETXN\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\b\STX\b\ENQ\DC2\ETXN\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\b\STX\b\SOH\DC2\ETXN\DC2\ETB\n\
    \\f\n\
    \\ENQ\EOT\b\STX\b\ETX\DC2\ETXN\SUB\ESC\n\
    \\v\n\
    \\EOT\EOT\b\STX\t\DC2\ETXO\STX\GS\n\
    \\f\n\
    \\ENQ\EOT\b\STX\t\EOT\DC2\ETXO\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\b\STX\t\ENQ\DC2\ETXO\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\b\STX\t\SOH\DC2\ETXO\DC2\ETB\n\
    \\f\n\
    \\ENQ\EOT\b\STX\t\ETX\DC2\ETXO\SUB\FS\n\
    \\v\n\
    \\EOT\EOT\b\STX\n\
    \\DC2\ETXP\STX\GS\n\
    \\f\n\
    \\ENQ\EOT\b\STX\n\
    \\EOT\DC2\ETXP\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\b\STX\n\
    \\ENQ\DC2\ETXP\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\b\STX\n\
    \\SOH\DC2\ETXP\DC2\ETB\n\
    \\f\n\
    \\ENQ\EOT\b\STX\n\
    \\ETX\DC2\ETXP\SUB\FS\n\
    \\v\n\
    \\EOT\EOT\b\STX\v\DC2\ETXQ\STX\GS\n\
    \\f\n\
    \\ENQ\EOT\b\STX\v\EOT\DC2\ETXQ\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\b\STX\v\ENQ\DC2\ETXQ\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\b\STX\v\SOH\DC2\ETXQ\DC2\ETB\n\
    \\f\n\
    \\ENQ\EOT\b\STX\v\ETX\DC2\ETXQ\SUB\FS\n\
    \\v\n\
    \\EOT\EOT\b\STX\f\DC2\ETXR\STX\GS\n\
    \\f\n\
    \\ENQ\EOT\b\STX\f\EOT\DC2\ETXR\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\b\STX\f\ENQ\DC2\ETXR\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\b\STX\f\SOH\DC2\ETXR\DC2\ETB\n\
    \\f\n\
    \\ENQ\EOT\b\STX\f\ETX\DC2\ETXR\SUB\FS\n\
    \\v\n\
    \\EOT\EOT\b\STX\r\DC2\ETXS\STX\GS\n\
    \\f\n\
    \\ENQ\EOT\b\STX\r\EOT\DC2\ETXS\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\b\STX\r\ENQ\DC2\ETXS\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\b\STX\r\SOH\DC2\ETXS\DC2\ETB\n\
    \\f\n\
    \\ENQ\EOT\b\STX\r\ETX\DC2\ETXS\SUB\FS\n\
    \\v\n\
    \\EOT\EOT\b\STX\SO\DC2\ETXT\STX\GS\n\
    \\f\n\
    \\ENQ\EOT\b\STX\SO\EOT\DC2\ETXT\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\b\STX\SO\ENQ\DC2\ETXT\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\b\STX\SO\SOH\DC2\ETXT\DC2\ETB\n\
    \\f\n\
    \\ENQ\EOT\b\STX\SO\ETX\DC2\ETXT\SUB\FS\n\
    \\v\n\
    \\EOT\EOT\b\STX\SI\DC2\ETXU\STX\GS\n\
    \\f\n\
    \\ENQ\EOT\b\STX\SI\EOT\DC2\ETXU\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\b\STX\SI\ENQ\DC2\ETXU\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\b\STX\SI\SOH\DC2\ETXU\DC2\ETB\n\
    \\f\n\
    \\ENQ\EOT\b\STX\SI\ETX\DC2\ETXU\SUB\FS\n\
    \\n\
    \\n\
    \\STX\EOT\t\DC2\EOTW\NULZ\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\t\SOH\DC2\ETXW\b$\n\
    \\v\n\
    \\EOT\EOT\t\STX\NUL\DC2\ETXX\STX\RS\n\
    \\f\n\
    \\ENQ\EOT\t\STX\NUL\EOT\DC2\ETXX\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\t\STX\NUL\ENQ\DC2\ETXX\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\t\STX\NUL\SOH\DC2\ETXX\DC2\EM\n\
    \\f\n\
    \\ENQ\EOT\t\STX\NUL\ETX\DC2\ETXX\FS\GS\n\
    \\v\n\
    \\EOT\EOT\t\STX\SOH\DC2\ETXY\STX\RS\n\
    \\f\n\
    \\ENQ\EOT\t\STX\SOH\EOT\DC2\ETXY\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\t\STX\SOH\ENQ\DC2\ETXY\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\t\STX\SOH\SOH\DC2\ETXY\DC1\EM\n\
    \\f\n\
    \\ENQ\EOT\t\STX\SOH\ETX\DC2\ETXY\FS\GS\n\
    \\n\
    \\n\
    \\STX\EOT\n\
    \\DC2\EOT[\NUL_\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\n\
    \\SOH\DC2\ETX[\b\GS\n\
    \\v\n\
    \\EOT\EOT\n\
    \\STX\NUL\DC2\ETX\\\STX\US\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\NUL\EOT\DC2\ETX\\\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\NUL\ENQ\DC2\ETX\\\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\NUL\SOH\DC2\ETX\\\DC2\SUB\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\NUL\ETX\DC2\ETX\\\GS\RS\n\
    \\v\n\
    \\EOT\EOT\n\
    \\STX\SOH\DC2\ETX]\STX \n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\SOH\EOT\DC2\ETX]\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\SOH\ENQ\DC2\ETX]\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\SOH\SOH\DC2\ETX]\DC2\ESC\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\SOH\ETX\DC2\ETX]\RS\US\n\
    \\v\n\
    \\EOT\EOT\n\
    \\STX\STX\DC2\ETX^\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\STX\EOT\DC2\ETX^\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\STX\ENQ\DC2\ETX^\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\STX\SOH\DC2\ETX^\DC2\NAK\n\
    \\f\n\
    \\ENQ\EOT\n\
    \\STX\STX\ETX\DC2\ETX^\CAN\EM\n\
    \\n\
    \\n\
    \\STX\EOT\v\DC2\EOT`\NULh\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\v\SOH\DC2\ETX`\b$\n\
    \\v\n\
    \\EOT\EOT\v\STX\NUL\DC2\ETXa\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\v\STX\NUL\EOT\DC2\ETXa\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\v\STX\NUL\ENQ\DC2\ETXa\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\v\STX\NUL\SOH\DC2\ETXa\DC2\SYN\n\
    \\f\n\
    \\ENQ\EOT\v\STX\NUL\ETX\DC2\ETXa\EM\SUB\n\
    \\v\n\
    \\EOT\EOT\v\STX\SOH\DC2\ETXb\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\v\STX\SOH\EOT\DC2\ETXb\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\v\STX\SOH\ENQ\DC2\ETXb\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\v\STX\SOH\SOH\DC2\ETXb\DC2\NAK\n\
    \\f\n\
    \\ENQ\EOT\v\STX\SOH\ETX\DC2\ETXb\CAN\EM\n\
    \\v\n\
    \\EOT\EOT\v\STX\STX\DC2\ETXc\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\v\STX\STX\EOT\DC2\ETXc\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\v\STX\STX\ENQ\DC2\ETXc\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\v\STX\STX\SOH\DC2\ETXc\DC2\SYN\n\
    \\f\n\
    \\ENQ\EOT\v\STX\STX\ETX\DC2\ETXc\EM\SUB\n\
    \\v\n\
    \\EOT\EOT\v\STX\ETX\DC2\ETXd\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\v\STX\ETX\EOT\DC2\ETXd\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\v\STX\ETX\ENQ\DC2\ETXd\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\v\STX\ETX\SOH\DC2\ETXd\DC2\NAK\n\
    \\f\n\
    \\ENQ\EOT\v\STX\ETX\ETX\DC2\ETXd\CAN\EM\n\
    \\v\n\
    \\EOT\EOT\v\STX\EOT\DC2\ETXe\STX\EM\n\
    \\f\n\
    \\ENQ\EOT\v\STX\EOT\EOT\DC2\ETXe\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\v\STX\EOT\ENQ\DC2\ETXe\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\v\STX\EOT\SOH\DC2\ETXe\DC2\DC4\n\
    \\f\n\
    \\ENQ\EOT\v\STX\EOT\ETX\DC2\ETXe\ETB\CAN\n\
    \\v\n\
    \\EOT\EOT\v\STX\ENQ\DC2\ETXf\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\v\STX\ENQ\EOT\DC2\ETXf\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\v\STX\ENQ\ENQ\DC2\ETXf\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\v\STX\ENQ\SOH\DC2\ETXf\DC2\NAK\n\
    \\f\n\
    \\ENQ\EOT\v\STX\ENQ\ETX\DC2\ETXf\CAN\EM\n\
    \\v\n\
    \\EOT\EOT\v\STX\ACK\DC2\ETXg\STX\GS\n\
    \\f\n\
    \\ENQ\EOT\v\STX\ACK\EOT\DC2\ETXg\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\v\STX\ACK\ENQ\DC2\ETXg\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\v\STX\ACK\SOH\DC2\ETXg\DC2\CAN\n\
    \\f\n\
    \\ENQ\EOT\v\STX\ACK\ETX\DC2\ETXg\ESC\FS\n\
    \\n\
    \\n\
    \\STX\EOT\f\DC2\EOTi\NULm\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\f\SOH\DC2\ETXi\b\"\n\
    \\v\n\
    \\EOT\EOT\f\STX\NUL\DC2\ETXj\STX\EM\n\
    \\f\n\
    \\ENQ\EOT\f\STX\NUL\EOT\DC2\ETXj\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\f\STX\NUL\ENQ\DC2\ETXj\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\f\STX\NUL\SOH\DC2\ETXj\DC1\DC4\n\
    \\f\n\
    \\ENQ\EOT\f\STX\NUL\ETX\DC2\ETXj\ETB\CAN\n\
    \\v\n\
    \\EOT\EOT\f\STX\SOH\DC2\ETXk\STX#\n\
    \\f\n\
    \\ENQ\EOT\f\STX\SOH\EOT\DC2\ETXk\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\f\STX\SOH\ENQ\DC2\ETXk\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\f\STX\SOH\SOH\DC2\ETXk\DC2\RS\n\
    \\f\n\
    \\ENQ\EOT\f\STX\SOH\ETX\DC2\ETXk!\"\n\
    \\v\n\
    \\EOT\EOT\f\STX\STX\DC2\ETXl\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\f\STX\STX\EOT\DC2\ETXl\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\f\STX\STX\ENQ\DC2\ETXl\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\f\STX\STX\SOH\DC2\ETXl\DC1\SYN\n\
    \\f\n\
    \\ENQ\EOT\f\STX\STX\ETX\DC2\ETXl\EM\SUB\n\
    \\n\
    \\n\
    \\STX\EOT\r\DC2\EOTn\NULp\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\r\SOH\DC2\ETXn\b\"\n\
    \\v\n\
    \\EOT\EOT\r\STX\NUL\DC2\ETXo\STX\RS\n\
    \\f\n\
    \\ENQ\EOT\r\STX\NUL\EOT\DC2\ETXo\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\r\STX\NUL\ENQ\DC2\ETXo\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\r\STX\NUL\SOH\DC2\ETXo\DC2\EM\n\
    \\f\n\
    \\ENQ\EOT\r\STX\NUL\ETX\DC2\ETXo\FS\GS\n\
    \\n\
    \\n\
    \\STX\EOT\SO\DC2\EOTq\NULs\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\SO\SOH\DC2\ETXq\b!\n\
    \\v\n\
    \\EOT\EOT\SO\STX\NUL\DC2\ETXr\STX \n\
    \\f\n\
    \\ENQ\EOT\SO\STX\NUL\EOT\DC2\ETXr\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SO\STX\NUL\ENQ\DC2\ETXr\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\SO\STX\NUL\SOH\DC2\ETXr\DC2\ESC\n\
    \\f\n\
    \\ENQ\EOT\SO\STX\NUL\ETX\DC2\ETXr\RS\US\n\
    \\n\
    \\n\
    \\STX\EOT\SI\DC2\EOTt\NUL}\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\SI\SOH\DC2\ETXt\b%\n\
    \\v\n\
    \\EOT\EOT\SI\STX\NUL\DC2\ETXu\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\SI\STX\NUL\EOT\DC2\ETXu\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SI\STX\NUL\ENQ\DC2\ETXu\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\SI\STX\NUL\SOH\DC2\ETXu\DC2\SYN\n\
    \\f\n\
    \\ENQ\EOT\SI\STX\NUL\ETX\DC2\ETXu\EM\SUB\n\
    \\v\n\
    \\EOT\EOT\SI\STX\SOH\DC2\ETXv\STX \n\
    \\f\n\
    \\ENQ\EOT\SI\STX\SOH\EOT\DC2\ETXv\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SI\STX\SOH\ENQ\DC2\ETXv\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\SI\STX\SOH\SOH\DC2\ETXv\DC2\ESC\n\
    \\f\n\
    \\ENQ\EOT\SI\STX\SOH\ETX\DC2\ETXv\RS\US\n\
    \\v\n\
    \\EOT\EOT\SI\STX\STX\DC2\ETXw\STX%\n\
    \\f\n\
    \\ENQ\EOT\SI\STX\STX\EOT\DC2\ETXw\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SI\STX\STX\ENQ\DC2\ETXw\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\SI\STX\STX\SOH\DC2\ETXw\DC2 \n\
    \\f\n\
    \\ENQ\EOT\SI\STX\STX\ETX\DC2\ETXw#$\n\
    \\v\n\
    \\EOT\EOT\SI\STX\ETX\DC2\ETXx\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\SI\STX\ETX\EOT\DC2\ETXx\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SI\STX\ETX\ENQ\DC2\ETXx\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\SI\STX\ETX\SOH\DC2\ETXx\DC2\NAK\n\
    \\f\n\
    \\ENQ\EOT\SI\STX\ETX\ETX\DC2\ETXx\CAN\EM\n\
    \\v\n\
    \\EOT\EOT\SI\STX\EOT\DC2\ETXy\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\SI\STX\EOT\EOT\DC2\ETXy\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SI\STX\EOT\ENQ\DC2\ETXy\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\SI\STX\EOT\SOH\DC2\ETXy\DC2\NAK\n\
    \\f\n\
    \\ENQ\EOT\SI\STX\EOT\ETX\DC2\ETXy\CAN\EM\n\
    \\v\n\
    \\EOT\EOT\SI\STX\ENQ\DC2\ETXz\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\SI\STX\ENQ\EOT\DC2\ETXz\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SI\STX\ENQ\ENQ\DC2\ETXz\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\SI\STX\ENQ\SOH\DC2\ETXz\DC2\NAK\n\
    \\f\n\
    \\ENQ\EOT\SI\STX\ENQ\ETX\DC2\ETXz\CAN\EM\n\
    \\v\n\
    \\EOT\EOT\SI\STX\ACK\DC2\ETX{\STX\GS\n\
    \\f\n\
    \\ENQ\EOT\SI\STX\ACK\EOT\DC2\ETX{\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SI\STX\ACK\ENQ\DC2\ETX{\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\SI\STX\ACK\SOH\DC2\ETX{\DC2\CAN\n\
    \\f\n\
    \\ENQ\EOT\SI\STX\ACK\ETX\DC2\ETX{\ESC\FS\n\
    \\v\n\
    \\EOT\EOT\SI\STX\a\DC2\ETX|\STX\RS\n\
    \\f\n\
    \\ENQ\EOT\SI\STX\a\EOT\DC2\ETX|\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SI\STX\a\ENQ\DC2\ETX|\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\SI\STX\a\SOH\DC2\ETX|\DC2\EM\n\
    \\f\n\
    \\ENQ\EOT\SI\STX\a\ETX\DC2\ETX|\FS\GS\n\
    \\v\n\
    \\STX\EOT\DLE\DC2\ENQ~\NUL\129\SOH\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\DLE\SOH\DC2\ETX~\b'\n\
    \\v\n\
    \\EOT\EOT\DLE\STX\NUL\DC2\ETX\DEL\STX\RS\n\
    \\f\n\
    \\ENQ\EOT\DLE\STX\NUL\EOT\DC2\ETX\DEL\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\DLE\STX\NUL\ENQ\DC2\ETX\DEL\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\DLE\STX\NUL\SOH\DC2\ETX\DEL\DC2\EM\n\
    \\f\n\
    \\ENQ\EOT\DLE\STX\NUL\ETX\DC2\ETX\DEL\FS\GS\n\
    \\f\n\
    \\EOT\EOT\DLE\STX\SOH\DC2\EOT\128\SOH\STX#\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\SOH\EOT\DC2\EOT\128\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\SOH\ENQ\DC2\EOT\128\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\SOH\SOH\DC2\EOT\128\SOH\DC2\RS\n\
    \\r\n\
    \\ENQ\EOT\DLE\STX\SOH\ETX\DC2\EOT\128\SOH!\"\n\
    \\f\n\
    \\STX\EOT\DC1\DC2\ACK\130\SOH\NUL\133\SOH\SOH\n\
    \\v\n\
    \\ETX\EOT\DC1\SOH\DC2\EOT\130\SOH\b%\n\
    \\f\n\
    \\EOT\EOT\DC1\STX\NUL\DC2\EOT\131\SOH\STX\RS\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\NUL\EOT\DC2\EOT\131\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\NUL\ENQ\DC2\EOT\131\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\NUL\SOH\DC2\EOT\131\SOH\DC2\EM\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\NUL\ETX\DC2\EOT\131\SOH\FS\GS\n\
    \\f\n\
    \\EOT\EOT\DC1\STX\SOH\DC2\EOT\132\SOH\STX!\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\SOH\EOT\DC2\EOT\132\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\SOH\ENQ\DC2\EOT\132\SOH\v\DLE\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\SOH\SOH\DC2\EOT\132\SOH\DC1\FS\n\
    \\r\n\
    \\ENQ\EOT\DC1\STX\SOH\ETX\DC2\EOT\132\SOH\US \n\
    \\f\n\
    \\STX\EOT\DC2\DC2\ACK\134\SOH\NUL\145\SOH\SOH\n\
    \\v\n\
    \\ETX\EOT\DC2\SOH\DC2\EOT\134\SOH\b%\n\
    \\f\n\
    \\EOT\EOT\DC2\STX\NUL\DC2\EOT\135\SOH\STX\ESC\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\NUL\EOT\DC2\EOT\135\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\NUL\ENQ\DC2\EOT\135\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\NUL\SOH\DC2\EOT\135\SOH\DC2\SYN\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\NUL\ETX\DC2\EOT\135\SOH\EM\SUB\n\
    \\f\n\
    \\EOT\EOT\DC2\STX\SOH\DC2\EOT\136\SOH\STX\"\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\SOH\EOT\DC2\EOT\136\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\SOH\ENQ\DC2\EOT\136\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\SOH\SOH\DC2\EOT\136\SOH\DC2\GS\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\SOH\ETX\DC2\EOT\136\SOH !\n\
    \\f\n\
    \\EOT\EOT\DC2\STX\STX\DC2\EOT\137\SOH\STX\EM\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\STX\EOT\DC2\EOT\137\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\STX\ENQ\DC2\EOT\137\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\STX\SOH\DC2\EOT\137\SOH\DC2\DC4\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\STX\ETX\DC2\EOT\137\SOH\ETB\CAN\n\
    \\f\n\
    \\EOT\EOT\DC2\STX\ETX\DC2\EOT\138\SOH\STX\FS\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\ETX\EOT\DC2\EOT\138\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\ETX\ENQ\DC2\EOT\138\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\ETX\SOH\DC2\EOT\138\SOH\DC2\ETB\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\ETX\ETX\DC2\EOT\138\SOH\SUB\ESC\n\
    \\f\n\
    \\EOT\EOT\DC2\STX\EOT\DC2\EOT\139\SOH\STX\US\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\EOT\EOT\DC2\EOT\139\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\EOT\ENQ\DC2\EOT\139\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\EOT\SOH\DC2\EOT\139\SOH\DC2\SUB\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\EOT\ETX\DC2\EOT\139\SOH\GS\RS\n\
    \\f\n\
    \\EOT\EOT\DC2\STX\ENQ\DC2\EOT\140\SOH\STX\US\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\ENQ\EOT\DC2\EOT\140\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\ENQ\ENQ\DC2\EOT\140\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\ENQ\SOH\DC2\EOT\140\SOH\DC2\SUB\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\ENQ\ETX\DC2\EOT\140\SOH\GS\RS\n\
    \\f\n\
    \\EOT\EOT\DC2\STX\ACK\DC2\EOT\141\SOH\STX\US\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\ACK\EOT\DC2\EOT\141\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\ACK\ENQ\DC2\EOT\141\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\ACK\SOH\DC2\EOT\141\SOH\DC2\SUB\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\ACK\ETX\DC2\EOT\141\SOH\GS\RS\n\
    \\f\n\
    \\EOT\EOT\DC2\STX\a\DC2\EOT\142\SOH\STX\RS\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\a\EOT\DC2\EOT\142\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\a\ENQ\DC2\EOT\142\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\a\SOH\DC2\EOT\142\SOH\DC2\EM\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\a\ETX\DC2\EOT\142\SOH\FS\GS\n\
    \\f\n\
    \\EOT\EOT\DC2\STX\b\DC2\EOT\143\SOH\STX \n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\b\EOT\DC2\EOT\143\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\b\ENQ\DC2\EOT\143\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\b\SOH\DC2\EOT\143\SOH\DC2\ESC\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\b\ETX\DC2\EOT\143\SOH\RS\US\n\
    \\f\n\
    \\EOT\EOT\DC2\STX\t\DC2\EOT\144\SOH\STX%\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\t\EOT\DC2\EOT\144\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\t\ENQ\DC2\EOT\144\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\t\SOH\DC2\EOT\144\SOH\DC2\US\n\
    \\r\n\
    \\ENQ\EOT\DC2\STX\t\ETX\DC2\EOT\144\SOH\"$\n\
    \\f\n\
    \\STX\EOT\DC3\DC2\ACK\146\SOH\NUL\150\SOH\SOH\n\
    \\v\n\
    \\ETX\EOT\DC3\SOH\DC2\EOT\146\SOH\b#\n\
    \\f\n\
    \\EOT\EOT\DC3\STX\NUL\DC2\EOT\147\SOH\STX\FS\n\
    \\r\n\
    \\ENQ\EOT\DC3\STX\NUL\EOT\DC2\EOT\147\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DC3\STX\NUL\ENQ\DC2\EOT\147\SOH\v\DLE\n\
    \\r\n\
    \\ENQ\EOT\DC3\STX\NUL\SOH\DC2\EOT\147\SOH\DC1\ETB\n\
    \\r\n\
    \\ENQ\EOT\DC3\STX\NUL\ETX\DC2\EOT\147\SOH\SUB\ESC\n\
    \\f\n\
    \\EOT\EOT\DC3\STX\SOH\DC2\EOT\148\SOH\STX\US\n\
    \\r\n\
    \\ENQ\EOT\DC3\STX\SOH\EOT\DC2\EOT\148\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DC3\STX\SOH\ENQ\DC2\EOT\148\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\DC3\STX\SOH\SOH\DC2\EOT\148\SOH\DC2\SUB\n\
    \\r\n\
    \\ENQ\EOT\DC3\STX\SOH\ETX\DC2\EOT\148\SOH\GS\RS\n\
    \\f\n\
    \\EOT\EOT\DC3\STX\STX\DC2\EOT\149\SOH\STX\US\n\
    \\r\n\
    \\ENQ\EOT\DC3\STX\STX\EOT\DC2\EOT\149\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DC3\STX\STX\ENQ\DC2\EOT\149\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\DC3\STX\STX\SOH\DC2\EOT\149\SOH\DC2\SUB\n\
    \\r\n\
    \\ENQ\EOT\DC3\STX\STX\ETX\DC2\EOT\149\SOH\GS\RS\n\
    \\f\n\
    \\STX\EOT\DC4\DC2\ACK\151\SOH\NUL\153\SOH\SOH\n\
    \\v\n\
    \\ETX\EOT\DC4\SOH\DC2\EOT\151\SOH\b'\n\
    \\f\n\
    \\EOT\EOT\DC4\STX\NUL\DC2\EOT\152\SOH\STX\FS\n\
    \\r\n\
    \\ENQ\EOT\DC4\STX\NUL\EOT\DC2\EOT\152\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\DC4\STX\NUL\ENQ\DC2\EOT\152\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\DC4\STX\NUL\SOH\DC2\EOT\152\SOH\DC2\ETB\n\
    \\r\n\
    \\ENQ\EOT\DC4\STX\NUL\ETX\DC2\EOT\152\SOH\SUB\ESC"