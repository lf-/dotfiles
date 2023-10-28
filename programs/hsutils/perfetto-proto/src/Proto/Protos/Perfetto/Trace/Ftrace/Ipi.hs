{- This file was auto-generated from protos/perfetto/trace/ftrace/ipi.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Protos.Perfetto.Trace.Ftrace.Ipi (
        IpiEntryFtraceEvent(), IpiExitFtraceEvent(), IpiRaiseFtraceEvent()
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
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Ipi_Fields.reason' @:: Lens' IpiEntryFtraceEvent Data.Text.Text@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Ipi_Fields.maybe'reason' @:: Lens' IpiEntryFtraceEvent (Prelude.Maybe Data.Text.Text)@ -}
data IpiEntryFtraceEvent
  = IpiEntryFtraceEvent'_constructor {_IpiEntryFtraceEvent'reason :: !(Prelude.Maybe Data.Text.Text),
                                      _IpiEntryFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show IpiEntryFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField IpiEntryFtraceEvent "reason" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _IpiEntryFtraceEvent'reason
           (\ x__ y__ -> x__ {_IpiEntryFtraceEvent'reason = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField IpiEntryFtraceEvent "maybe'reason" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _IpiEntryFtraceEvent'reason
           (\ x__ y__ -> x__ {_IpiEntryFtraceEvent'reason = y__}))
        Prelude.id
instance Data.ProtoLens.Message IpiEntryFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.IpiEntryFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\DC3IpiEntryFtraceEvent\DC2\SYN\n\
      \\ACKreason\CAN\SOH \SOH(\tR\ACKreason"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        reason__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "reason"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'reason")) ::
              Data.ProtoLens.FieldDescriptor IpiEntryFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, reason__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _IpiEntryFtraceEvent'_unknownFields
        (\ x__ y__ -> x__ {_IpiEntryFtraceEvent'_unknownFields = y__})
  defMessage
    = IpiEntryFtraceEvent'_constructor
        {_IpiEntryFtraceEvent'reason = Prelude.Nothing,
         _IpiEntryFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          IpiEntryFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser IpiEntryFtraceEvent
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
                                       "reason"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"reason") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "IpiEntryFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'reason") _x
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
instance Control.DeepSeq.NFData IpiEntryFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_IpiEntryFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq (_IpiEntryFtraceEvent'reason x__) ())
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Ipi_Fields.reason' @:: Lens' IpiExitFtraceEvent Data.Text.Text@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Ipi_Fields.maybe'reason' @:: Lens' IpiExitFtraceEvent (Prelude.Maybe Data.Text.Text)@ -}
data IpiExitFtraceEvent
  = IpiExitFtraceEvent'_constructor {_IpiExitFtraceEvent'reason :: !(Prelude.Maybe Data.Text.Text),
                                     _IpiExitFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show IpiExitFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField IpiExitFtraceEvent "reason" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _IpiExitFtraceEvent'reason
           (\ x__ y__ -> x__ {_IpiExitFtraceEvent'reason = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField IpiExitFtraceEvent "maybe'reason" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _IpiExitFtraceEvent'reason
           (\ x__ y__ -> x__ {_IpiExitFtraceEvent'reason = y__}))
        Prelude.id
instance Data.ProtoLens.Message IpiExitFtraceEvent where
  messageName _ = Data.Text.pack "perfetto.protos.IpiExitFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\DC2IpiExitFtraceEvent\DC2\SYN\n\
      \\ACKreason\CAN\SOH \SOH(\tR\ACKreason"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        reason__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "reason"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'reason")) ::
              Data.ProtoLens.FieldDescriptor IpiExitFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, reason__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _IpiExitFtraceEvent'_unknownFields
        (\ x__ y__ -> x__ {_IpiExitFtraceEvent'_unknownFields = y__})
  defMessage
    = IpiExitFtraceEvent'_constructor
        {_IpiExitFtraceEvent'reason = Prelude.Nothing,
         _IpiExitFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          IpiExitFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser IpiExitFtraceEvent
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
                                       "reason"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"reason") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "IpiExitFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'reason") _x
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
instance Control.DeepSeq.NFData IpiExitFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_IpiExitFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq (_IpiExitFtraceEvent'reason x__) ())
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Ipi_Fields.targetCpus' @:: Lens' IpiRaiseFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Ipi_Fields.maybe'targetCpus' @:: Lens' IpiRaiseFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Ipi_Fields.reason' @:: Lens' IpiRaiseFtraceEvent Data.Text.Text@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Ipi_Fields.maybe'reason' @:: Lens' IpiRaiseFtraceEvent (Prelude.Maybe Data.Text.Text)@ -}
data IpiRaiseFtraceEvent
  = IpiRaiseFtraceEvent'_constructor {_IpiRaiseFtraceEvent'targetCpus :: !(Prelude.Maybe Data.Word.Word32),
                                      _IpiRaiseFtraceEvent'reason :: !(Prelude.Maybe Data.Text.Text),
                                      _IpiRaiseFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show IpiRaiseFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField IpiRaiseFtraceEvent "targetCpus" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _IpiRaiseFtraceEvent'targetCpus
           (\ x__ y__ -> x__ {_IpiRaiseFtraceEvent'targetCpus = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField IpiRaiseFtraceEvent "maybe'targetCpus" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _IpiRaiseFtraceEvent'targetCpus
           (\ x__ y__ -> x__ {_IpiRaiseFtraceEvent'targetCpus = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField IpiRaiseFtraceEvent "reason" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _IpiRaiseFtraceEvent'reason
           (\ x__ y__ -> x__ {_IpiRaiseFtraceEvent'reason = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField IpiRaiseFtraceEvent "maybe'reason" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _IpiRaiseFtraceEvent'reason
           (\ x__ y__ -> x__ {_IpiRaiseFtraceEvent'reason = y__}))
        Prelude.id
instance Data.ProtoLens.Message IpiRaiseFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.IpiRaiseFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\DC3IpiRaiseFtraceEvent\DC2\US\n\
      \\vtarget_cpus\CAN\SOH \SOH(\rR\n\
      \targetCpus\DC2\SYN\n\
      \\ACKreason\CAN\STX \SOH(\tR\ACKreason"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        targetCpus__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "target_cpus"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'targetCpus")) ::
              Data.ProtoLens.FieldDescriptor IpiRaiseFtraceEvent
        reason__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "reason"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'reason")) ::
              Data.ProtoLens.FieldDescriptor IpiRaiseFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, targetCpus__field_descriptor),
           (Data.ProtoLens.Tag 2, reason__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _IpiRaiseFtraceEvent'_unknownFields
        (\ x__ y__ -> x__ {_IpiRaiseFtraceEvent'_unknownFields = y__})
  defMessage
    = IpiRaiseFtraceEvent'_constructor
        {_IpiRaiseFtraceEvent'targetCpus = Prelude.Nothing,
         _IpiRaiseFtraceEvent'reason = Prelude.Nothing,
         _IpiRaiseFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          IpiRaiseFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser IpiRaiseFtraceEvent
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
                                       "target_cpus"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"targetCpus") y x)
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
                                       "reason"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"reason") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "IpiRaiseFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'targetCpus") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       ((Prelude..)
                          Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'reason") _x
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
instance Control.DeepSeq.NFData IpiRaiseFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_IpiRaiseFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_IpiRaiseFtraceEvent'targetCpus x__)
                (Control.DeepSeq.deepseq (_IpiRaiseFtraceEvent'reason x__) ()))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \&protos/perfetto/trace/ftrace/ipi.proto\DC2\SIperfetto.protos\"-\n\
    \\DC3IpiEntryFtraceEvent\DC2\SYN\n\
    \\ACKreason\CAN\SOH \SOH(\tR\ACKreason\",\n\
    \\DC2IpiExitFtraceEvent\DC2\SYN\n\
    \\ACKreason\CAN\SOH \SOH(\tR\ACKreason\"N\n\
    \\DC3IpiRaiseFtraceEvent\DC2\US\n\
    \\vtarget_cpus\CAN\SOH \SOH(\rR\n\
    \targetCpus\DC2\SYN\n\
    \\ACKreason\CAN\STX \SOH(\tR\ACKreasonJ\209\ETX\n\
    \\ACK\DC2\EOT\EOT\NUL\DLE\SOH\n\
    \a\n\
    \\SOH\f\DC2\ETX\EOT\NUL\DC22W Autogenerated by:\n\
    \ ../../src/tools/ftrace_proto_gen/ftrace_proto_gen.cc\n\
    \ Do not edit.\n\
    \\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\ENQ\NUL\CAN\n\
    \\n\
    \\n\
    \\STX\EOT\NUL\DC2\EOT\a\NUL\t\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\a\b\ESC\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\b\STX\GS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\EOT\DC2\ETX\b\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX\b\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\b\DC2\CAN\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\b\ESC\FS\n\
    \\n\
    \\n\
    \\STX\EOT\SOH\DC2\EOT\n\
    \\NUL\f\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX\n\
    \\b\SUB\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETX\v\STX\GS\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\EOT\DC2\ETX\v\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ENQ\DC2\ETX\v\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETX\v\DC2\CAN\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETX\v\ESC\FS\n\
    \\n\
    \\n\
    \\STX\EOT\STX\DC2\EOT\r\NUL\DLE\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\SOH\DC2\ETX\r\b\ESC\n\
    \\v\n\
    \\EOT\EOT\STX\STX\NUL\DC2\ETX\SO\STX\"\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\EOT\DC2\ETX\SO\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ENQ\DC2\ETX\SO\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\SOH\DC2\ETX\SO\DC2\GS\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ETX\DC2\ETX\SO !\n\
    \\v\n\
    \\EOT\EOT\STX\STX\SOH\DC2\ETX\SI\STX\GS\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\EOT\DC2\ETX\SI\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ENQ\DC2\ETX\SI\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\SOH\DC2\ETX\SI\DC2\CAN\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ETX\DC2\ETX\SI\ESC\FS"