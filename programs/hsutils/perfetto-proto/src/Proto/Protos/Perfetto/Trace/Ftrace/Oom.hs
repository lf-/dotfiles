{- This file was auto-generated from protos/perfetto/trace/ftrace/oom.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Protos.Perfetto.Trace.Ftrace.Oom (
        MarkVictimFtraceEvent(), OomScoreAdjUpdateFtraceEvent()
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
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Oom_Fields.pid' @:: Lens' MarkVictimFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Oom_Fields.maybe'pid' @:: Lens' MarkVictimFtraceEvent (Prelude.Maybe Data.Int.Int32)@ -}
data MarkVictimFtraceEvent
  = MarkVictimFtraceEvent'_constructor {_MarkVictimFtraceEvent'pid :: !(Prelude.Maybe Data.Int.Int32),
                                        _MarkVictimFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MarkVictimFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField MarkVictimFtraceEvent "pid" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MarkVictimFtraceEvent'pid
           (\ x__ y__ -> x__ {_MarkVictimFtraceEvent'pid = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MarkVictimFtraceEvent "maybe'pid" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MarkVictimFtraceEvent'pid
           (\ x__ y__ -> x__ {_MarkVictimFtraceEvent'pid = y__}))
        Prelude.id
instance Data.ProtoLens.Message MarkVictimFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.MarkVictimFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\NAKMarkVictimFtraceEvent\DC2\DLE\n\
      \\ETXpid\CAN\SOH \SOH(\ENQR\ETXpid"
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
              Data.ProtoLens.FieldDescriptor MarkVictimFtraceEvent
      in
        Data.Map.fromList [(Data.ProtoLens.Tag 1, pid__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MarkVictimFtraceEvent'_unknownFields
        (\ x__ y__ -> x__ {_MarkVictimFtraceEvent'_unknownFields = y__})
  defMessage
    = MarkVictimFtraceEvent'_constructor
        {_MarkVictimFtraceEvent'pid = Prelude.Nothing,
         _MarkVictimFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MarkVictimFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser MarkVictimFtraceEvent
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
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "MarkVictimFtraceEvent"
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
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData MarkVictimFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MarkVictimFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq (_MarkVictimFtraceEvent'pid x__) ())
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Oom_Fields.comm' @:: Lens' OomScoreAdjUpdateFtraceEvent Data.Text.Text@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Oom_Fields.maybe'comm' @:: Lens' OomScoreAdjUpdateFtraceEvent (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Oom_Fields.oomScoreAdj' @:: Lens' OomScoreAdjUpdateFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Oom_Fields.maybe'oomScoreAdj' @:: Lens' OomScoreAdjUpdateFtraceEvent (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Oom_Fields.pid' @:: Lens' OomScoreAdjUpdateFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Oom_Fields.maybe'pid' @:: Lens' OomScoreAdjUpdateFtraceEvent (Prelude.Maybe Data.Int.Int32)@ -}
data OomScoreAdjUpdateFtraceEvent
  = OomScoreAdjUpdateFtraceEvent'_constructor {_OomScoreAdjUpdateFtraceEvent'comm :: !(Prelude.Maybe Data.Text.Text),
                                               _OomScoreAdjUpdateFtraceEvent'oomScoreAdj :: !(Prelude.Maybe Data.Int.Int32),
                                               _OomScoreAdjUpdateFtraceEvent'pid :: !(Prelude.Maybe Data.Int.Int32),
                                               _OomScoreAdjUpdateFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show OomScoreAdjUpdateFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField OomScoreAdjUpdateFtraceEvent "comm" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _OomScoreAdjUpdateFtraceEvent'comm
           (\ x__ y__ -> x__ {_OomScoreAdjUpdateFtraceEvent'comm = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField OomScoreAdjUpdateFtraceEvent "maybe'comm" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _OomScoreAdjUpdateFtraceEvent'comm
           (\ x__ y__ -> x__ {_OomScoreAdjUpdateFtraceEvent'comm = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField OomScoreAdjUpdateFtraceEvent "oomScoreAdj" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _OomScoreAdjUpdateFtraceEvent'oomScoreAdj
           (\ x__ y__
              -> x__ {_OomScoreAdjUpdateFtraceEvent'oomScoreAdj = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField OomScoreAdjUpdateFtraceEvent "maybe'oomScoreAdj" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _OomScoreAdjUpdateFtraceEvent'oomScoreAdj
           (\ x__ y__
              -> x__ {_OomScoreAdjUpdateFtraceEvent'oomScoreAdj = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField OomScoreAdjUpdateFtraceEvent "pid" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _OomScoreAdjUpdateFtraceEvent'pid
           (\ x__ y__ -> x__ {_OomScoreAdjUpdateFtraceEvent'pid = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField OomScoreAdjUpdateFtraceEvent "maybe'pid" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _OomScoreAdjUpdateFtraceEvent'pid
           (\ x__ y__ -> x__ {_OomScoreAdjUpdateFtraceEvent'pid = y__}))
        Prelude.id
instance Data.ProtoLens.Message OomScoreAdjUpdateFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.OomScoreAdjUpdateFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\FSOomScoreAdjUpdateFtraceEvent\DC2\DC2\n\
      \\EOTcomm\CAN\SOH \SOH(\tR\EOTcomm\DC2\"\n\
      \\room_score_adj\CAN\STX \SOH(\ENQR\voomScoreAdj\DC2\DLE\n\
      \\ETXpid\CAN\ETX \SOH(\ENQR\ETXpid"
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
              Data.ProtoLens.FieldDescriptor OomScoreAdjUpdateFtraceEvent
        oomScoreAdj__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "oom_score_adj"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'oomScoreAdj")) ::
              Data.ProtoLens.FieldDescriptor OomScoreAdjUpdateFtraceEvent
        pid__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "pid"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'pid")) ::
              Data.ProtoLens.FieldDescriptor OomScoreAdjUpdateFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, comm__field_descriptor),
           (Data.ProtoLens.Tag 2, oomScoreAdj__field_descriptor),
           (Data.ProtoLens.Tag 3, pid__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _OomScoreAdjUpdateFtraceEvent'_unknownFields
        (\ x__ y__
           -> x__ {_OomScoreAdjUpdateFtraceEvent'_unknownFields = y__})
  defMessage
    = OomScoreAdjUpdateFtraceEvent'_constructor
        {_OomScoreAdjUpdateFtraceEvent'comm = Prelude.Nothing,
         _OomScoreAdjUpdateFtraceEvent'oomScoreAdj = Prelude.Nothing,
         _OomScoreAdjUpdateFtraceEvent'pid = Prelude.Nothing,
         _OomScoreAdjUpdateFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          OomScoreAdjUpdateFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser OomScoreAdjUpdateFtraceEvent
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
                                       "oom_score_adj"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"oomScoreAdj") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "pid"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"pid") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "OomScoreAdjUpdateFtraceEvent"
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
                     Lens.Family2.view
                       (Data.ProtoLens.Field.field @"maybe'oomScoreAdj") _x
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
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData OomScoreAdjUpdateFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_OomScoreAdjUpdateFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_OomScoreAdjUpdateFtraceEvent'comm x__)
                (Control.DeepSeq.deepseq
                   (_OomScoreAdjUpdateFtraceEvent'oomScoreAdj x__)
                   (Control.DeepSeq.deepseq
                      (_OomScoreAdjUpdateFtraceEvent'pid x__) ())))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \&protos/perfetto/trace/ftrace/oom.proto\DC2\SIperfetto.protos\"h\n\
    \\FSOomScoreAdjUpdateFtraceEvent\DC2\DC2\n\
    \\EOTcomm\CAN\SOH \SOH(\tR\EOTcomm\DC2\"\n\
    \\room_score_adj\CAN\STX \SOH(\ENQR\voomScoreAdj\DC2\DLE\n\
    \\ETXpid\CAN\ETX \SOH(\ENQR\ETXpid\")\n\
    \\NAKMarkVictimFtraceEvent\DC2\DLE\n\
    \\ETXpid\CAN\SOH \SOH(\ENQR\ETXpidJ\185\ETX\n\
    \\ACK\DC2\EOT\EOT\NUL\SO\SOH\n\
    \a\n\
    \\SOH\f\DC2\ETX\EOT\NUL\DC22W Autogenerated by:\n\
    \ ../../src/tools/ftrace_proto_gen/ftrace_proto_gen.cc\n\
    \ Do not edit.\n\
    \\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\ENQ\NUL\CAN\n\
    \\n\
    \\n\
    \\STX\EOT\NUL\DC2\EOT\a\NUL\v\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\a\b$\n\
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
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX\t\STX#\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\EOT\DC2\ETX\t\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ENQ\DC2\ETX\t\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX\t\DC1\RS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX\t!\"\n\
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
    \\n\
    \\n\
    \\STX\EOT\SOH\DC2\EOT\f\NUL\SO\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX\f\b\GS\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETX\r\STX\EM\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\EOT\DC2\ETX\r\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ENQ\DC2\ETX\r\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETX\r\DC1\DC4\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETX\r\ETB\CAN"