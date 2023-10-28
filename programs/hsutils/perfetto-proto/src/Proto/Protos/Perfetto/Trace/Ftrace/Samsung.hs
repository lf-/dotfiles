{- This file was auto-generated from protos/perfetto/trace/ftrace/samsung.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Protos.Perfetto.Trace.Ftrace.Samsung (
        SamsungTracingMarkWriteFtraceEvent()
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
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Samsung_Fields.pid' @:: Lens' SamsungTracingMarkWriteFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Samsung_Fields.maybe'pid' @:: Lens' SamsungTracingMarkWriteFtraceEvent (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Samsung_Fields.traceName' @:: Lens' SamsungTracingMarkWriteFtraceEvent Data.Text.Text@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Samsung_Fields.maybe'traceName' @:: Lens' SamsungTracingMarkWriteFtraceEvent (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Samsung_Fields.traceBegin' @:: Lens' SamsungTracingMarkWriteFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Samsung_Fields.maybe'traceBegin' @:: Lens' SamsungTracingMarkWriteFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Samsung_Fields.traceType' @:: Lens' SamsungTracingMarkWriteFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Samsung_Fields.maybe'traceType' @:: Lens' SamsungTracingMarkWriteFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Samsung_Fields.value' @:: Lens' SamsungTracingMarkWriteFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Samsung_Fields.maybe'value' @:: Lens' SamsungTracingMarkWriteFtraceEvent (Prelude.Maybe Data.Int.Int32)@ -}
data SamsungTracingMarkWriteFtraceEvent
  = SamsungTracingMarkWriteFtraceEvent'_constructor {_SamsungTracingMarkWriteFtraceEvent'pid :: !(Prelude.Maybe Data.Int.Int32),
                                                     _SamsungTracingMarkWriteFtraceEvent'traceName :: !(Prelude.Maybe Data.Text.Text),
                                                     _SamsungTracingMarkWriteFtraceEvent'traceBegin :: !(Prelude.Maybe Data.Word.Word32),
                                                     _SamsungTracingMarkWriteFtraceEvent'traceType :: !(Prelude.Maybe Data.Word.Word32),
                                                     _SamsungTracingMarkWriteFtraceEvent'value :: !(Prelude.Maybe Data.Int.Int32),
                                                     _SamsungTracingMarkWriteFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show SamsungTracingMarkWriteFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField SamsungTracingMarkWriteFtraceEvent "pid" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SamsungTracingMarkWriteFtraceEvent'pid
           (\ x__ y__ -> x__ {_SamsungTracingMarkWriteFtraceEvent'pid = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField SamsungTracingMarkWriteFtraceEvent "maybe'pid" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SamsungTracingMarkWriteFtraceEvent'pid
           (\ x__ y__ -> x__ {_SamsungTracingMarkWriteFtraceEvent'pid = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SamsungTracingMarkWriteFtraceEvent "traceName" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SamsungTracingMarkWriteFtraceEvent'traceName
           (\ x__ y__
              -> x__ {_SamsungTracingMarkWriteFtraceEvent'traceName = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField SamsungTracingMarkWriteFtraceEvent "maybe'traceName" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SamsungTracingMarkWriteFtraceEvent'traceName
           (\ x__ y__
              -> x__ {_SamsungTracingMarkWriteFtraceEvent'traceName = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SamsungTracingMarkWriteFtraceEvent "traceBegin" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SamsungTracingMarkWriteFtraceEvent'traceBegin
           (\ x__ y__
              -> x__ {_SamsungTracingMarkWriteFtraceEvent'traceBegin = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField SamsungTracingMarkWriteFtraceEvent "maybe'traceBegin" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SamsungTracingMarkWriteFtraceEvent'traceBegin
           (\ x__ y__
              -> x__ {_SamsungTracingMarkWriteFtraceEvent'traceBegin = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SamsungTracingMarkWriteFtraceEvent "traceType" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SamsungTracingMarkWriteFtraceEvent'traceType
           (\ x__ y__
              -> x__ {_SamsungTracingMarkWriteFtraceEvent'traceType = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField SamsungTracingMarkWriteFtraceEvent "maybe'traceType" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SamsungTracingMarkWriteFtraceEvent'traceType
           (\ x__ y__
              -> x__ {_SamsungTracingMarkWriteFtraceEvent'traceType = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SamsungTracingMarkWriteFtraceEvent "value" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SamsungTracingMarkWriteFtraceEvent'value
           (\ x__ y__
              -> x__ {_SamsungTracingMarkWriteFtraceEvent'value = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField SamsungTracingMarkWriteFtraceEvent "maybe'value" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SamsungTracingMarkWriteFtraceEvent'value
           (\ x__ y__
              -> x__ {_SamsungTracingMarkWriteFtraceEvent'value = y__}))
        Prelude.id
instance Data.ProtoLens.Message SamsungTracingMarkWriteFtraceEvent where
  messageName _
    = Data.Text.pack
        "perfetto.protos.SamsungTracingMarkWriteFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\"SamsungTracingMarkWriteFtraceEvent\DC2\DLE\n\
      \\ETXpid\CAN\SOH \SOH(\ENQR\ETXpid\DC2\GS\n\
      \\n\
      \trace_name\CAN\STX \SOH(\tR\ttraceName\DC2\US\n\
      \\vtrace_begin\CAN\ETX \SOH(\rR\n\
      \traceBegin\DC2\GS\n\
      \\n\
      \trace_type\CAN\EOT \SOH(\rR\ttraceType\DC2\DC4\n\
      \\ENQvalue\CAN\ENQ \SOH(\ENQR\ENQvalue"
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
              Data.ProtoLens.FieldDescriptor SamsungTracingMarkWriteFtraceEvent
        traceName__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "trace_name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'traceName")) ::
              Data.ProtoLens.FieldDescriptor SamsungTracingMarkWriteFtraceEvent
        traceBegin__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "trace_begin"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'traceBegin")) ::
              Data.ProtoLens.FieldDescriptor SamsungTracingMarkWriteFtraceEvent
        traceType__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "trace_type"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'traceType")) ::
              Data.ProtoLens.FieldDescriptor SamsungTracingMarkWriteFtraceEvent
        value__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "value"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'value")) ::
              Data.ProtoLens.FieldDescriptor SamsungTracingMarkWriteFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, pid__field_descriptor),
           (Data.ProtoLens.Tag 2, traceName__field_descriptor),
           (Data.ProtoLens.Tag 3, traceBegin__field_descriptor),
           (Data.ProtoLens.Tag 4, traceType__field_descriptor),
           (Data.ProtoLens.Tag 5, value__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _SamsungTracingMarkWriteFtraceEvent'_unknownFields
        (\ x__ y__
           -> x__ {_SamsungTracingMarkWriteFtraceEvent'_unknownFields = y__})
  defMessage
    = SamsungTracingMarkWriteFtraceEvent'_constructor
        {_SamsungTracingMarkWriteFtraceEvent'pid = Prelude.Nothing,
         _SamsungTracingMarkWriteFtraceEvent'traceName = Prelude.Nothing,
         _SamsungTracingMarkWriteFtraceEvent'traceBegin = Prelude.Nothing,
         _SamsungTracingMarkWriteFtraceEvent'traceType = Prelude.Nothing,
         _SamsungTracingMarkWriteFtraceEvent'value = Prelude.Nothing,
         _SamsungTracingMarkWriteFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          SamsungTracingMarkWriteFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser SamsungTracingMarkWriteFtraceEvent
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
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "trace_type"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"traceType") y x)
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
          "SamsungTracingMarkWriteFtraceEvent"
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
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view
                             (Data.ProtoLens.Field.field @"maybe'traceType") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                                ((Prelude..)
                                   Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
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
instance Control.DeepSeq.NFData SamsungTracingMarkWriteFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_SamsungTracingMarkWriteFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_SamsungTracingMarkWriteFtraceEvent'pid x__)
                (Control.DeepSeq.deepseq
                   (_SamsungTracingMarkWriteFtraceEvent'traceName x__)
                   (Control.DeepSeq.deepseq
                      (_SamsungTracingMarkWriteFtraceEvent'traceBegin x__)
                      (Control.DeepSeq.deepseq
                         (_SamsungTracingMarkWriteFtraceEvent'traceType x__)
                         (Control.DeepSeq.deepseq
                            (_SamsungTracingMarkWriteFtraceEvent'value x__) ())))))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \*protos/perfetto/trace/ftrace/samsung.proto\DC2\SIperfetto.protos\"\171\SOH\n\
    \\"SamsungTracingMarkWriteFtraceEvent\DC2\DLE\n\
    \\ETXpid\CAN\SOH \SOH(\ENQR\ETXpid\DC2\GS\n\
    \\n\
    \trace_name\CAN\STX \SOH(\tR\ttraceName\DC2\US\n\
    \\vtrace_begin\CAN\ETX \SOH(\rR\n\
    \traceBegin\DC2\GS\n\
    \\n\
    \trace_type\CAN\EOT \SOH(\rR\ttraceType\DC2\DC4\n\
    \\ENQvalue\CAN\ENQ \SOH(\ENQR\ENQvalueJ\230\ETX\n\
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
    \\ETX\EOT\NUL\SOH\DC2\ETX\a\b*\n\
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
    \\STX\"\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\EOT\DC2\ETX\n\
    \\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ENQ\DC2\ETX\n\
    \\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETX\n\
    \\DC2\GS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETX\n\
    \ !\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\ETX\DC2\ETX\v\STX!\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\EOT\DC2\ETX\v\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ENQ\DC2\ETX\v\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\SOH\DC2\ETX\v\DC2\FS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ETX\DC2\ETX\v\US \n\
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