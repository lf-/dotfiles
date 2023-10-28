{- This file was auto-generated from protos/perfetto/trace/ftrace/synthetic.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Protos.Perfetto.Trace.Ftrace.Synthetic (
        RssStatThrottledFtraceEvent(), SuspendResumeMinimalFtraceEvent()
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
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Synthetic_Fields.curr' @:: Lens' RssStatThrottledFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Synthetic_Fields.maybe'curr' @:: Lens' RssStatThrottledFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Synthetic_Fields.member' @:: Lens' RssStatThrottledFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Synthetic_Fields.maybe'member' @:: Lens' RssStatThrottledFtraceEvent (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Synthetic_Fields.mmId' @:: Lens' RssStatThrottledFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Synthetic_Fields.maybe'mmId' @:: Lens' RssStatThrottledFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Synthetic_Fields.size' @:: Lens' RssStatThrottledFtraceEvent Data.Int.Int64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Synthetic_Fields.maybe'size' @:: Lens' RssStatThrottledFtraceEvent (Prelude.Maybe Data.Int.Int64)@ -}
data RssStatThrottledFtraceEvent
  = RssStatThrottledFtraceEvent'_constructor {_RssStatThrottledFtraceEvent'curr :: !(Prelude.Maybe Data.Word.Word32),
                                              _RssStatThrottledFtraceEvent'member :: !(Prelude.Maybe Data.Int.Int32),
                                              _RssStatThrottledFtraceEvent'mmId :: !(Prelude.Maybe Data.Word.Word32),
                                              _RssStatThrottledFtraceEvent'size :: !(Prelude.Maybe Data.Int.Int64),
                                              _RssStatThrottledFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show RssStatThrottledFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField RssStatThrottledFtraceEvent "curr" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RssStatThrottledFtraceEvent'curr
           (\ x__ y__ -> x__ {_RssStatThrottledFtraceEvent'curr = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField RssStatThrottledFtraceEvent "maybe'curr" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RssStatThrottledFtraceEvent'curr
           (\ x__ y__ -> x__ {_RssStatThrottledFtraceEvent'curr = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RssStatThrottledFtraceEvent "member" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RssStatThrottledFtraceEvent'member
           (\ x__ y__ -> x__ {_RssStatThrottledFtraceEvent'member = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField RssStatThrottledFtraceEvent "maybe'member" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RssStatThrottledFtraceEvent'member
           (\ x__ y__ -> x__ {_RssStatThrottledFtraceEvent'member = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RssStatThrottledFtraceEvent "mmId" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RssStatThrottledFtraceEvent'mmId
           (\ x__ y__ -> x__ {_RssStatThrottledFtraceEvent'mmId = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField RssStatThrottledFtraceEvent "maybe'mmId" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RssStatThrottledFtraceEvent'mmId
           (\ x__ y__ -> x__ {_RssStatThrottledFtraceEvent'mmId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField RssStatThrottledFtraceEvent "size" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RssStatThrottledFtraceEvent'size
           (\ x__ y__ -> x__ {_RssStatThrottledFtraceEvent'size = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField RssStatThrottledFtraceEvent "maybe'size" (Prelude.Maybe Data.Int.Int64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _RssStatThrottledFtraceEvent'size
           (\ x__ y__ -> x__ {_RssStatThrottledFtraceEvent'size = y__}))
        Prelude.id
instance Data.ProtoLens.Message RssStatThrottledFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.RssStatThrottledFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\ESCRssStatThrottledFtraceEvent\DC2\DC2\n\
      \\EOTcurr\CAN\SOH \SOH(\rR\EOTcurr\DC2\SYN\n\
      \\ACKmember\CAN\STX \SOH(\ENQR\ACKmember\DC2\DC3\n\
      \\ENQmm_id\CAN\ETX \SOH(\rR\EOTmmId\DC2\DC2\n\
      \\EOTsize\CAN\EOT \SOH(\ETXR\EOTsize"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        curr__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "curr"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'curr")) ::
              Data.ProtoLens.FieldDescriptor RssStatThrottledFtraceEvent
        member__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "member"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'member")) ::
              Data.ProtoLens.FieldDescriptor RssStatThrottledFtraceEvent
        mmId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "mm_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'mmId")) ::
              Data.ProtoLens.FieldDescriptor RssStatThrottledFtraceEvent
        size__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "size"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'size")) ::
              Data.ProtoLens.FieldDescriptor RssStatThrottledFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, curr__field_descriptor),
           (Data.ProtoLens.Tag 2, member__field_descriptor),
           (Data.ProtoLens.Tag 3, mmId__field_descriptor),
           (Data.ProtoLens.Tag 4, size__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _RssStatThrottledFtraceEvent'_unknownFields
        (\ x__ y__
           -> x__ {_RssStatThrottledFtraceEvent'_unknownFields = y__})
  defMessage
    = RssStatThrottledFtraceEvent'_constructor
        {_RssStatThrottledFtraceEvent'curr = Prelude.Nothing,
         _RssStatThrottledFtraceEvent'member = Prelude.Nothing,
         _RssStatThrottledFtraceEvent'mmId = Prelude.Nothing,
         _RssStatThrottledFtraceEvent'size = Prelude.Nothing,
         _RssStatThrottledFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          RssStatThrottledFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser RssStatThrottledFtraceEvent
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
                                       "curr"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"curr") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "member"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"member") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "mm_id"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"mmId") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "size"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"size") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "RssStatThrottledFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'curr") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       ((Prelude..)
                          Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'member") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          ((Prelude..)
                             Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'mmId") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             ((Prelude..)
                                Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'size") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                                ((Prelude..)
                                   Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                      (Data.ProtoLens.Encoding.Wire.buildFieldSet
                         (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))
instance Control.DeepSeq.NFData RssStatThrottledFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_RssStatThrottledFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_RssStatThrottledFtraceEvent'curr x__)
                (Control.DeepSeq.deepseq
                   (_RssStatThrottledFtraceEvent'member x__)
                   (Control.DeepSeq.deepseq
                      (_RssStatThrottledFtraceEvent'mmId x__)
                      (Control.DeepSeq.deepseq
                         (_RssStatThrottledFtraceEvent'size x__) ()))))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Synthetic_Fields.start' @:: Lens' SuspendResumeMinimalFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Synthetic_Fields.maybe'start' @:: Lens' SuspendResumeMinimalFtraceEvent (Prelude.Maybe Data.Word.Word32)@ -}
data SuspendResumeMinimalFtraceEvent
  = SuspendResumeMinimalFtraceEvent'_constructor {_SuspendResumeMinimalFtraceEvent'start :: !(Prelude.Maybe Data.Word.Word32),
                                                  _SuspendResumeMinimalFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show SuspendResumeMinimalFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField SuspendResumeMinimalFtraceEvent "start" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SuspendResumeMinimalFtraceEvent'start
           (\ x__ y__ -> x__ {_SuspendResumeMinimalFtraceEvent'start = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField SuspendResumeMinimalFtraceEvent "maybe'start" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SuspendResumeMinimalFtraceEvent'start
           (\ x__ y__ -> x__ {_SuspendResumeMinimalFtraceEvent'start = y__}))
        Prelude.id
instance Data.ProtoLens.Message SuspendResumeMinimalFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.SuspendResumeMinimalFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\USSuspendResumeMinimalFtraceEvent\DC2\DC4\n\
      \\ENQstart\CAN\SOH \SOH(\rR\ENQstart"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        start__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "start"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'start")) ::
              Data.ProtoLens.FieldDescriptor SuspendResumeMinimalFtraceEvent
      in
        Data.Map.fromList [(Data.ProtoLens.Tag 1, start__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _SuspendResumeMinimalFtraceEvent'_unknownFields
        (\ x__ y__
           -> x__ {_SuspendResumeMinimalFtraceEvent'_unknownFields = y__})
  defMessage
    = SuspendResumeMinimalFtraceEvent'_constructor
        {_SuspendResumeMinimalFtraceEvent'start = Prelude.Nothing,
         _SuspendResumeMinimalFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          SuspendResumeMinimalFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser SuspendResumeMinimalFtraceEvent
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
                                       "start"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"start") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage)
          "SuspendResumeMinimalFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'start") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       ((Prelude..)
                          Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData SuspendResumeMinimalFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_SuspendResumeMinimalFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_SuspendResumeMinimalFtraceEvent'start x__) ())
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \,protos/perfetto/trace/ftrace/synthetic.proto\DC2\SIperfetto.protos\"r\n\
    \\ESCRssStatThrottledFtraceEvent\DC2\DC2\n\
    \\EOTcurr\CAN\SOH \SOH(\rR\EOTcurr\DC2\SYN\n\
    \\ACKmember\CAN\STX \SOH(\ENQR\ACKmember\DC2\DC3\n\
    \\ENQmm_id\CAN\ETX \SOH(\rR\EOTmmId\DC2\DC2\n\
    \\EOTsize\CAN\EOT \SOH(\ETXR\EOTsize\"7\n\
    \\USSuspendResumeMinimalFtraceEvent\DC2\DC4\n\
    \\ENQstart\CAN\SOH \SOH(\rR\ENQstartJ\254\ETX\n\
    \\ACK\DC2\EOT\EOT\NUL\SI\SOH\n\
    \a\n\
    \\SOH\f\DC2\ETX\EOT\NUL\DC22W Autogenerated by:\n\
    \ ../../src/tools/ftrace_proto_gen/ftrace_proto_gen.cc\n\
    \ Do not edit.\n\
    \\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\ENQ\NUL\CAN\n\
    \\n\
    \\n\
    \\STX\EOT\NUL\DC2\EOT\a\NUL\f\SOH\n\
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
    \\v\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX\t\STX\FS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\EOT\DC2\ETX\t\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ENQ\DC2\ETX\t\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX\t\DC1\ETB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX\t\SUB\ESC\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETX\n\
    \\STX\FS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\EOT\DC2\ETX\n\
    \\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ENQ\DC2\ETX\n\
    \\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETX\n\
    \\DC2\ETB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETX\n\
    \\SUB\ESC\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\ETX\DC2\ETX\v\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\EOT\DC2\ETX\v\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ENQ\DC2\ETX\v\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\SOH\DC2\ETX\v\DC1\NAK\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ETX\DC2\ETX\v\CAN\EM\n\
    \\n\
    \\n\
    \\STX\EOT\SOH\DC2\EOT\r\NUL\SI\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX\r\b'\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETX\SO\STX\FS\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\EOT\DC2\ETX\SO\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ENQ\DC2\ETX\SO\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETX\SO\DC2\ETB\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETX\SO\SUB\ESC"