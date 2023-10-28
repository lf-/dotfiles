{- This file was auto-generated from protos/perfetto/trace/ftrace/regulator.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Protos.Perfetto.Trace.Ftrace.Regulator (
        RegulatorDisableCompleteFtraceEvent(),
        RegulatorDisableFtraceEvent(),
        RegulatorEnableCompleteFtraceEvent(),
        RegulatorEnableDelayFtraceEvent(), RegulatorEnableFtraceEvent(),
        RegulatorSetVoltageCompleteFtraceEvent(),
        RegulatorSetVoltageFtraceEvent()
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
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Regulator_Fields.name' @:: Lens' RegulatorDisableCompleteFtraceEvent Data.Text.Text@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Regulator_Fields.maybe'name' @:: Lens' RegulatorDisableCompleteFtraceEvent (Prelude.Maybe Data.Text.Text)@ -}
data RegulatorDisableCompleteFtraceEvent
  = RegulatorDisableCompleteFtraceEvent'_constructor {_RegulatorDisableCompleteFtraceEvent'name :: !(Prelude.Maybe Data.Text.Text),
                                                      _RegulatorDisableCompleteFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show RegulatorDisableCompleteFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField RegulatorDisableCompleteFtraceEvent "name" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RegulatorDisableCompleteFtraceEvent'name
           (\ x__ y__
              -> x__ {_RegulatorDisableCompleteFtraceEvent'name = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField RegulatorDisableCompleteFtraceEvent "maybe'name" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RegulatorDisableCompleteFtraceEvent'name
           (\ x__ y__
              -> x__ {_RegulatorDisableCompleteFtraceEvent'name = y__}))
        Prelude.id
instance Data.ProtoLens.Message RegulatorDisableCompleteFtraceEvent where
  messageName _
    = Data.Text.pack
        "perfetto.protos.RegulatorDisableCompleteFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \#RegulatorDisableCompleteFtraceEvent\DC2\DC2\n\
      \\EOTname\CAN\SOH \SOH(\tR\EOTname"
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
              Data.ProtoLens.FieldDescriptor RegulatorDisableCompleteFtraceEvent
      in
        Data.Map.fromList [(Data.ProtoLens.Tag 1, name__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _RegulatorDisableCompleteFtraceEvent'_unknownFields
        (\ x__ y__
           -> x__ {_RegulatorDisableCompleteFtraceEvent'_unknownFields = y__})
  defMessage
    = RegulatorDisableCompleteFtraceEvent'_constructor
        {_RegulatorDisableCompleteFtraceEvent'name = Prelude.Nothing,
         _RegulatorDisableCompleteFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          RegulatorDisableCompleteFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser RegulatorDisableCompleteFtraceEvent
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
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage)
          "RegulatorDisableCompleteFtraceEvent"
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
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData RegulatorDisableCompleteFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_RegulatorDisableCompleteFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_RegulatorDisableCompleteFtraceEvent'name x__) ())
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Regulator_Fields.name' @:: Lens' RegulatorDisableFtraceEvent Data.Text.Text@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Regulator_Fields.maybe'name' @:: Lens' RegulatorDisableFtraceEvent (Prelude.Maybe Data.Text.Text)@ -}
data RegulatorDisableFtraceEvent
  = RegulatorDisableFtraceEvent'_constructor {_RegulatorDisableFtraceEvent'name :: !(Prelude.Maybe Data.Text.Text),
                                              _RegulatorDisableFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show RegulatorDisableFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField RegulatorDisableFtraceEvent "name" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RegulatorDisableFtraceEvent'name
           (\ x__ y__ -> x__ {_RegulatorDisableFtraceEvent'name = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField RegulatorDisableFtraceEvent "maybe'name" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RegulatorDisableFtraceEvent'name
           (\ x__ y__ -> x__ {_RegulatorDisableFtraceEvent'name = y__}))
        Prelude.id
instance Data.ProtoLens.Message RegulatorDisableFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.RegulatorDisableFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\ESCRegulatorDisableFtraceEvent\DC2\DC2\n\
      \\EOTname\CAN\SOH \SOH(\tR\EOTname"
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
              Data.ProtoLens.FieldDescriptor RegulatorDisableFtraceEvent
      in
        Data.Map.fromList [(Data.ProtoLens.Tag 1, name__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _RegulatorDisableFtraceEvent'_unknownFields
        (\ x__ y__
           -> x__ {_RegulatorDisableFtraceEvent'_unknownFields = y__})
  defMessage
    = RegulatorDisableFtraceEvent'_constructor
        {_RegulatorDisableFtraceEvent'name = Prelude.Nothing,
         _RegulatorDisableFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          RegulatorDisableFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser RegulatorDisableFtraceEvent
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
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "RegulatorDisableFtraceEvent"
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
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData RegulatorDisableFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_RegulatorDisableFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_RegulatorDisableFtraceEvent'name x__) ())
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Regulator_Fields.name' @:: Lens' RegulatorEnableCompleteFtraceEvent Data.Text.Text@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Regulator_Fields.maybe'name' @:: Lens' RegulatorEnableCompleteFtraceEvent (Prelude.Maybe Data.Text.Text)@ -}
data RegulatorEnableCompleteFtraceEvent
  = RegulatorEnableCompleteFtraceEvent'_constructor {_RegulatorEnableCompleteFtraceEvent'name :: !(Prelude.Maybe Data.Text.Text),
                                                     _RegulatorEnableCompleteFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show RegulatorEnableCompleteFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField RegulatorEnableCompleteFtraceEvent "name" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RegulatorEnableCompleteFtraceEvent'name
           (\ x__ y__
              -> x__ {_RegulatorEnableCompleteFtraceEvent'name = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField RegulatorEnableCompleteFtraceEvent "maybe'name" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RegulatorEnableCompleteFtraceEvent'name
           (\ x__ y__
              -> x__ {_RegulatorEnableCompleteFtraceEvent'name = y__}))
        Prelude.id
instance Data.ProtoLens.Message RegulatorEnableCompleteFtraceEvent where
  messageName _
    = Data.Text.pack
        "perfetto.protos.RegulatorEnableCompleteFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\"RegulatorEnableCompleteFtraceEvent\DC2\DC2\n\
      \\EOTname\CAN\SOH \SOH(\tR\EOTname"
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
              Data.ProtoLens.FieldDescriptor RegulatorEnableCompleteFtraceEvent
      in
        Data.Map.fromList [(Data.ProtoLens.Tag 1, name__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _RegulatorEnableCompleteFtraceEvent'_unknownFields
        (\ x__ y__
           -> x__ {_RegulatorEnableCompleteFtraceEvent'_unknownFields = y__})
  defMessage
    = RegulatorEnableCompleteFtraceEvent'_constructor
        {_RegulatorEnableCompleteFtraceEvent'name = Prelude.Nothing,
         _RegulatorEnableCompleteFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          RegulatorEnableCompleteFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser RegulatorEnableCompleteFtraceEvent
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
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage)
          "RegulatorEnableCompleteFtraceEvent"
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
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData RegulatorEnableCompleteFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_RegulatorEnableCompleteFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_RegulatorEnableCompleteFtraceEvent'name x__) ())
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Regulator_Fields.name' @:: Lens' RegulatorEnableDelayFtraceEvent Data.Text.Text@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Regulator_Fields.maybe'name' @:: Lens' RegulatorEnableDelayFtraceEvent (Prelude.Maybe Data.Text.Text)@ -}
data RegulatorEnableDelayFtraceEvent
  = RegulatorEnableDelayFtraceEvent'_constructor {_RegulatorEnableDelayFtraceEvent'name :: !(Prelude.Maybe Data.Text.Text),
                                                  _RegulatorEnableDelayFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show RegulatorEnableDelayFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField RegulatorEnableDelayFtraceEvent "name" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RegulatorEnableDelayFtraceEvent'name
           (\ x__ y__ -> x__ {_RegulatorEnableDelayFtraceEvent'name = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField RegulatorEnableDelayFtraceEvent "maybe'name" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RegulatorEnableDelayFtraceEvent'name
           (\ x__ y__ -> x__ {_RegulatorEnableDelayFtraceEvent'name = y__}))
        Prelude.id
instance Data.ProtoLens.Message RegulatorEnableDelayFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.RegulatorEnableDelayFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\USRegulatorEnableDelayFtraceEvent\DC2\DC2\n\
      \\EOTname\CAN\SOH \SOH(\tR\EOTname"
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
              Data.ProtoLens.FieldDescriptor RegulatorEnableDelayFtraceEvent
      in
        Data.Map.fromList [(Data.ProtoLens.Tag 1, name__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _RegulatorEnableDelayFtraceEvent'_unknownFields
        (\ x__ y__
           -> x__ {_RegulatorEnableDelayFtraceEvent'_unknownFields = y__})
  defMessage
    = RegulatorEnableDelayFtraceEvent'_constructor
        {_RegulatorEnableDelayFtraceEvent'name = Prelude.Nothing,
         _RegulatorEnableDelayFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          RegulatorEnableDelayFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser RegulatorEnableDelayFtraceEvent
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
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage)
          "RegulatorEnableDelayFtraceEvent"
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
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData RegulatorEnableDelayFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_RegulatorEnableDelayFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_RegulatorEnableDelayFtraceEvent'name x__) ())
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Regulator_Fields.name' @:: Lens' RegulatorEnableFtraceEvent Data.Text.Text@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Regulator_Fields.maybe'name' @:: Lens' RegulatorEnableFtraceEvent (Prelude.Maybe Data.Text.Text)@ -}
data RegulatorEnableFtraceEvent
  = RegulatorEnableFtraceEvent'_constructor {_RegulatorEnableFtraceEvent'name :: !(Prelude.Maybe Data.Text.Text),
                                             _RegulatorEnableFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show RegulatorEnableFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField RegulatorEnableFtraceEvent "name" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RegulatorEnableFtraceEvent'name
           (\ x__ y__ -> x__ {_RegulatorEnableFtraceEvent'name = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField RegulatorEnableFtraceEvent "maybe'name" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RegulatorEnableFtraceEvent'name
           (\ x__ y__ -> x__ {_RegulatorEnableFtraceEvent'name = y__}))
        Prelude.id
instance Data.ProtoLens.Message RegulatorEnableFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.RegulatorEnableFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\SUBRegulatorEnableFtraceEvent\DC2\DC2\n\
      \\EOTname\CAN\SOH \SOH(\tR\EOTname"
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
              Data.ProtoLens.FieldDescriptor RegulatorEnableFtraceEvent
      in
        Data.Map.fromList [(Data.ProtoLens.Tag 1, name__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _RegulatorEnableFtraceEvent'_unknownFields
        (\ x__ y__
           -> x__ {_RegulatorEnableFtraceEvent'_unknownFields = y__})
  defMessage
    = RegulatorEnableFtraceEvent'_constructor
        {_RegulatorEnableFtraceEvent'name = Prelude.Nothing,
         _RegulatorEnableFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          RegulatorEnableFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser RegulatorEnableFtraceEvent
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
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "RegulatorEnableFtraceEvent"
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
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData RegulatorEnableFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_RegulatorEnableFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq (_RegulatorEnableFtraceEvent'name x__) ())
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Regulator_Fields.name' @:: Lens' RegulatorSetVoltageCompleteFtraceEvent Data.Text.Text@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Regulator_Fields.maybe'name' @:: Lens' RegulatorSetVoltageCompleteFtraceEvent (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Regulator_Fields.val' @:: Lens' RegulatorSetVoltageCompleteFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Regulator_Fields.maybe'val' @:: Lens' RegulatorSetVoltageCompleteFtraceEvent (Prelude.Maybe Data.Word.Word32)@ -}
data RegulatorSetVoltageCompleteFtraceEvent
  = RegulatorSetVoltageCompleteFtraceEvent'_constructor {_RegulatorSetVoltageCompleteFtraceEvent'name :: !(Prelude.Maybe Data.Text.Text),
                                                         _RegulatorSetVoltageCompleteFtraceEvent'val :: !(Prelude.Maybe Data.Word.Word32),
                                                         _RegulatorSetVoltageCompleteFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show RegulatorSetVoltageCompleteFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField RegulatorSetVoltageCompleteFtraceEvent "name" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RegulatorSetVoltageCompleteFtraceEvent'name
           (\ x__ y__
              -> x__ {_RegulatorSetVoltageCompleteFtraceEvent'name = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField RegulatorSetVoltageCompleteFtraceEvent "maybe'name" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RegulatorSetVoltageCompleteFtraceEvent'name
           (\ x__ y__
              -> x__ {_RegulatorSetVoltageCompleteFtraceEvent'name = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RegulatorSetVoltageCompleteFtraceEvent "val" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RegulatorSetVoltageCompleteFtraceEvent'val
           (\ x__ y__
              -> x__ {_RegulatorSetVoltageCompleteFtraceEvent'val = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField RegulatorSetVoltageCompleteFtraceEvent "maybe'val" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RegulatorSetVoltageCompleteFtraceEvent'val
           (\ x__ y__
              -> x__ {_RegulatorSetVoltageCompleteFtraceEvent'val = y__}))
        Prelude.id
instance Data.ProtoLens.Message RegulatorSetVoltageCompleteFtraceEvent where
  messageName _
    = Data.Text.pack
        "perfetto.protos.RegulatorSetVoltageCompleteFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \&RegulatorSetVoltageCompleteFtraceEvent\DC2\DC2\n\
      \\EOTname\CAN\SOH \SOH(\tR\EOTname\DC2\DLE\n\
      \\ETXval\CAN\STX \SOH(\rR\ETXval"
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
              Data.ProtoLens.FieldDescriptor RegulatorSetVoltageCompleteFtraceEvent
        val__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "val"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'val")) ::
              Data.ProtoLens.FieldDescriptor RegulatorSetVoltageCompleteFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, name__field_descriptor),
           (Data.ProtoLens.Tag 2, val__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _RegulatorSetVoltageCompleteFtraceEvent'_unknownFields
        (\ x__ y__
           -> x__
                {_RegulatorSetVoltageCompleteFtraceEvent'_unknownFields = y__})
  defMessage
    = RegulatorSetVoltageCompleteFtraceEvent'_constructor
        {_RegulatorSetVoltageCompleteFtraceEvent'name = Prelude.Nothing,
         _RegulatorSetVoltageCompleteFtraceEvent'val = Prelude.Nothing,
         _RegulatorSetVoltageCompleteFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          RegulatorSetVoltageCompleteFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser RegulatorSetVoltageCompleteFtraceEvent
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
                                       "val"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"val") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage)
          "RegulatorSetVoltageCompleteFtraceEvent"
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
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'val") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          ((Prelude..)
                             Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData RegulatorSetVoltageCompleteFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_RegulatorSetVoltageCompleteFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_RegulatorSetVoltageCompleteFtraceEvent'name x__)
                (Control.DeepSeq.deepseq
                   (_RegulatorSetVoltageCompleteFtraceEvent'val x__) ()))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Regulator_Fields.name' @:: Lens' RegulatorSetVoltageFtraceEvent Data.Text.Text@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Regulator_Fields.maybe'name' @:: Lens' RegulatorSetVoltageFtraceEvent (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Regulator_Fields.min' @:: Lens' RegulatorSetVoltageFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Regulator_Fields.maybe'min' @:: Lens' RegulatorSetVoltageFtraceEvent (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Regulator_Fields.max' @:: Lens' RegulatorSetVoltageFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Regulator_Fields.maybe'max' @:: Lens' RegulatorSetVoltageFtraceEvent (Prelude.Maybe Data.Int.Int32)@ -}
data RegulatorSetVoltageFtraceEvent
  = RegulatorSetVoltageFtraceEvent'_constructor {_RegulatorSetVoltageFtraceEvent'name :: !(Prelude.Maybe Data.Text.Text),
                                                 _RegulatorSetVoltageFtraceEvent'min :: !(Prelude.Maybe Data.Int.Int32),
                                                 _RegulatorSetVoltageFtraceEvent'max :: !(Prelude.Maybe Data.Int.Int32),
                                                 _RegulatorSetVoltageFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show RegulatorSetVoltageFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField RegulatorSetVoltageFtraceEvent "name" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RegulatorSetVoltageFtraceEvent'name
           (\ x__ y__ -> x__ {_RegulatorSetVoltageFtraceEvent'name = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField RegulatorSetVoltageFtraceEvent "maybe'name" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RegulatorSetVoltageFtraceEvent'name
           (\ x__ y__ -> x__ {_RegulatorSetVoltageFtraceEvent'name = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RegulatorSetVoltageFtraceEvent "min" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RegulatorSetVoltageFtraceEvent'min
           (\ x__ y__ -> x__ {_RegulatorSetVoltageFtraceEvent'min = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField RegulatorSetVoltageFtraceEvent "maybe'min" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RegulatorSetVoltageFtraceEvent'min
           (\ x__ y__ -> x__ {_RegulatorSetVoltageFtraceEvent'min = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RegulatorSetVoltageFtraceEvent "max" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RegulatorSetVoltageFtraceEvent'max
           (\ x__ y__ -> x__ {_RegulatorSetVoltageFtraceEvent'max = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField RegulatorSetVoltageFtraceEvent "maybe'max" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RegulatorSetVoltageFtraceEvent'max
           (\ x__ y__ -> x__ {_RegulatorSetVoltageFtraceEvent'max = y__}))
        Prelude.id
instance Data.ProtoLens.Message RegulatorSetVoltageFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.RegulatorSetVoltageFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\RSRegulatorSetVoltageFtraceEvent\DC2\DC2\n\
      \\EOTname\CAN\SOH \SOH(\tR\EOTname\DC2\DLE\n\
      \\ETXmin\CAN\STX \SOH(\ENQR\ETXmin\DC2\DLE\n\
      \\ETXmax\CAN\ETX \SOH(\ENQR\ETXmax"
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
              Data.ProtoLens.FieldDescriptor RegulatorSetVoltageFtraceEvent
        min__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "min"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'min")) ::
              Data.ProtoLens.FieldDescriptor RegulatorSetVoltageFtraceEvent
        max__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "max"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'max")) ::
              Data.ProtoLens.FieldDescriptor RegulatorSetVoltageFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, name__field_descriptor),
           (Data.ProtoLens.Tag 2, min__field_descriptor),
           (Data.ProtoLens.Tag 3, max__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _RegulatorSetVoltageFtraceEvent'_unknownFields
        (\ x__ y__
           -> x__ {_RegulatorSetVoltageFtraceEvent'_unknownFields = y__})
  defMessage
    = RegulatorSetVoltageFtraceEvent'_constructor
        {_RegulatorSetVoltageFtraceEvent'name = Prelude.Nothing,
         _RegulatorSetVoltageFtraceEvent'min = Prelude.Nothing,
         _RegulatorSetVoltageFtraceEvent'max = Prelude.Nothing,
         _RegulatorSetVoltageFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          RegulatorSetVoltageFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser RegulatorSetVoltageFtraceEvent
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
                                       "min"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"min") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "max"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"max") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage)
          "RegulatorSetVoltageFtraceEvent"
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
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'min") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          ((Prelude..)
                             Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'max") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             ((Prelude..)
                                Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData RegulatorSetVoltageFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_RegulatorSetVoltageFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_RegulatorSetVoltageFtraceEvent'name x__)
                (Control.DeepSeq.deepseq
                   (_RegulatorSetVoltageFtraceEvent'min x__)
                   (Control.DeepSeq.deepseq
                      (_RegulatorSetVoltageFtraceEvent'max x__) ())))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \,protos/perfetto/trace/ftrace/regulator.proto\DC2\SIperfetto.protos\"1\n\
    \\ESCRegulatorDisableFtraceEvent\DC2\DC2\n\
    \\EOTname\CAN\SOH \SOH(\tR\EOTname\"9\n\
    \#RegulatorDisableCompleteFtraceEvent\DC2\DC2\n\
    \\EOTname\CAN\SOH \SOH(\tR\EOTname\"0\n\
    \\SUBRegulatorEnableFtraceEvent\DC2\DC2\n\
    \\EOTname\CAN\SOH \SOH(\tR\EOTname\"8\n\
    \\"RegulatorEnableCompleteFtraceEvent\DC2\DC2\n\
    \\EOTname\CAN\SOH \SOH(\tR\EOTname\"5\n\
    \\USRegulatorEnableDelayFtraceEvent\DC2\DC2\n\
    \\EOTname\CAN\SOH \SOH(\tR\EOTname\"X\n\
    \\RSRegulatorSetVoltageFtraceEvent\DC2\DC2\n\
    \\EOTname\CAN\SOH \SOH(\tR\EOTname\DC2\DLE\n\
    \\ETXmin\CAN\STX \SOH(\ENQR\ETXmin\DC2\DLE\n\
    \\ETXmax\CAN\ETX \SOH(\ENQR\ETXmax\"N\n\
    \&RegulatorSetVoltageCompleteFtraceEvent\DC2\DC2\n\
    \\EOTname\CAN\SOH \SOH(\tR\EOTname\DC2\DLE\n\
    \\ETXval\CAN\STX \SOH(\rR\ETXvalJ\207\a\n\
    \\ACK\DC2\EOT\EOT\NUL\RS\SOH\n\
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
    \\ETX\EOT\NUL\SOH\DC2\ETX\a\b#\n\
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
    \\n\
    \\n\
    \\STX\EOT\SOH\DC2\EOT\n\
    \\NUL\f\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX\n\
    \\b+\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETX\v\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\EOT\DC2\ETX\v\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ENQ\DC2\ETX\v\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETX\v\DC2\SYN\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETX\v\EM\SUB\n\
    \\n\
    \\n\
    \\STX\EOT\STX\DC2\EOT\r\NUL\SI\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\SOH\DC2\ETX\r\b\"\n\
    \\v\n\
    \\EOT\EOT\STX\STX\NUL\DC2\ETX\SO\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\EOT\DC2\ETX\SO\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ENQ\DC2\ETX\SO\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\SOH\DC2\ETX\SO\DC2\SYN\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ETX\DC2\ETX\SO\EM\SUB\n\
    \\n\
    \\n\
    \\STX\EOT\ETX\DC2\EOT\DLE\NUL\DC2\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\ETX\SOH\DC2\ETX\DLE\b*\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\NUL\DC2\ETX\DC1\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\EOT\DC2\ETX\DC1\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ENQ\DC2\ETX\DC1\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\SOH\DC2\ETX\DC1\DC2\SYN\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ETX\DC2\ETX\DC1\EM\SUB\n\
    \\n\
    \\n\
    \\STX\EOT\EOT\DC2\EOT\DC3\NUL\NAK\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\EOT\SOH\DC2\ETX\DC3\b'\n\
    \\v\n\
    \\EOT\EOT\EOT\STX\NUL\DC2\ETX\DC4\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\EOT\DC2\ETX\DC4\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\ENQ\DC2\ETX\DC4\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\SOH\DC2\ETX\DC4\DC2\SYN\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\ETX\DC2\ETX\DC4\EM\SUB\n\
    \\n\
    \\n\
    \\STX\EOT\ENQ\DC2\EOT\SYN\NUL\SUB\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\ENQ\SOH\DC2\ETX\SYN\b&\n\
    \\v\n\
    \\EOT\EOT\ENQ\STX\NUL\DC2\ETX\ETB\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\EOT\DC2\ETX\ETB\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\ENQ\DC2\ETX\ETB\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\SOH\DC2\ETX\ETB\DC2\SYN\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\ETX\DC2\ETX\ETB\EM\SUB\n\
    \\v\n\
    \\EOT\EOT\ENQ\STX\SOH\DC2\ETX\CAN\STX\EM\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\SOH\EOT\DC2\ETX\CAN\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\SOH\ENQ\DC2\ETX\CAN\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\SOH\SOH\DC2\ETX\CAN\DC1\DC4\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\SOH\ETX\DC2\ETX\CAN\ETB\CAN\n\
    \\v\n\
    \\EOT\EOT\ENQ\STX\STX\DC2\ETX\EM\STX\EM\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\STX\EOT\DC2\ETX\EM\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\STX\ENQ\DC2\ETX\EM\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\STX\SOH\DC2\ETX\EM\DC1\DC4\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\STX\ETX\DC2\ETX\EM\ETB\CAN\n\
    \\n\
    \\n\
    \\STX\EOT\ACK\DC2\EOT\ESC\NUL\RS\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\ACK\SOH\DC2\ETX\ESC\b.\n\
    \\v\n\
    \\EOT\EOT\ACK\STX\NUL\DC2\ETX\FS\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\EOT\DC2\ETX\FS\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\ENQ\DC2\ETX\FS\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\SOH\DC2\ETX\FS\DC2\SYN\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\ETX\DC2\ETX\FS\EM\SUB\n\
    \\v\n\
    \\EOT\EOT\ACK\STX\SOH\DC2\ETX\GS\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\SOH\EOT\DC2\ETX\GS\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\SOH\ENQ\DC2\ETX\GS\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\SOH\SOH\DC2\ETX\GS\DC2\NAK\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\SOH\ETX\DC2\ETX\GS\CAN\EM"