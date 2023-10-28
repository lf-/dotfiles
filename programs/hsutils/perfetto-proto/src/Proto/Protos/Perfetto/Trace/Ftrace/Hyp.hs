{- This file was auto-generated from protos/perfetto/trace/ftrace/hyp.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Protos.Perfetto.Trace.Ftrace.Hyp (
        HostHcallFtraceEvent(), HostMemAbortFtraceEvent(),
        HostSmcFtraceEvent(), HypEnterFtraceEvent(), HypExitFtraceEvent()
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
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Hyp_Fields.id' @:: Lens' HostHcallFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Hyp_Fields.maybe'id' @:: Lens' HostHcallFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Hyp_Fields.invalid' @:: Lens' HostHcallFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Hyp_Fields.maybe'invalid' @:: Lens' HostHcallFtraceEvent (Prelude.Maybe Data.Word.Word32)@ -}
data HostHcallFtraceEvent
  = HostHcallFtraceEvent'_constructor {_HostHcallFtraceEvent'id :: !(Prelude.Maybe Data.Word.Word32),
                                       _HostHcallFtraceEvent'invalid :: !(Prelude.Maybe Data.Word.Word32),
                                       _HostHcallFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show HostHcallFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField HostHcallFtraceEvent "id" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HostHcallFtraceEvent'id
           (\ x__ y__ -> x__ {_HostHcallFtraceEvent'id = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField HostHcallFtraceEvent "maybe'id" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HostHcallFtraceEvent'id
           (\ x__ y__ -> x__ {_HostHcallFtraceEvent'id = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HostHcallFtraceEvent "invalid" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HostHcallFtraceEvent'invalid
           (\ x__ y__ -> x__ {_HostHcallFtraceEvent'invalid = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField HostHcallFtraceEvent "maybe'invalid" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HostHcallFtraceEvent'invalid
           (\ x__ y__ -> x__ {_HostHcallFtraceEvent'invalid = y__}))
        Prelude.id
instance Data.ProtoLens.Message HostHcallFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.HostHcallFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\DC4HostHcallFtraceEvent\DC2\SO\n\
      \\STXid\CAN\SOH \SOH(\rR\STXid\DC2\CAN\n\
      \\ainvalid\CAN\STX \SOH(\rR\ainvalid"
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
              Data.ProtoLens.FieldDescriptor HostHcallFtraceEvent
        invalid__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "invalid"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'invalid")) ::
              Data.ProtoLens.FieldDescriptor HostHcallFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, id__field_descriptor),
           (Data.ProtoLens.Tag 2, invalid__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _HostHcallFtraceEvent'_unknownFields
        (\ x__ y__ -> x__ {_HostHcallFtraceEvent'_unknownFields = y__})
  defMessage
    = HostHcallFtraceEvent'_constructor
        {_HostHcallFtraceEvent'id = Prelude.Nothing,
         _HostHcallFtraceEvent'invalid = Prelude.Nothing,
         _HostHcallFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          HostHcallFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser HostHcallFtraceEvent
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
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "invalid"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"invalid") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "HostHcallFtraceEvent"
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
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'invalid") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          ((Prelude..)
                             Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData HostHcallFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_HostHcallFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_HostHcallFtraceEvent'id x__)
                (Control.DeepSeq.deepseq (_HostHcallFtraceEvent'invalid x__) ()))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Hyp_Fields.esr' @:: Lens' HostMemAbortFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Hyp_Fields.maybe'esr' @:: Lens' HostMemAbortFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Hyp_Fields.addr' @:: Lens' HostMemAbortFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Hyp_Fields.maybe'addr' @:: Lens' HostMemAbortFtraceEvent (Prelude.Maybe Data.Word.Word64)@ -}
data HostMemAbortFtraceEvent
  = HostMemAbortFtraceEvent'_constructor {_HostMemAbortFtraceEvent'esr :: !(Prelude.Maybe Data.Word.Word64),
                                          _HostMemAbortFtraceEvent'addr :: !(Prelude.Maybe Data.Word.Word64),
                                          _HostMemAbortFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show HostMemAbortFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField HostMemAbortFtraceEvent "esr" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HostMemAbortFtraceEvent'esr
           (\ x__ y__ -> x__ {_HostMemAbortFtraceEvent'esr = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField HostMemAbortFtraceEvent "maybe'esr" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HostMemAbortFtraceEvent'esr
           (\ x__ y__ -> x__ {_HostMemAbortFtraceEvent'esr = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HostMemAbortFtraceEvent "addr" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HostMemAbortFtraceEvent'addr
           (\ x__ y__ -> x__ {_HostMemAbortFtraceEvent'addr = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField HostMemAbortFtraceEvent "maybe'addr" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HostMemAbortFtraceEvent'addr
           (\ x__ y__ -> x__ {_HostMemAbortFtraceEvent'addr = y__}))
        Prelude.id
instance Data.ProtoLens.Message HostMemAbortFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.HostMemAbortFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\ETBHostMemAbortFtraceEvent\DC2\DLE\n\
      \\ETXesr\CAN\SOH \SOH(\EOTR\ETXesr\DC2\DC2\n\
      \\EOTaddr\CAN\STX \SOH(\EOTR\EOTaddr"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        esr__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "esr"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'esr")) ::
              Data.ProtoLens.FieldDescriptor HostMemAbortFtraceEvent
        addr__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "addr"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'addr")) ::
              Data.ProtoLens.FieldDescriptor HostMemAbortFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, esr__field_descriptor),
           (Data.ProtoLens.Tag 2, addr__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _HostMemAbortFtraceEvent'_unknownFields
        (\ x__ y__ -> x__ {_HostMemAbortFtraceEvent'_unknownFields = y__})
  defMessage
    = HostMemAbortFtraceEvent'_constructor
        {_HostMemAbortFtraceEvent'esr = Prelude.Nothing,
         _HostMemAbortFtraceEvent'addr = Prelude.Nothing,
         _HostMemAbortFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          HostMemAbortFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser HostMemAbortFtraceEvent
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
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "esr"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"esr") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "addr"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"addr") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "HostMemAbortFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'esr") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'addr") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData HostMemAbortFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_HostMemAbortFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_HostMemAbortFtraceEvent'esr x__)
                (Control.DeepSeq.deepseq (_HostMemAbortFtraceEvent'addr x__) ()))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Hyp_Fields.id' @:: Lens' HostSmcFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Hyp_Fields.maybe'id' @:: Lens' HostSmcFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Hyp_Fields.forwarded' @:: Lens' HostSmcFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Hyp_Fields.maybe'forwarded' @:: Lens' HostSmcFtraceEvent (Prelude.Maybe Data.Word.Word32)@ -}
data HostSmcFtraceEvent
  = HostSmcFtraceEvent'_constructor {_HostSmcFtraceEvent'id :: !(Prelude.Maybe Data.Word.Word64),
                                     _HostSmcFtraceEvent'forwarded :: !(Prelude.Maybe Data.Word.Word32),
                                     _HostSmcFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show HostSmcFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField HostSmcFtraceEvent "id" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HostSmcFtraceEvent'id
           (\ x__ y__ -> x__ {_HostSmcFtraceEvent'id = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField HostSmcFtraceEvent "maybe'id" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HostSmcFtraceEvent'id
           (\ x__ y__ -> x__ {_HostSmcFtraceEvent'id = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField HostSmcFtraceEvent "forwarded" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HostSmcFtraceEvent'forwarded
           (\ x__ y__ -> x__ {_HostSmcFtraceEvent'forwarded = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField HostSmcFtraceEvent "maybe'forwarded" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _HostSmcFtraceEvent'forwarded
           (\ x__ y__ -> x__ {_HostSmcFtraceEvent'forwarded = y__}))
        Prelude.id
instance Data.ProtoLens.Message HostSmcFtraceEvent where
  messageName _ = Data.Text.pack "perfetto.protos.HostSmcFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\DC2HostSmcFtraceEvent\DC2\SO\n\
      \\STXid\CAN\SOH \SOH(\EOTR\STXid\DC2\FS\n\
      \\tforwarded\CAN\STX \SOH(\rR\tforwarded"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        id__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'id")) ::
              Data.ProtoLens.FieldDescriptor HostSmcFtraceEvent
        forwarded__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "forwarded"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'forwarded")) ::
              Data.ProtoLens.FieldDescriptor HostSmcFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, id__field_descriptor),
           (Data.ProtoLens.Tag 2, forwarded__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _HostSmcFtraceEvent'_unknownFields
        (\ x__ y__ -> x__ {_HostSmcFtraceEvent'_unknownFields = y__})
  defMessage
    = HostSmcFtraceEvent'_constructor
        {_HostSmcFtraceEvent'id = Prelude.Nothing,
         _HostSmcFtraceEvent'forwarded = Prelude.Nothing,
         _HostSmcFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          HostSmcFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser HostSmcFtraceEvent
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
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "id"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"id") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "forwarded"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"forwarded") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "HostSmcFtraceEvent"
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
                       (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view
                       (Data.ProtoLens.Field.field @"maybe'forwarded") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          ((Prelude..)
                             Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData HostSmcFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_HostSmcFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_HostSmcFtraceEvent'id x__)
                (Control.DeepSeq.deepseq (_HostSmcFtraceEvent'forwarded x__) ()))
{- | Fields :
      -}
data HypEnterFtraceEvent
  = HypEnterFtraceEvent'_constructor {_HypEnterFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show HypEnterFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Message HypEnterFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.HypEnterFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\DC3HypEnterFtraceEvent"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag = let in Data.Map.fromList []
  unknownFields
    = Lens.Family2.Unchecked.lens
        _HypEnterFtraceEvent'_unknownFields
        (\ x__ y__ -> x__ {_HypEnterFtraceEvent'_unknownFields = y__})
  defMessage
    = HypEnterFtraceEvent'_constructor
        {_HypEnterFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          HypEnterFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser HypEnterFtraceEvent
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
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "HypEnterFtraceEvent"
  buildMessage
    = \ _x
        -> Data.ProtoLens.Encoding.Wire.buildFieldSet
             (Lens.Family2.view Data.ProtoLens.unknownFields _x)
instance Control.DeepSeq.NFData HypEnterFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_HypEnterFtraceEvent'_unknownFields x__) ()
{- | Fields :
      -}
data HypExitFtraceEvent
  = HypExitFtraceEvent'_constructor {_HypExitFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show HypExitFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Message HypExitFtraceEvent where
  messageName _ = Data.Text.pack "perfetto.protos.HypExitFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\DC2HypExitFtraceEvent"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag = let in Data.Map.fromList []
  unknownFields
    = Lens.Family2.Unchecked.lens
        _HypExitFtraceEvent'_unknownFields
        (\ x__ y__ -> x__ {_HypExitFtraceEvent'_unknownFields = y__})
  defMessage
    = HypExitFtraceEvent'_constructor
        {_HypExitFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          HypExitFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser HypExitFtraceEvent
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
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "HypExitFtraceEvent"
  buildMessage
    = \ _x
        -> Data.ProtoLens.Encoding.Wire.buildFieldSet
             (Lens.Family2.view Data.ProtoLens.unknownFields _x)
instance Control.DeepSeq.NFData HypExitFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_HypExitFtraceEvent'_unknownFields x__) ()
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \&protos/perfetto/trace/ftrace/hyp.proto\DC2\SIperfetto.protos\"\NAK\n\
    \\DC3HypEnterFtraceEvent\"\DC4\n\
    \\DC2HypExitFtraceEvent\"@\n\
    \\DC4HostHcallFtraceEvent\DC2\SO\n\
    \\STXid\CAN\SOH \SOH(\rR\STXid\DC2\CAN\n\
    \\ainvalid\CAN\STX \SOH(\rR\ainvalid\"B\n\
    \\DC2HostSmcFtraceEvent\DC2\SO\n\
    \\STXid\CAN\SOH \SOH(\EOTR\STXid\DC2\FS\n\
    \\tforwarded\CAN\STX \SOH(\rR\tforwarded\"?\n\
    \\ETBHostMemAbortFtraceEvent\DC2\DLE\n\
    \\ETXesr\CAN\SOH \SOH(\EOTR\ETXesr\DC2\DC2\n\
    \\EOTaddr\CAN\STX \SOH(\EOTR\EOTaddrJ\137\ENQ\n\
    \\ACK\DC2\EOT\EOT\NUL\DC4\SOH\n\
    \a\n\
    \\SOH\f\DC2\ETX\EOT\NUL\DC22W Autogenerated by:\n\
    \ ../../src/tools/ftrace_proto_gen/ftrace_proto_gen.cc\n\
    \ Do not edit.\n\
    \\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\ENQ\NUL\CAN\n\
    \\t\n\
    \\STX\EOT\NUL\DC2\ETX\a\NUL\RS\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\a\b\ESC\n\
    \\t\n\
    \\STX\EOT\SOH\DC2\ETX\b\NUL\GS\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX\b\b\SUB\n\
    \\n\
    \\n\
    \\STX\EOT\STX\DC2\EOT\t\NUL\f\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\SOH\DC2\ETX\t\b\FS\n\
    \\v\n\
    \\EOT\EOT\STX\STX\NUL\DC2\ETX\n\
    \\STX\EM\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\EOT\DC2\ETX\n\
    \\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ENQ\DC2\ETX\n\
    \\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\SOH\DC2\ETX\n\
    \\DC2\DC4\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ETX\DC2\ETX\n\
    \\ETB\CAN\n\
    \\v\n\
    \\EOT\EOT\STX\STX\SOH\DC2\ETX\v\STX\RS\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\EOT\DC2\ETX\v\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ENQ\DC2\ETX\v\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\SOH\DC2\ETX\v\DC2\EM\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ETX\DC2\ETX\v\FS\GS\n\
    \\n\
    \\n\
    \\STX\EOT\ETX\DC2\EOT\r\NUL\DLE\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\ETX\SOH\DC2\ETX\r\b\SUB\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\NUL\DC2\ETX\SO\STX\EM\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\EOT\DC2\ETX\SO\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ENQ\DC2\ETX\SO\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\SOH\DC2\ETX\SO\DC2\DC4\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ETX\DC2\ETX\SO\ETB\CAN\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\SOH\DC2\ETX\SI\STX \n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\EOT\DC2\ETX\SI\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\ENQ\DC2\ETX\SI\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\SOH\DC2\ETX\SI\DC2\ESC\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\ETX\DC2\ETX\SI\RS\US\n\
    \\n\
    \\n\
    \\STX\EOT\EOT\DC2\EOT\DC1\NUL\DC4\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\EOT\SOH\DC2\ETX\DC1\b\US\n\
    \\v\n\
    \\EOT\EOT\EOT\STX\NUL\DC2\ETX\DC2\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\EOT\DC2\ETX\DC2\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\ENQ\DC2\ETX\DC2\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\SOH\DC2\ETX\DC2\DC2\NAK\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\ETX\DC2\ETX\DC2\CAN\EM\n\
    \\v\n\
    \\EOT\EOT\EOT\STX\SOH\DC2\ETX\DC3\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\EOT\DC2\ETX\DC3\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\ENQ\DC2\ETX\DC3\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\SOH\DC2\ETX\DC3\DC2\SYN\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\ETX\DC2\ETX\DC3\EM\SUB"