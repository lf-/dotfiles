{- This file was auto-generated from protos/perfetto/trace/ftrace/lwis.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Protos.Perfetto.Trace.Ftrace.Lwis (
        LwisTracingMarkWriteFtraceEvent()
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
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Lwis_Fields.lwisName' @:: Lens' LwisTracingMarkWriteFtraceEvent Data.Text.Text@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Lwis_Fields.maybe'lwisName' @:: Lens' LwisTracingMarkWriteFtraceEvent (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Lwis_Fields.type'' @:: Lens' LwisTracingMarkWriteFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Lwis_Fields.maybe'type'' @:: Lens' LwisTracingMarkWriteFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Lwis_Fields.pid' @:: Lens' LwisTracingMarkWriteFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Lwis_Fields.maybe'pid' @:: Lens' LwisTracingMarkWriteFtraceEvent (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Lwis_Fields.funcName' @:: Lens' LwisTracingMarkWriteFtraceEvent Data.Text.Text@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Lwis_Fields.maybe'funcName' @:: Lens' LwisTracingMarkWriteFtraceEvent (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Lwis_Fields.value' @:: Lens' LwisTracingMarkWriteFtraceEvent Data.Int.Int64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Lwis_Fields.maybe'value' @:: Lens' LwisTracingMarkWriteFtraceEvent (Prelude.Maybe Data.Int.Int64)@ -}
data LwisTracingMarkWriteFtraceEvent
  = LwisTracingMarkWriteFtraceEvent'_constructor {_LwisTracingMarkWriteFtraceEvent'lwisName :: !(Prelude.Maybe Data.Text.Text),
                                                  _LwisTracingMarkWriteFtraceEvent'type' :: !(Prelude.Maybe Data.Word.Word32),
                                                  _LwisTracingMarkWriteFtraceEvent'pid :: !(Prelude.Maybe Data.Int.Int32),
                                                  _LwisTracingMarkWriteFtraceEvent'funcName :: !(Prelude.Maybe Data.Text.Text),
                                                  _LwisTracingMarkWriteFtraceEvent'value :: !(Prelude.Maybe Data.Int.Int64),
                                                  _LwisTracingMarkWriteFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show LwisTracingMarkWriteFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField LwisTracingMarkWriteFtraceEvent "lwisName" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _LwisTracingMarkWriteFtraceEvent'lwisName
           (\ x__ y__
              -> x__ {_LwisTracingMarkWriteFtraceEvent'lwisName = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField LwisTracingMarkWriteFtraceEvent "maybe'lwisName" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _LwisTracingMarkWriteFtraceEvent'lwisName
           (\ x__ y__
              -> x__ {_LwisTracingMarkWriteFtraceEvent'lwisName = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField LwisTracingMarkWriteFtraceEvent "type'" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _LwisTracingMarkWriteFtraceEvent'type'
           (\ x__ y__ -> x__ {_LwisTracingMarkWriteFtraceEvent'type' = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField LwisTracingMarkWriteFtraceEvent "maybe'type'" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _LwisTracingMarkWriteFtraceEvent'type'
           (\ x__ y__ -> x__ {_LwisTracingMarkWriteFtraceEvent'type' = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField LwisTracingMarkWriteFtraceEvent "pid" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _LwisTracingMarkWriteFtraceEvent'pid
           (\ x__ y__ -> x__ {_LwisTracingMarkWriteFtraceEvent'pid = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField LwisTracingMarkWriteFtraceEvent "maybe'pid" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _LwisTracingMarkWriteFtraceEvent'pid
           (\ x__ y__ -> x__ {_LwisTracingMarkWriteFtraceEvent'pid = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField LwisTracingMarkWriteFtraceEvent "funcName" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _LwisTracingMarkWriteFtraceEvent'funcName
           (\ x__ y__
              -> x__ {_LwisTracingMarkWriteFtraceEvent'funcName = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField LwisTracingMarkWriteFtraceEvent "maybe'funcName" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _LwisTracingMarkWriteFtraceEvent'funcName
           (\ x__ y__
              -> x__ {_LwisTracingMarkWriteFtraceEvent'funcName = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField LwisTracingMarkWriteFtraceEvent "value" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _LwisTracingMarkWriteFtraceEvent'value
           (\ x__ y__ -> x__ {_LwisTracingMarkWriteFtraceEvent'value = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField LwisTracingMarkWriteFtraceEvent "maybe'value" (Prelude.Maybe Data.Int.Int64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _LwisTracingMarkWriteFtraceEvent'value
           (\ x__ y__ -> x__ {_LwisTracingMarkWriteFtraceEvent'value = y__}))
        Prelude.id
instance Data.ProtoLens.Message LwisTracingMarkWriteFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.LwisTracingMarkWriteFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\USLwisTracingMarkWriteFtraceEvent\DC2\ESC\n\
      \\tlwis_name\CAN\SOH \SOH(\tR\blwisName\DC2\DC2\n\
      \\EOTtype\CAN\STX \SOH(\rR\EOTtype\DC2\DLE\n\
      \\ETXpid\CAN\ETX \SOH(\ENQR\ETXpid\DC2\ESC\n\
      \\tfunc_name\CAN\EOT \SOH(\tR\bfuncName\DC2\DC4\n\
      \\ENQvalue\CAN\ENQ \SOH(\ETXR\ENQvalue"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        lwisName__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "lwis_name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'lwisName")) ::
              Data.ProtoLens.FieldDescriptor LwisTracingMarkWriteFtraceEvent
        type'__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "type"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'type'")) ::
              Data.ProtoLens.FieldDescriptor LwisTracingMarkWriteFtraceEvent
        pid__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "pid"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'pid")) ::
              Data.ProtoLens.FieldDescriptor LwisTracingMarkWriteFtraceEvent
        funcName__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "func_name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'funcName")) ::
              Data.ProtoLens.FieldDescriptor LwisTracingMarkWriteFtraceEvent
        value__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "value"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'value")) ::
              Data.ProtoLens.FieldDescriptor LwisTracingMarkWriteFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, lwisName__field_descriptor),
           (Data.ProtoLens.Tag 2, type'__field_descriptor),
           (Data.ProtoLens.Tag 3, pid__field_descriptor),
           (Data.ProtoLens.Tag 4, funcName__field_descriptor),
           (Data.ProtoLens.Tag 5, value__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _LwisTracingMarkWriteFtraceEvent'_unknownFields
        (\ x__ y__
           -> x__ {_LwisTracingMarkWriteFtraceEvent'_unknownFields = y__})
  defMessage
    = LwisTracingMarkWriteFtraceEvent'_constructor
        {_LwisTracingMarkWriteFtraceEvent'lwisName = Prelude.Nothing,
         _LwisTracingMarkWriteFtraceEvent'type' = Prelude.Nothing,
         _LwisTracingMarkWriteFtraceEvent'pid = Prelude.Nothing,
         _LwisTracingMarkWriteFtraceEvent'funcName = Prelude.Nothing,
         _LwisTracingMarkWriteFtraceEvent'value = Prelude.Nothing,
         _LwisTracingMarkWriteFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          LwisTracingMarkWriteFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser LwisTracingMarkWriteFtraceEvent
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
                                       "lwis_name"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"lwisName") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "type"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"type'") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "pid"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"pid") y x)
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
                                       "func_name"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"funcName") y x)
                        40
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
          "LwisTracingMarkWriteFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'lwisName") _x
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
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'type'") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          ((Prelude..)
                             Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'pid") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             ((Prelude..)
                                Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'funcName") _x
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
                              Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'value") _x
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
instance Control.DeepSeq.NFData LwisTracingMarkWriteFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_LwisTracingMarkWriteFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_LwisTracingMarkWriteFtraceEvent'lwisName x__)
                (Control.DeepSeq.deepseq
                   (_LwisTracingMarkWriteFtraceEvent'type' x__)
                   (Control.DeepSeq.deepseq
                      (_LwisTracingMarkWriteFtraceEvent'pid x__)
                      (Control.DeepSeq.deepseq
                         (_LwisTracingMarkWriteFtraceEvent'funcName x__)
                         (Control.DeepSeq.deepseq
                            (_LwisTracingMarkWriteFtraceEvent'value x__) ())))))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \'protos/perfetto/trace/ftrace/lwis.proto\DC2\SIperfetto.protos\"\151\SOH\n\
    \\USLwisTracingMarkWriteFtraceEvent\DC2\ESC\n\
    \\tlwis_name\CAN\SOH \SOH(\tR\blwisName\DC2\DC2\n\
    \\EOTtype\CAN\STX \SOH(\rR\EOTtype\DC2\DLE\n\
    \\ETXpid\CAN\ETX \SOH(\ENQR\ETXpid\DC2\ESC\n\
    \\tfunc_name\CAN\EOT \SOH(\tR\bfuncName\DC2\DC4\n\
    \\ENQvalue\CAN\ENQ \SOH(\ETXR\ENQvalueJ\230\ETX\n\
    \\ACK\DC2\EOT\EOT\NUL\r\SOH\n\
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
    \\ETX\EOT\NUL\SOH\DC2\ETX\a\b'\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\b\STX \n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\EOT\DC2\ETX\b\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX\b\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\b\DC2\ESC\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\b\RS\US\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX\t\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\EOT\DC2\ETX\t\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ENQ\DC2\ETX\t\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX\t\DC2\SYN\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX\t\EM\SUB\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETX\n\
    \\STX\EM\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\EOT\DC2\ETX\n\
    \\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ENQ\DC2\ETX\n\
    \\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETX\n\
    \\DC1\DC4\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETX\n\
    \\ETB\CAN\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\ETX\DC2\ETX\v\STX \n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\EOT\DC2\ETX\v\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ENQ\DC2\ETX\v\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\SOH\DC2\ETX\v\DC2\ESC\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ETX\DC2\ETX\v\RS\US\n\
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
    \\ENQ\EOT\NUL\STX\EOT\ETX\DC2\ETX\f\EM\SUB"