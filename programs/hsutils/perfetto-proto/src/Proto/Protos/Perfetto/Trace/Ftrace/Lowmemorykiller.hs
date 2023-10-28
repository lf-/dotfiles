{- This file was auto-generated from protos/perfetto/trace/ftrace/lowmemorykiller.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Protos.Perfetto.Trace.Ftrace.Lowmemorykiller (
        LowmemoryKillFtraceEvent()
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
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Lowmemorykiller_Fields.comm' @:: Lens' LowmemoryKillFtraceEvent Data.Text.Text@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Lowmemorykiller_Fields.maybe'comm' @:: Lens' LowmemoryKillFtraceEvent (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Lowmemorykiller_Fields.pid' @:: Lens' LowmemoryKillFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Lowmemorykiller_Fields.maybe'pid' @:: Lens' LowmemoryKillFtraceEvent (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Lowmemorykiller_Fields.pagecacheSize' @:: Lens' LowmemoryKillFtraceEvent Data.Int.Int64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Lowmemorykiller_Fields.maybe'pagecacheSize' @:: Lens' LowmemoryKillFtraceEvent (Prelude.Maybe Data.Int.Int64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Lowmemorykiller_Fields.pagecacheLimit' @:: Lens' LowmemoryKillFtraceEvent Data.Int.Int64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Lowmemorykiller_Fields.maybe'pagecacheLimit' @:: Lens' LowmemoryKillFtraceEvent (Prelude.Maybe Data.Int.Int64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Lowmemorykiller_Fields.free' @:: Lens' LowmemoryKillFtraceEvent Data.Int.Int64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Lowmemorykiller_Fields.maybe'free' @:: Lens' LowmemoryKillFtraceEvent (Prelude.Maybe Data.Int.Int64)@ -}
data LowmemoryKillFtraceEvent
  = LowmemoryKillFtraceEvent'_constructor {_LowmemoryKillFtraceEvent'comm :: !(Prelude.Maybe Data.Text.Text),
                                           _LowmemoryKillFtraceEvent'pid :: !(Prelude.Maybe Data.Int.Int32),
                                           _LowmemoryKillFtraceEvent'pagecacheSize :: !(Prelude.Maybe Data.Int.Int64),
                                           _LowmemoryKillFtraceEvent'pagecacheLimit :: !(Prelude.Maybe Data.Int.Int64),
                                           _LowmemoryKillFtraceEvent'free :: !(Prelude.Maybe Data.Int.Int64),
                                           _LowmemoryKillFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show LowmemoryKillFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField LowmemoryKillFtraceEvent "comm" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _LowmemoryKillFtraceEvent'comm
           (\ x__ y__ -> x__ {_LowmemoryKillFtraceEvent'comm = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField LowmemoryKillFtraceEvent "maybe'comm" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _LowmemoryKillFtraceEvent'comm
           (\ x__ y__ -> x__ {_LowmemoryKillFtraceEvent'comm = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField LowmemoryKillFtraceEvent "pid" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _LowmemoryKillFtraceEvent'pid
           (\ x__ y__ -> x__ {_LowmemoryKillFtraceEvent'pid = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField LowmemoryKillFtraceEvent "maybe'pid" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _LowmemoryKillFtraceEvent'pid
           (\ x__ y__ -> x__ {_LowmemoryKillFtraceEvent'pid = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField LowmemoryKillFtraceEvent "pagecacheSize" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _LowmemoryKillFtraceEvent'pagecacheSize
           (\ x__ y__ -> x__ {_LowmemoryKillFtraceEvent'pagecacheSize = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField LowmemoryKillFtraceEvent "maybe'pagecacheSize" (Prelude.Maybe Data.Int.Int64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _LowmemoryKillFtraceEvent'pagecacheSize
           (\ x__ y__ -> x__ {_LowmemoryKillFtraceEvent'pagecacheSize = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField LowmemoryKillFtraceEvent "pagecacheLimit" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _LowmemoryKillFtraceEvent'pagecacheLimit
           (\ x__ y__
              -> x__ {_LowmemoryKillFtraceEvent'pagecacheLimit = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField LowmemoryKillFtraceEvent "maybe'pagecacheLimit" (Prelude.Maybe Data.Int.Int64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _LowmemoryKillFtraceEvent'pagecacheLimit
           (\ x__ y__
              -> x__ {_LowmemoryKillFtraceEvent'pagecacheLimit = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField LowmemoryKillFtraceEvent "free" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _LowmemoryKillFtraceEvent'free
           (\ x__ y__ -> x__ {_LowmemoryKillFtraceEvent'free = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField LowmemoryKillFtraceEvent "maybe'free" (Prelude.Maybe Data.Int.Int64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _LowmemoryKillFtraceEvent'free
           (\ x__ y__ -> x__ {_LowmemoryKillFtraceEvent'free = y__}))
        Prelude.id
instance Data.ProtoLens.Message LowmemoryKillFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.LowmemoryKillFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\CANLowmemoryKillFtraceEvent\DC2\DC2\n\
      \\EOTcomm\CAN\SOH \SOH(\tR\EOTcomm\DC2\DLE\n\
      \\ETXpid\CAN\STX \SOH(\ENQR\ETXpid\DC2%\n\
      \\SOpagecache_size\CAN\ETX \SOH(\ETXR\rpagecacheSize\DC2'\n\
      \\SIpagecache_limit\CAN\EOT \SOH(\ETXR\SOpagecacheLimit\DC2\DC2\n\
      \\EOTfree\CAN\ENQ \SOH(\ETXR\EOTfree"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        comm__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "comm"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'comm")) ::
              Data.ProtoLens.FieldDescriptor LowmemoryKillFtraceEvent
        pid__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "pid"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'pid")) ::
              Data.ProtoLens.FieldDescriptor LowmemoryKillFtraceEvent
        pagecacheSize__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "pagecache_size"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'pagecacheSize")) ::
              Data.ProtoLens.FieldDescriptor LowmemoryKillFtraceEvent
        pagecacheLimit__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "pagecache_limit"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'pagecacheLimit")) ::
              Data.ProtoLens.FieldDescriptor LowmemoryKillFtraceEvent
        free__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "free"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'free")) ::
              Data.ProtoLens.FieldDescriptor LowmemoryKillFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, comm__field_descriptor),
           (Data.ProtoLens.Tag 2, pid__field_descriptor),
           (Data.ProtoLens.Tag 3, pagecacheSize__field_descriptor),
           (Data.ProtoLens.Tag 4, pagecacheLimit__field_descriptor),
           (Data.ProtoLens.Tag 5, free__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _LowmemoryKillFtraceEvent'_unknownFields
        (\ x__ y__ -> x__ {_LowmemoryKillFtraceEvent'_unknownFields = y__})
  defMessage
    = LowmemoryKillFtraceEvent'_constructor
        {_LowmemoryKillFtraceEvent'comm = Prelude.Nothing,
         _LowmemoryKillFtraceEvent'pid = Prelude.Nothing,
         _LowmemoryKillFtraceEvent'pagecacheSize = Prelude.Nothing,
         _LowmemoryKillFtraceEvent'pagecacheLimit = Prelude.Nothing,
         _LowmemoryKillFtraceEvent'free = Prelude.Nothing,
         _LowmemoryKillFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          LowmemoryKillFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser LowmemoryKillFtraceEvent
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
                                       "comm"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"comm") y x)
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
                                       "pagecache_size"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"pagecacheSize") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "pagecache_limit"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"pagecacheLimit") y x)
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "free"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"free") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "LowmemoryKillFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'comm") _x
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
                        Lens.Family2.view
                          (Data.ProtoLens.Field.field @"maybe'pagecacheSize") _x
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
                             (Data.ProtoLens.Field.field @"maybe'pagecacheLimit") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                                ((Prelude..)
                                   Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                      ((Data.Monoid.<>)
                         (case
                              Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'free") _x
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
instance Control.DeepSeq.NFData LowmemoryKillFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_LowmemoryKillFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_LowmemoryKillFtraceEvent'comm x__)
                (Control.DeepSeq.deepseq
                   (_LowmemoryKillFtraceEvent'pid x__)
                   (Control.DeepSeq.deepseq
                      (_LowmemoryKillFtraceEvent'pagecacheSize x__)
                      (Control.DeepSeq.deepseq
                         (_LowmemoryKillFtraceEvent'pagecacheLimit x__)
                         (Control.DeepSeq.deepseq
                            (_LowmemoryKillFtraceEvent'free x__) ())))))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \2protos/perfetto/trace/ftrace/lowmemorykiller.proto\DC2\SIperfetto.protos\"\164\SOH\n\
    \\CANLowmemoryKillFtraceEvent\DC2\DC2\n\
    \\EOTcomm\CAN\SOH \SOH(\tR\EOTcomm\DC2\DLE\n\
    \\ETXpid\CAN\STX \SOH(\ENQR\ETXpid\DC2%\n\
    \\SOpagecache_size\CAN\ETX \SOH(\ETXR\rpagecacheSize\DC2'\n\
    \\SIpagecache_limit\CAN\EOT \SOH(\ETXR\SOpagecacheLimit\DC2\DC2\n\
    \\EOTfree\CAN\ENQ \SOH(\ETXR\EOTfreeJ\230\ETX\n\
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
    \\ETX\EOT\NUL\SOH\DC2\ETX\a\b \n\
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
    \\STX$\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\EOT\DC2\ETX\n\
    \\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ENQ\DC2\ETX\n\
    \\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETX\n\
    \\DC1\US\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETX\n\
    \\"#\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\ETX\DC2\ETX\v\STX%\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\EOT\DC2\ETX\v\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ENQ\DC2\ETX\v\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\SOH\DC2\ETX\v\DC1 \n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ETX\DC2\ETX\v#$\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\EOT\DC2\ETX\f\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\EOT\DC2\ETX\f\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ENQ\DC2\ETX\f\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\SOH\DC2\ETX\f\DC1\NAK\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ETX\DC2\ETX\f\CAN\EM"