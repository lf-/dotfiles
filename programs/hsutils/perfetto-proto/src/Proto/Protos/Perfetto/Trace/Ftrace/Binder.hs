{- This file was auto-generated from protos/perfetto/trace/ftrace/binder.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Protos.Perfetto.Trace.Ftrace.Binder (
        BinderCommandFtraceEvent(), BinderLockFtraceEvent(),
        BinderLockedFtraceEvent(), BinderReturnFtraceEvent(),
        BinderSetPriorityFtraceEvent(),
        BinderTransactionAllocBufFtraceEvent(),
        BinderTransactionFtraceEvent(),
        BinderTransactionReceivedFtraceEvent(), BinderUnlockFtraceEvent()
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
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Binder_Fields.cmd' @:: Lens' BinderCommandFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Binder_Fields.maybe'cmd' @:: Lens' BinderCommandFtraceEvent (Prelude.Maybe Data.Word.Word32)@ -}
data BinderCommandFtraceEvent
  = BinderCommandFtraceEvent'_constructor {_BinderCommandFtraceEvent'cmd :: !(Prelude.Maybe Data.Word.Word32),
                                           _BinderCommandFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show BinderCommandFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField BinderCommandFtraceEvent "cmd" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BinderCommandFtraceEvent'cmd
           (\ x__ y__ -> x__ {_BinderCommandFtraceEvent'cmd = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField BinderCommandFtraceEvent "maybe'cmd" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BinderCommandFtraceEvent'cmd
           (\ x__ y__ -> x__ {_BinderCommandFtraceEvent'cmd = y__}))
        Prelude.id
instance Data.ProtoLens.Message BinderCommandFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.BinderCommandFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\CANBinderCommandFtraceEvent\DC2\DLE\n\
      \\ETXcmd\CAN\SOH \SOH(\rR\ETXcmd"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        cmd__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "cmd"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'cmd")) ::
              Data.ProtoLens.FieldDescriptor BinderCommandFtraceEvent
      in
        Data.Map.fromList [(Data.ProtoLens.Tag 1, cmd__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _BinderCommandFtraceEvent'_unknownFields
        (\ x__ y__ -> x__ {_BinderCommandFtraceEvent'_unknownFields = y__})
  defMessage
    = BinderCommandFtraceEvent'_constructor
        {_BinderCommandFtraceEvent'cmd = Prelude.Nothing,
         _BinderCommandFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          BinderCommandFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser BinderCommandFtraceEvent
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
                                       "cmd"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"cmd") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "BinderCommandFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'cmd") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       ((Prelude..)
                          Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData BinderCommandFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_BinderCommandFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq (_BinderCommandFtraceEvent'cmd x__) ())
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Binder_Fields.tag' @:: Lens' BinderLockFtraceEvent Data.Text.Text@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Binder_Fields.maybe'tag' @:: Lens' BinderLockFtraceEvent (Prelude.Maybe Data.Text.Text)@ -}
data BinderLockFtraceEvent
  = BinderLockFtraceEvent'_constructor {_BinderLockFtraceEvent'tag :: !(Prelude.Maybe Data.Text.Text),
                                        _BinderLockFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show BinderLockFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField BinderLockFtraceEvent "tag" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BinderLockFtraceEvent'tag
           (\ x__ y__ -> x__ {_BinderLockFtraceEvent'tag = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField BinderLockFtraceEvent "maybe'tag" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BinderLockFtraceEvent'tag
           (\ x__ y__ -> x__ {_BinderLockFtraceEvent'tag = y__}))
        Prelude.id
instance Data.ProtoLens.Message BinderLockFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.BinderLockFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\NAKBinderLockFtraceEvent\DC2\DLE\n\
      \\ETXtag\CAN\SOH \SOH(\tR\ETXtag"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        tag__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "tag"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'tag")) ::
              Data.ProtoLens.FieldDescriptor BinderLockFtraceEvent
      in
        Data.Map.fromList [(Data.ProtoLens.Tag 1, tag__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _BinderLockFtraceEvent'_unknownFields
        (\ x__ y__ -> x__ {_BinderLockFtraceEvent'_unknownFields = y__})
  defMessage
    = BinderLockFtraceEvent'_constructor
        {_BinderLockFtraceEvent'tag = Prelude.Nothing,
         _BinderLockFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          BinderLockFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser BinderLockFtraceEvent
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
                                       "tag"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"tag") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "BinderLockFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'tag") _x
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
instance Control.DeepSeq.NFData BinderLockFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_BinderLockFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq (_BinderLockFtraceEvent'tag x__) ())
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Binder_Fields.tag' @:: Lens' BinderLockedFtraceEvent Data.Text.Text@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Binder_Fields.maybe'tag' @:: Lens' BinderLockedFtraceEvent (Prelude.Maybe Data.Text.Text)@ -}
data BinderLockedFtraceEvent
  = BinderLockedFtraceEvent'_constructor {_BinderLockedFtraceEvent'tag :: !(Prelude.Maybe Data.Text.Text),
                                          _BinderLockedFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show BinderLockedFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField BinderLockedFtraceEvent "tag" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BinderLockedFtraceEvent'tag
           (\ x__ y__ -> x__ {_BinderLockedFtraceEvent'tag = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField BinderLockedFtraceEvent "maybe'tag" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BinderLockedFtraceEvent'tag
           (\ x__ y__ -> x__ {_BinderLockedFtraceEvent'tag = y__}))
        Prelude.id
instance Data.ProtoLens.Message BinderLockedFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.BinderLockedFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\ETBBinderLockedFtraceEvent\DC2\DLE\n\
      \\ETXtag\CAN\SOH \SOH(\tR\ETXtag"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        tag__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "tag"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'tag")) ::
              Data.ProtoLens.FieldDescriptor BinderLockedFtraceEvent
      in
        Data.Map.fromList [(Data.ProtoLens.Tag 1, tag__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _BinderLockedFtraceEvent'_unknownFields
        (\ x__ y__ -> x__ {_BinderLockedFtraceEvent'_unknownFields = y__})
  defMessage
    = BinderLockedFtraceEvent'_constructor
        {_BinderLockedFtraceEvent'tag = Prelude.Nothing,
         _BinderLockedFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          BinderLockedFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser BinderLockedFtraceEvent
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
                                       "tag"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"tag") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "BinderLockedFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'tag") _x
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
instance Control.DeepSeq.NFData BinderLockedFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_BinderLockedFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq (_BinderLockedFtraceEvent'tag x__) ())
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Binder_Fields.cmd' @:: Lens' BinderReturnFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Binder_Fields.maybe'cmd' @:: Lens' BinderReturnFtraceEvent (Prelude.Maybe Data.Word.Word32)@ -}
data BinderReturnFtraceEvent
  = BinderReturnFtraceEvent'_constructor {_BinderReturnFtraceEvent'cmd :: !(Prelude.Maybe Data.Word.Word32),
                                          _BinderReturnFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show BinderReturnFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField BinderReturnFtraceEvent "cmd" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BinderReturnFtraceEvent'cmd
           (\ x__ y__ -> x__ {_BinderReturnFtraceEvent'cmd = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField BinderReturnFtraceEvent "maybe'cmd" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BinderReturnFtraceEvent'cmd
           (\ x__ y__ -> x__ {_BinderReturnFtraceEvent'cmd = y__}))
        Prelude.id
instance Data.ProtoLens.Message BinderReturnFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.BinderReturnFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\ETBBinderReturnFtraceEvent\DC2\DLE\n\
      \\ETXcmd\CAN\SOH \SOH(\rR\ETXcmd"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        cmd__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "cmd"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'cmd")) ::
              Data.ProtoLens.FieldDescriptor BinderReturnFtraceEvent
      in
        Data.Map.fromList [(Data.ProtoLens.Tag 1, cmd__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _BinderReturnFtraceEvent'_unknownFields
        (\ x__ y__ -> x__ {_BinderReturnFtraceEvent'_unknownFields = y__})
  defMessage
    = BinderReturnFtraceEvent'_constructor
        {_BinderReturnFtraceEvent'cmd = Prelude.Nothing,
         _BinderReturnFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          BinderReturnFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser BinderReturnFtraceEvent
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
                                       "cmd"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"cmd") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "BinderReturnFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'cmd") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       ((Prelude..)
                          Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData BinderReturnFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_BinderReturnFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq (_BinderReturnFtraceEvent'cmd x__) ())
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Binder_Fields.proc'' @:: Lens' BinderSetPriorityFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Binder_Fields.maybe'proc'' @:: Lens' BinderSetPriorityFtraceEvent (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Binder_Fields.thread' @:: Lens' BinderSetPriorityFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Binder_Fields.maybe'thread' @:: Lens' BinderSetPriorityFtraceEvent (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Binder_Fields.oldPrio' @:: Lens' BinderSetPriorityFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Binder_Fields.maybe'oldPrio' @:: Lens' BinderSetPriorityFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Binder_Fields.newPrio' @:: Lens' BinderSetPriorityFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Binder_Fields.maybe'newPrio' @:: Lens' BinderSetPriorityFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Binder_Fields.desiredPrio' @:: Lens' BinderSetPriorityFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Binder_Fields.maybe'desiredPrio' @:: Lens' BinderSetPriorityFtraceEvent (Prelude.Maybe Data.Word.Word32)@ -}
data BinderSetPriorityFtraceEvent
  = BinderSetPriorityFtraceEvent'_constructor {_BinderSetPriorityFtraceEvent'proc' :: !(Prelude.Maybe Data.Int.Int32),
                                               _BinderSetPriorityFtraceEvent'thread :: !(Prelude.Maybe Data.Int.Int32),
                                               _BinderSetPriorityFtraceEvent'oldPrio :: !(Prelude.Maybe Data.Word.Word32),
                                               _BinderSetPriorityFtraceEvent'newPrio :: !(Prelude.Maybe Data.Word.Word32),
                                               _BinderSetPriorityFtraceEvent'desiredPrio :: !(Prelude.Maybe Data.Word.Word32),
                                               _BinderSetPriorityFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show BinderSetPriorityFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField BinderSetPriorityFtraceEvent "proc'" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BinderSetPriorityFtraceEvent'proc'
           (\ x__ y__ -> x__ {_BinderSetPriorityFtraceEvent'proc' = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField BinderSetPriorityFtraceEvent "maybe'proc'" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BinderSetPriorityFtraceEvent'proc'
           (\ x__ y__ -> x__ {_BinderSetPriorityFtraceEvent'proc' = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField BinderSetPriorityFtraceEvent "thread" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BinderSetPriorityFtraceEvent'thread
           (\ x__ y__ -> x__ {_BinderSetPriorityFtraceEvent'thread = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField BinderSetPriorityFtraceEvent "maybe'thread" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BinderSetPriorityFtraceEvent'thread
           (\ x__ y__ -> x__ {_BinderSetPriorityFtraceEvent'thread = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField BinderSetPriorityFtraceEvent "oldPrio" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BinderSetPriorityFtraceEvent'oldPrio
           (\ x__ y__ -> x__ {_BinderSetPriorityFtraceEvent'oldPrio = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField BinderSetPriorityFtraceEvent "maybe'oldPrio" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BinderSetPriorityFtraceEvent'oldPrio
           (\ x__ y__ -> x__ {_BinderSetPriorityFtraceEvent'oldPrio = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField BinderSetPriorityFtraceEvent "newPrio" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BinderSetPriorityFtraceEvent'newPrio
           (\ x__ y__ -> x__ {_BinderSetPriorityFtraceEvent'newPrio = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField BinderSetPriorityFtraceEvent "maybe'newPrio" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BinderSetPriorityFtraceEvent'newPrio
           (\ x__ y__ -> x__ {_BinderSetPriorityFtraceEvent'newPrio = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField BinderSetPriorityFtraceEvent "desiredPrio" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BinderSetPriorityFtraceEvent'desiredPrio
           (\ x__ y__
              -> x__ {_BinderSetPriorityFtraceEvent'desiredPrio = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField BinderSetPriorityFtraceEvent "maybe'desiredPrio" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BinderSetPriorityFtraceEvent'desiredPrio
           (\ x__ y__
              -> x__ {_BinderSetPriorityFtraceEvent'desiredPrio = y__}))
        Prelude.id
instance Data.ProtoLens.Message BinderSetPriorityFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.BinderSetPriorityFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\FSBinderSetPriorityFtraceEvent\DC2\DC2\n\
      \\EOTproc\CAN\SOH \SOH(\ENQR\EOTproc\DC2\SYN\n\
      \\ACKthread\CAN\STX \SOH(\ENQR\ACKthread\DC2\EM\n\
      \\bold_prio\CAN\ETX \SOH(\rR\aoldPrio\DC2\EM\n\
      \\bnew_prio\CAN\EOT \SOH(\rR\anewPrio\DC2!\n\
      \\fdesired_prio\CAN\ENQ \SOH(\rR\vdesiredPrio"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        proc'__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "proc"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'proc'")) ::
              Data.ProtoLens.FieldDescriptor BinderSetPriorityFtraceEvent
        thread__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "thread"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'thread")) ::
              Data.ProtoLens.FieldDescriptor BinderSetPriorityFtraceEvent
        oldPrio__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "old_prio"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'oldPrio")) ::
              Data.ProtoLens.FieldDescriptor BinderSetPriorityFtraceEvent
        newPrio__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "new_prio"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'newPrio")) ::
              Data.ProtoLens.FieldDescriptor BinderSetPriorityFtraceEvent
        desiredPrio__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "desired_prio"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'desiredPrio")) ::
              Data.ProtoLens.FieldDescriptor BinderSetPriorityFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, proc'__field_descriptor),
           (Data.ProtoLens.Tag 2, thread__field_descriptor),
           (Data.ProtoLens.Tag 3, oldPrio__field_descriptor),
           (Data.ProtoLens.Tag 4, newPrio__field_descriptor),
           (Data.ProtoLens.Tag 5, desiredPrio__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _BinderSetPriorityFtraceEvent'_unknownFields
        (\ x__ y__
           -> x__ {_BinderSetPriorityFtraceEvent'_unknownFields = y__})
  defMessage
    = BinderSetPriorityFtraceEvent'_constructor
        {_BinderSetPriorityFtraceEvent'proc' = Prelude.Nothing,
         _BinderSetPriorityFtraceEvent'thread = Prelude.Nothing,
         _BinderSetPriorityFtraceEvent'oldPrio = Prelude.Nothing,
         _BinderSetPriorityFtraceEvent'newPrio = Prelude.Nothing,
         _BinderSetPriorityFtraceEvent'desiredPrio = Prelude.Nothing,
         _BinderSetPriorityFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          BinderSetPriorityFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser BinderSetPriorityFtraceEvent
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
                                       "proc"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"proc'") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "thread"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"thread") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "old_prio"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"oldPrio") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "new_prio"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"newPrio") y x)
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "desired_prio"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"desiredPrio") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "BinderSetPriorityFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'proc'") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       ((Prelude..)
                          Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'thread") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          ((Prelude..)
                             Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'oldPrio") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             ((Prelude..)
                                Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'newPrio") _x
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
                                (Data.ProtoLens.Field.field @"maybe'desiredPrio") _x
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
instance Control.DeepSeq.NFData BinderSetPriorityFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_BinderSetPriorityFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_BinderSetPriorityFtraceEvent'proc' x__)
                (Control.DeepSeq.deepseq
                   (_BinderSetPriorityFtraceEvent'thread x__)
                   (Control.DeepSeq.deepseq
                      (_BinderSetPriorityFtraceEvent'oldPrio x__)
                      (Control.DeepSeq.deepseq
                         (_BinderSetPriorityFtraceEvent'newPrio x__)
                         (Control.DeepSeq.deepseq
                            (_BinderSetPriorityFtraceEvent'desiredPrio x__) ())))))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Binder_Fields.dataSize' @:: Lens' BinderTransactionAllocBufFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Binder_Fields.maybe'dataSize' @:: Lens' BinderTransactionAllocBufFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Binder_Fields.debugId' @:: Lens' BinderTransactionAllocBufFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Binder_Fields.maybe'debugId' @:: Lens' BinderTransactionAllocBufFtraceEvent (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Binder_Fields.offsetsSize' @:: Lens' BinderTransactionAllocBufFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Binder_Fields.maybe'offsetsSize' @:: Lens' BinderTransactionAllocBufFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Binder_Fields.extraBuffersSize' @:: Lens' BinderTransactionAllocBufFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Binder_Fields.maybe'extraBuffersSize' @:: Lens' BinderTransactionAllocBufFtraceEvent (Prelude.Maybe Data.Word.Word64)@ -}
data BinderTransactionAllocBufFtraceEvent
  = BinderTransactionAllocBufFtraceEvent'_constructor {_BinderTransactionAllocBufFtraceEvent'dataSize :: !(Prelude.Maybe Data.Word.Word64),
                                                       _BinderTransactionAllocBufFtraceEvent'debugId :: !(Prelude.Maybe Data.Int.Int32),
                                                       _BinderTransactionAllocBufFtraceEvent'offsetsSize :: !(Prelude.Maybe Data.Word.Word64),
                                                       _BinderTransactionAllocBufFtraceEvent'extraBuffersSize :: !(Prelude.Maybe Data.Word.Word64),
                                                       _BinderTransactionAllocBufFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show BinderTransactionAllocBufFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField BinderTransactionAllocBufFtraceEvent "dataSize" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BinderTransactionAllocBufFtraceEvent'dataSize
           (\ x__ y__
              -> x__ {_BinderTransactionAllocBufFtraceEvent'dataSize = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField BinderTransactionAllocBufFtraceEvent "maybe'dataSize" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BinderTransactionAllocBufFtraceEvent'dataSize
           (\ x__ y__
              -> x__ {_BinderTransactionAllocBufFtraceEvent'dataSize = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField BinderTransactionAllocBufFtraceEvent "debugId" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BinderTransactionAllocBufFtraceEvent'debugId
           (\ x__ y__
              -> x__ {_BinderTransactionAllocBufFtraceEvent'debugId = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField BinderTransactionAllocBufFtraceEvent "maybe'debugId" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BinderTransactionAllocBufFtraceEvent'debugId
           (\ x__ y__
              -> x__ {_BinderTransactionAllocBufFtraceEvent'debugId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField BinderTransactionAllocBufFtraceEvent "offsetsSize" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BinderTransactionAllocBufFtraceEvent'offsetsSize
           (\ x__ y__
              -> x__ {_BinderTransactionAllocBufFtraceEvent'offsetsSize = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField BinderTransactionAllocBufFtraceEvent "maybe'offsetsSize" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BinderTransactionAllocBufFtraceEvent'offsetsSize
           (\ x__ y__
              -> x__ {_BinderTransactionAllocBufFtraceEvent'offsetsSize = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField BinderTransactionAllocBufFtraceEvent "extraBuffersSize" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BinderTransactionAllocBufFtraceEvent'extraBuffersSize
           (\ x__ y__
              -> x__
                   {_BinderTransactionAllocBufFtraceEvent'extraBuffersSize = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField BinderTransactionAllocBufFtraceEvent "maybe'extraBuffersSize" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BinderTransactionAllocBufFtraceEvent'extraBuffersSize
           (\ x__ y__
              -> x__
                   {_BinderTransactionAllocBufFtraceEvent'extraBuffersSize = y__}))
        Prelude.id
instance Data.ProtoLens.Message BinderTransactionAllocBufFtraceEvent where
  messageName _
    = Data.Text.pack
        "perfetto.protos.BinderTransactionAllocBufFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \$BinderTransactionAllocBufFtraceEvent\DC2\ESC\n\
      \\tdata_size\CAN\SOH \SOH(\EOTR\bdataSize\DC2\EM\n\
      \\bdebug_id\CAN\STX \SOH(\ENQR\adebugId\DC2!\n\
      \\foffsets_size\CAN\ETX \SOH(\EOTR\voffsetsSize\DC2,\n\
      \\DC2extra_buffers_size\CAN\EOT \SOH(\EOTR\DLEextraBuffersSize"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        dataSize__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "data_size"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'dataSize")) ::
              Data.ProtoLens.FieldDescriptor BinderTransactionAllocBufFtraceEvent
        debugId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "debug_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'debugId")) ::
              Data.ProtoLens.FieldDescriptor BinderTransactionAllocBufFtraceEvent
        offsetsSize__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "offsets_size"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'offsetsSize")) ::
              Data.ProtoLens.FieldDescriptor BinderTransactionAllocBufFtraceEvent
        extraBuffersSize__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "extra_buffers_size"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'extraBuffersSize")) ::
              Data.ProtoLens.FieldDescriptor BinderTransactionAllocBufFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, dataSize__field_descriptor),
           (Data.ProtoLens.Tag 2, debugId__field_descriptor),
           (Data.ProtoLens.Tag 3, offsetsSize__field_descriptor),
           (Data.ProtoLens.Tag 4, extraBuffersSize__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _BinderTransactionAllocBufFtraceEvent'_unknownFields
        (\ x__ y__
           -> x__
                {_BinderTransactionAllocBufFtraceEvent'_unknownFields = y__})
  defMessage
    = BinderTransactionAllocBufFtraceEvent'_constructor
        {_BinderTransactionAllocBufFtraceEvent'dataSize = Prelude.Nothing,
         _BinderTransactionAllocBufFtraceEvent'debugId = Prelude.Nothing,
         _BinderTransactionAllocBufFtraceEvent'offsetsSize = Prelude.Nothing,
         _BinderTransactionAllocBufFtraceEvent'extraBuffersSize = Prelude.Nothing,
         _BinderTransactionAllocBufFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          BinderTransactionAllocBufFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser BinderTransactionAllocBufFtraceEvent
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
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "data_size"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"dataSize") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "debug_id"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"debugId") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "offsets_size"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"offsetsSize") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "extra_buffers_size"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"extraBuffersSize") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage)
          "BinderTransactionAllocBufFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'dataSize") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'debugId") _x
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
                          (Data.ProtoLens.Field.field @"maybe'offsetsSize") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view
                             (Data.ProtoLens.Field.field @"maybe'extraBuffersSize") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                      (Data.ProtoLens.Encoding.Wire.buildFieldSet
                         (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))
instance Control.DeepSeq.NFData BinderTransactionAllocBufFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_BinderTransactionAllocBufFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_BinderTransactionAllocBufFtraceEvent'dataSize x__)
                (Control.DeepSeq.deepseq
                   (_BinderTransactionAllocBufFtraceEvent'debugId x__)
                   (Control.DeepSeq.deepseq
                      (_BinderTransactionAllocBufFtraceEvent'offsetsSize x__)
                      (Control.DeepSeq.deepseq
                         (_BinderTransactionAllocBufFtraceEvent'extraBuffersSize x__) ()))))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Binder_Fields.debugId' @:: Lens' BinderTransactionFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Binder_Fields.maybe'debugId' @:: Lens' BinderTransactionFtraceEvent (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Binder_Fields.targetNode' @:: Lens' BinderTransactionFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Binder_Fields.maybe'targetNode' @:: Lens' BinderTransactionFtraceEvent (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Binder_Fields.toProc' @:: Lens' BinderTransactionFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Binder_Fields.maybe'toProc' @:: Lens' BinderTransactionFtraceEvent (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Binder_Fields.toThread' @:: Lens' BinderTransactionFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Binder_Fields.maybe'toThread' @:: Lens' BinderTransactionFtraceEvent (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Binder_Fields.reply' @:: Lens' BinderTransactionFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Binder_Fields.maybe'reply' @:: Lens' BinderTransactionFtraceEvent (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Binder_Fields.code' @:: Lens' BinderTransactionFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Binder_Fields.maybe'code' @:: Lens' BinderTransactionFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Binder_Fields.flags' @:: Lens' BinderTransactionFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Binder_Fields.maybe'flags' @:: Lens' BinderTransactionFtraceEvent (Prelude.Maybe Data.Word.Word32)@ -}
data BinderTransactionFtraceEvent
  = BinderTransactionFtraceEvent'_constructor {_BinderTransactionFtraceEvent'debugId :: !(Prelude.Maybe Data.Int.Int32),
                                               _BinderTransactionFtraceEvent'targetNode :: !(Prelude.Maybe Data.Int.Int32),
                                               _BinderTransactionFtraceEvent'toProc :: !(Prelude.Maybe Data.Int.Int32),
                                               _BinderTransactionFtraceEvent'toThread :: !(Prelude.Maybe Data.Int.Int32),
                                               _BinderTransactionFtraceEvent'reply :: !(Prelude.Maybe Data.Int.Int32),
                                               _BinderTransactionFtraceEvent'code :: !(Prelude.Maybe Data.Word.Word32),
                                               _BinderTransactionFtraceEvent'flags :: !(Prelude.Maybe Data.Word.Word32),
                                               _BinderTransactionFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show BinderTransactionFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField BinderTransactionFtraceEvent "debugId" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BinderTransactionFtraceEvent'debugId
           (\ x__ y__ -> x__ {_BinderTransactionFtraceEvent'debugId = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField BinderTransactionFtraceEvent "maybe'debugId" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BinderTransactionFtraceEvent'debugId
           (\ x__ y__ -> x__ {_BinderTransactionFtraceEvent'debugId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField BinderTransactionFtraceEvent "targetNode" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BinderTransactionFtraceEvent'targetNode
           (\ x__ y__
              -> x__ {_BinderTransactionFtraceEvent'targetNode = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField BinderTransactionFtraceEvent "maybe'targetNode" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BinderTransactionFtraceEvent'targetNode
           (\ x__ y__
              -> x__ {_BinderTransactionFtraceEvent'targetNode = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField BinderTransactionFtraceEvent "toProc" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BinderTransactionFtraceEvent'toProc
           (\ x__ y__ -> x__ {_BinderTransactionFtraceEvent'toProc = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField BinderTransactionFtraceEvent "maybe'toProc" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BinderTransactionFtraceEvent'toProc
           (\ x__ y__ -> x__ {_BinderTransactionFtraceEvent'toProc = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField BinderTransactionFtraceEvent "toThread" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BinderTransactionFtraceEvent'toThread
           (\ x__ y__ -> x__ {_BinderTransactionFtraceEvent'toThread = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField BinderTransactionFtraceEvent "maybe'toThread" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BinderTransactionFtraceEvent'toThread
           (\ x__ y__ -> x__ {_BinderTransactionFtraceEvent'toThread = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField BinderTransactionFtraceEvent "reply" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BinderTransactionFtraceEvent'reply
           (\ x__ y__ -> x__ {_BinderTransactionFtraceEvent'reply = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField BinderTransactionFtraceEvent "maybe'reply" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BinderTransactionFtraceEvent'reply
           (\ x__ y__ -> x__ {_BinderTransactionFtraceEvent'reply = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField BinderTransactionFtraceEvent "code" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BinderTransactionFtraceEvent'code
           (\ x__ y__ -> x__ {_BinderTransactionFtraceEvent'code = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField BinderTransactionFtraceEvent "maybe'code" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BinderTransactionFtraceEvent'code
           (\ x__ y__ -> x__ {_BinderTransactionFtraceEvent'code = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField BinderTransactionFtraceEvent "flags" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BinderTransactionFtraceEvent'flags
           (\ x__ y__ -> x__ {_BinderTransactionFtraceEvent'flags = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField BinderTransactionFtraceEvent "maybe'flags" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BinderTransactionFtraceEvent'flags
           (\ x__ y__ -> x__ {_BinderTransactionFtraceEvent'flags = y__}))
        Prelude.id
instance Data.ProtoLens.Message BinderTransactionFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.BinderTransactionFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\FSBinderTransactionFtraceEvent\DC2\EM\n\
      \\bdebug_id\CAN\SOH \SOH(\ENQR\adebugId\DC2\US\n\
      \\vtarget_node\CAN\STX \SOH(\ENQR\n\
      \targetNode\DC2\ETB\n\
      \\ato_proc\CAN\ETX \SOH(\ENQR\ACKtoProc\DC2\ESC\n\
      \\tto_thread\CAN\EOT \SOH(\ENQR\btoThread\DC2\DC4\n\
      \\ENQreply\CAN\ENQ \SOH(\ENQR\ENQreply\DC2\DC2\n\
      \\EOTcode\CAN\ACK \SOH(\rR\EOTcode\DC2\DC4\n\
      \\ENQflags\CAN\a \SOH(\rR\ENQflags"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        debugId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "debug_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'debugId")) ::
              Data.ProtoLens.FieldDescriptor BinderTransactionFtraceEvent
        targetNode__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "target_node"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'targetNode")) ::
              Data.ProtoLens.FieldDescriptor BinderTransactionFtraceEvent
        toProc__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "to_proc"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'toProc")) ::
              Data.ProtoLens.FieldDescriptor BinderTransactionFtraceEvent
        toThread__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "to_thread"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'toThread")) ::
              Data.ProtoLens.FieldDescriptor BinderTransactionFtraceEvent
        reply__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "reply"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'reply")) ::
              Data.ProtoLens.FieldDescriptor BinderTransactionFtraceEvent
        code__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "code"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'code")) ::
              Data.ProtoLens.FieldDescriptor BinderTransactionFtraceEvent
        flags__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "flags"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'flags")) ::
              Data.ProtoLens.FieldDescriptor BinderTransactionFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, debugId__field_descriptor),
           (Data.ProtoLens.Tag 2, targetNode__field_descriptor),
           (Data.ProtoLens.Tag 3, toProc__field_descriptor),
           (Data.ProtoLens.Tag 4, toThread__field_descriptor),
           (Data.ProtoLens.Tag 5, reply__field_descriptor),
           (Data.ProtoLens.Tag 6, code__field_descriptor),
           (Data.ProtoLens.Tag 7, flags__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _BinderTransactionFtraceEvent'_unknownFields
        (\ x__ y__
           -> x__ {_BinderTransactionFtraceEvent'_unknownFields = y__})
  defMessage
    = BinderTransactionFtraceEvent'_constructor
        {_BinderTransactionFtraceEvent'debugId = Prelude.Nothing,
         _BinderTransactionFtraceEvent'targetNode = Prelude.Nothing,
         _BinderTransactionFtraceEvent'toProc = Prelude.Nothing,
         _BinderTransactionFtraceEvent'toThread = Prelude.Nothing,
         _BinderTransactionFtraceEvent'reply = Prelude.Nothing,
         _BinderTransactionFtraceEvent'code = Prelude.Nothing,
         _BinderTransactionFtraceEvent'flags = Prelude.Nothing,
         _BinderTransactionFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          BinderTransactionFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser BinderTransactionFtraceEvent
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
                                       "debug_id"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"debugId") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "target_node"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"targetNode") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "to_proc"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"toProc") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "to_thread"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"toThread") y x)
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "reply"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"reply") y x)
                        48
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "code"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"code") y x)
                        56
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "flags"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"flags") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "BinderTransactionFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'debugId") _x
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
                       (Data.ProtoLens.Field.field @"maybe'targetNode") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          ((Prelude..)
                             Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'toProc") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             ((Prelude..)
                                Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'toThread") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                                ((Prelude..)
                                   Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                      ((Data.Monoid.<>)
                         (case
                              Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'reply") _x
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
                                 Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'code") _x
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
                                    Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'flags") _x
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
instance Control.DeepSeq.NFData BinderTransactionFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_BinderTransactionFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_BinderTransactionFtraceEvent'debugId x__)
                (Control.DeepSeq.deepseq
                   (_BinderTransactionFtraceEvent'targetNode x__)
                   (Control.DeepSeq.deepseq
                      (_BinderTransactionFtraceEvent'toProc x__)
                      (Control.DeepSeq.deepseq
                         (_BinderTransactionFtraceEvent'toThread x__)
                         (Control.DeepSeq.deepseq
                            (_BinderTransactionFtraceEvent'reply x__)
                            (Control.DeepSeq.deepseq
                               (_BinderTransactionFtraceEvent'code x__)
                               (Control.DeepSeq.deepseq
                                  (_BinderTransactionFtraceEvent'flags x__) ())))))))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Binder_Fields.debugId' @:: Lens' BinderTransactionReceivedFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Binder_Fields.maybe'debugId' @:: Lens' BinderTransactionReceivedFtraceEvent (Prelude.Maybe Data.Int.Int32)@ -}
data BinderTransactionReceivedFtraceEvent
  = BinderTransactionReceivedFtraceEvent'_constructor {_BinderTransactionReceivedFtraceEvent'debugId :: !(Prelude.Maybe Data.Int.Int32),
                                                       _BinderTransactionReceivedFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show BinderTransactionReceivedFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField BinderTransactionReceivedFtraceEvent "debugId" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BinderTransactionReceivedFtraceEvent'debugId
           (\ x__ y__
              -> x__ {_BinderTransactionReceivedFtraceEvent'debugId = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField BinderTransactionReceivedFtraceEvent "maybe'debugId" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BinderTransactionReceivedFtraceEvent'debugId
           (\ x__ y__
              -> x__ {_BinderTransactionReceivedFtraceEvent'debugId = y__}))
        Prelude.id
instance Data.ProtoLens.Message BinderTransactionReceivedFtraceEvent where
  messageName _
    = Data.Text.pack
        "perfetto.protos.BinderTransactionReceivedFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \$BinderTransactionReceivedFtraceEvent\DC2\EM\n\
      \\bdebug_id\CAN\SOH \SOH(\ENQR\adebugId"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        debugId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "debug_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'debugId")) ::
              Data.ProtoLens.FieldDescriptor BinderTransactionReceivedFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, debugId__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _BinderTransactionReceivedFtraceEvent'_unknownFields
        (\ x__ y__
           -> x__
                {_BinderTransactionReceivedFtraceEvent'_unknownFields = y__})
  defMessage
    = BinderTransactionReceivedFtraceEvent'_constructor
        {_BinderTransactionReceivedFtraceEvent'debugId = Prelude.Nothing,
         _BinderTransactionReceivedFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          BinderTransactionReceivedFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser BinderTransactionReceivedFtraceEvent
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
                                       "debug_id"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"debugId") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage)
          "BinderTransactionReceivedFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'debugId") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       ((Prelude..)
                          Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData BinderTransactionReceivedFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_BinderTransactionReceivedFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_BinderTransactionReceivedFtraceEvent'debugId x__) ())
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Binder_Fields.tag' @:: Lens' BinderUnlockFtraceEvent Data.Text.Text@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Binder_Fields.maybe'tag' @:: Lens' BinderUnlockFtraceEvent (Prelude.Maybe Data.Text.Text)@ -}
data BinderUnlockFtraceEvent
  = BinderUnlockFtraceEvent'_constructor {_BinderUnlockFtraceEvent'tag :: !(Prelude.Maybe Data.Text.Text),
                                          _BinderUnlockFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show BinderUnlockFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField BinderUnlockFtraceEvent "tag" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BinderUnlockFtraceEvent'tag
           (\ x__ y__ -> x__ {_BinderUnlockFtraceEvent'tag = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField BinderUnlockFtraceEvent "maybe'tag" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _BinderUnlockFtraceEvent'tag
           (\ x__ y__ -> x__ {_BinderUnlockFtraceEvent'tag = y__}))
        Prelude.id
instance Data.ProtoLens.Message BinderUnlockFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.BinderUnlockFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\ETBBinderUnlockFtraceEvent\DC2\DLE\n\
      \\ETXtag\CAN\SOH \SOH(\tR\ETXtag"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        tag__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "tag"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'tag")) ::
              Data.ProtoLens.FieldDescriptor BinderUnlockFtraceEvent
      in
        Data.Map.fromList [(Data.ProtoLens.Tag 1, tag__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _BinderUnlockFtraceEvent'_unknownFields
        (\ x__ y__ -> x__ {_BinderUnlockFtraceEvent'_unknownFields = y__})
  defMessage
    = BinderUnlockFtraceEvent'_constructor
        {_BinderUnlockFtraceEvent'tag = Prelude.Nothing,
         _BinderUnlockFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          BinderUnlockFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser BinderUnlockFtraceEvent
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
                                       "tag"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"tag") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "BinderUnlockFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'tag") _x
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
instance Control.DeepSeq.NFData BinderUnlockFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_BinderUnlockFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq (_BinderUnlockFtraceEvent'tag x__) ())
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \)protos/perfetto/trace/ftrace/binder.proto\DC2\SIperfetto.protos\"\208\SOH\n\
    \\FSBinderTransactionFtraceEvent\DC2\EM\n\
    \\bdebug_id\CAN\SOH \SOH(\ENQR\adebugId\DC2\US\n\
    \\vtarget_node\CAN\STX \SOH(\ENQR\n\
    \targetNode\DC2\ETB\n\
    \\ato_proc\CAN\ETX \SOH(\ENQR\ACKtoProc\DC2\ESC\n\
    \\tto_thread\CAN\EOT \SOH(\ENQR\btoThread\DC2\DC4\n\
    \\ENQreply\CAN\ENQ \SOH(\ENQR\ENQreply\DC2\DC2\n\
    \\EOTcode\CAN\ACK \SOH(\rR\EOTcode\DC2\DC4\n\
    \\ENQflags\CAN\a \SOH(\rR\ENQflags\"A\n\
    \$BinderTransactionReceivedFtraceEvent\DC2\EM\n\
    \\bdebug_id\CAN\SOH \SOH(\ENQR\adebugId\"\163\SOH\n\
    \\FSBinderSetPriorityFtraceEvent\DC2\DC2\n\
    \\EOTproc\CAN\SOH \SOH(\ENQR\EOTproc\DC2\SYN\n\
    \\ACKthread\CAN\STX \SOH(\ENQR\ACKthread\DC2\EM\n\
    \\bold_prio\CAN\ETX \SOH(\rR\aoldPrio\DC2\EM\n\
    \\bnew_prio\CAN\EOT \SOH(\rR\anewPrio\DC2!\n\
    \\fdesired_prio\CAN\ENQ \SOH(\rR\vdesiredPrio\")\n\
    \\NAKBinderLockFtraceEvent\DC2\DLE\n\
    \\ETXtag\CAN\SOH \SOH(\tR\ETXtag\"+\n\
    \\ETBBinderLockedFtraceEvent\DC2\DLE\n\
    \\ETXtag\CAN\SOH \SOH(\tR\ETXtag\"+\n\
    \\ETBBinderUnlockFtraceEvent\DC2\DLE\n\
    \\ETXtag\CAN\SOH \SOH(\tR\ETXtag\"\175\SOH\n\
    \$BinderTransactionAllocBufFtraceEvent\DC2\ESC\n\
    \\tdata_size\CAN\SOH \SOH(\EOTR\bdataSize\DC2\EM\n\
    \\bdebug_id\CAN\STX \SOH(\ENQR\adebugId\DC2!\n\
    \\foffsets_size\CAN\ETX \SOH(\EOTR\voffsetsSize\DC2,\n\
    \\DC2extra_buffers_size\CAN\EOT \SOH(\EOTR\DLEextraBuffersSize\",\n\
    \\CANBinderCommandFtraceEvent\DC2\DLE\n\
    \\ETXcmd\CAN\SOH \SOH(\rR\ETXcmd\"+\n\
    \\ETBBinderReturnFtraceEvent\DC2\DLE\n\
    \\ETXcmd\CAN\SOH \SOH(\rR\ETXcmdJ\187\SO\n\
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
    \\STX\EOT\NUL\DC2\EOT\a\NUL\SI\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\a\b$\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\b\STX\RS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\EOT\DC2\ETX\b\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX\b\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\b\DC1\EM\n\
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
    \\v\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETX\n\
    \\STX\GS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\EOT\DC2\ETX\n\
    \\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ENQ\DC2\ETX\n\
    \\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETX\n\
    \\DC1\CAN\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETX\n\
    \\ESC\FS\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\ETX\DC2\ETX\v\STX\US\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\EOT\DC2\ETX\v\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ENQ\DC2\ETX\v\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\SOH\DC2\ETX\v\DC1\SUB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ETX\DC2\ETX\v\GS\RS\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\EOT\DC2\ETX\f\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\EOT\DC2\ETX\f\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ENQ\DC2\ETX\f\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\SOH\DC2\ETX\f\DC1\SYN\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ETX\DC2\ETX\f\EM\SUB\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\ENQ\DC2\ETX\r\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\EOT\DC2\ETX\r\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\ENQ\DC2\ETX\r\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\SOH\DC2\ETX\r\DC2\SYN\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\ETX\DC2\ETX\r\EM\SUB\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\ACK\DC2\ETX\SO\STX\FS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ACK\EOT\DC2\ETX\SO\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ACK\ENQ\DC2\ETX\SO\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ACK\SOH\DC2\ETX\SO\DC2\ETB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ACK\ETX\DC2\ETX\SO\SUB\ESC\n\
    \\n\
    \\n\
    \\STX\EOT\SOH\DC2\EOT\DLE\NUL\DC2\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX\DLE\b,\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETX\DC1\STX\RS\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\EOT\DC2\ETX\DC1\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ENQ\DC2\ETX\DC1\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETX\DC1\DC1\EM\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETX\DC1\FS\GS\n\
    \\n\
    \\n\
    \\STX\EOT\STX\DC2\EOT\DC3\NUL\EM\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\SOH\DC2\ETX\DC3\b$\n\
    \\v\n\
    \\EOT\EOT\STX\STX\NUL\DC2\ETX\DC4\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\EOT\DC2\ETX\DC4\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ENQ\DC2\ETX\DC4\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\SOH\DC2\ETX\DC4\DC1\NAK\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ETX\DC2\ETX\DC4\CAN\EM\n\
    \\v\n\
    \\EOT\EOT\STX\STX\SOH\DC2\ETX\NAK\STX\FS\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\EOT\DC2\ETX\NAK\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ENQ\DC2\ETX\NAK\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\SOH\DC2\ETX\NAK\DC1\ETB\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ETX\DC2\ETX\NAK\SUB\ESC\n\
    \\v\n\
    \\EOT\EOT\STX\STX\STX\DC2\ETX\SYN\STX\US\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\EOT\DC2\ETX\SYN\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\ENQ\DC2\ETX\SYN\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\SOH\DC2\ETX\SYN\DC2\SUB\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\ETX\DC2\ETX\SYN\GS\RS\n\
    \\v\n\
    \\EOT\EOT\STX\STX\ETX\DC2\ETX\ETB\STX\US\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ETX\EOT\DC2\ETX\ETB\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ETX\ENQ\DC2\ETX\ETB\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ETX\SOH\DC2\ETX\ETB\DC2\SUB\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ETX\ETX\DC2\ETX\ETB\GS\RS\n\
    \\v\n\
    \\EOT\EOT\STX\STX\EOT\DC2\ETX\CAN\STX#\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\EOT\EOT\DC2\ETX\CAN\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\EOT\ENQ\DC2\ETX\CAN\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\EOT\SOH\DC2\ETX\CAN\DC2\RS\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\EOT\ETX\DC2\ETX\CAN!\"\n\
    \\n\
    \\n\
    \\STX\EOT\ETX\DC2\EOT\SUB\NUL\FS\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\ETX\SOH\DC2\ETX\SUB\b\GS\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\NUL\DC2\ETX\ESC\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\EOT\DC2\ETX\ESC\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ENQ\DC2\ETX\ESC\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\SOH\DC2\ETX\ESC\DC2\NAK\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ETX\DC2\ETX\ESC\CAN\EM\n\
    \\n\
    \\n\
    \\STX\EOT\EOT\DC2\EOT\GS\NUL\US\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\EOT\SOH\DC2\ETX\GS\b\US\n\
    \\v\n\
    \\EOT\EOT\EOT\STX\NUL\DC2\ETX\RS\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\EOT\DC2\ETX\RS\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\ENQ\DC2\ETX\RS\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\SOH\DC2\ETX\RS\DC2\NAK\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\ETX\DC2\ETX\RS\CAN\EM\n\
    \\n\
    \\n\
    \\STX\EOT\ENQ\DC2\EOT \NUL\"\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\ENQ\SOH\DC2\ETX \b\US\n\
    \\v\n\
    \\EOT\EOT\ENQ\STX\NUL\DC2\ETX!\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\EOT\DC2\ETX!\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\ENQ\DC2\ETX!\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\SOH\DC2\ETX!\DC2\NAK\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\ETX\DC2\ETX!\CAN\EM\n\
    \\n\
    \\n\
    \\STX\EOT\ACK\DC2\EOT#\NUL(\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\ACK\SOH\DC2\ETX#\b,\n\
    \\v\n\
    \\EOT\EOT\ACK\STX\NUL\DC2\ETX$\STX \n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\EOT\DC2\ETX$\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\ENQ\DC2\ETX$\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\SOH\DC2\ETX$\DC2\ESC\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\ETX\DC2\ETX$\RS\US\n\
    \\v\n\
    \\EOT\EOT\ACK\STX\SOH\DC2\ETX%\STX\RS\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\SOH\EOT\DC2\ETX%\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\SOH\ENQ\DC2\ETX%\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\SOH\SOH\DC2\ETX%\DC1\EM\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\SOH\ETX\DC2\ETX%\FS\GS\n\
    \\v\n\
    \\EOT\EOT\ACK\STX\STX\DC2\ETX&\STX#\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\STX\EOT\DC2\ETX&\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\STX\ENQ\DC2\ETX&\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\STX\SOH\DC2\ETX&\DC2\RS\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\STX\ETX\DC2\ETX&!\"\n\
    \\v\n\
    \\EOT\EOT\ACK\STX\ETX\DC2\ETX'\STX)\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\ETX\EOT\DC2\ETX'\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\ETX\ENQ\DC2\ETX'\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\ETX\SOH\DC2\ETX'\DC2$\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\ETX\ETX\DC2\ETX''(\n\
    \\n\
    \\n\
    \\STX\EOT\a\DC2\EOT)\NUL+\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\a\SOH\DC2\ETX)\b \n\
    \\v\n\
    \\EOT\EOT\a\STX\NUL\DC2\ETX*\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\a\STX\NUL\EOT\DC2\ETX*\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\a\STX\NUL\ENQ\DC2\ETX*\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\a\STX\NUL\SOH\DC2\ETX*\DC2\NAK\n\
    \\f\n\
    \\ENQ\EOT\a\STX\NUL\ETX\DC2\ETX*\CAN\EM\n\
    \\n\
    \\n\
    \\STX\EOT\b\DC2\EOT,\NUL.\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\b\SOH\DC2\ETX,\b\US\n\
    \\v\n\
    \\EOT\EOT\b\STX\NUL\DC2\ETX-\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\b\STX\NUL\EOT\DC2\ETX-\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\b\STX\NUL\ENQ\DC2\ETX-\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\b\STX\NUL\SOH\DC2\ETX-\DC2\NAK\n\
    \\f\n\
    \\ENQ\EOT\b\STX\NUL\ETX\DC2\ETX-\CAN\EM"