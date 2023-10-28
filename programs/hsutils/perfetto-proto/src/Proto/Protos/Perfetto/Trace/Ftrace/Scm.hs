{- This file was auto-generated from protos/perfetto/trace/ftrace/scm.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Protos.Perfetto.Trace.Ftrace.Scm (
        ScmCallEndFtraceEvent(), ScmCallStartFtraceEvent()
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
      -}
data ScmCallEndFtraceEvent
  = ScmCallEndFtraceEvent'_constructor {_ScmCallEndFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ScmCallEndFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Message ScmCallEndFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.ScmCallEndFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\NAKScmCallEndFtraceEvent"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag = let in Data.Map.fromList []
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ScmCallEndFtraceEvent'_unknownFields
        (\ x__ y__ -> x__ {_ScmCallEndFtraceEvent'_unknownFields = y__})
  defMessage
    = ScmCallEndFtraceEvent'_constructor
        {_ScmCallEndFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ScmCallEndFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser ScmCallEndFtraceEvent
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
          (do loop Data.ProtoLens.defMessage) "ScmCallEndFtraceEvent"
  buildMessage
    = \ _x
        -> Data.ProtoLens.Encoding.Wire.buildFieldSet
             (Lens.Family2.view Data.ProtoLens.unknownFields _x)
instance Control.DeepSeq.NFData ScmCallEndFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ScmCallEndFtraceEvent'_unknownFields x__) ()
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Scm_Fields.arginfo' @:: Lens' ScmCallStartFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Scm_Fields.maybe'arginfo' @:: Lens' ScmCallStartFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Scm_Fields.x0' @:: Lens' ScmCallStartFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Scm_Fields.maybe'x0' @:: Lens' ScmCallStartFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Scm_Fields.x5' @:: Lens' ScmCallStartFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Scm_Fields.maybe'x5' @:: Lens' ScmCallStartFtraceEvent (Prelude.Maybe Data.Word.Word64)@ -}
data ScmCallStartFtraceEvent
  = ScmCallStartFtraceEvent'_constructor {_ScmCallStartFtraceEvent'arginfo :: !(Prelude.Maybe Data.Word.Word32),
                                          _ScmCallStartFtraceEvent'x0 :: !(Prelude.Maybe Data.Word.Word64),
                                          _ScmCallStartFtraceEvent'x5 :: !(Prelude.Maybe Data.Word.Word64),
                                          _ScmCallStartFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ScmCallStartFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ScmCallStartFtraceEvent "arginfo" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScmCallStartFtraceEvent'arginfo
           (\ x__ y__ -> x__ {_ScmCallStartFtraceEvent'arginfo = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField ScmCallStartFtraceEvent "maybe'arginfo" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScmCallStartFtraceEvent'arginfo
           (\ x__ y__ -> x__ {_ScmCallStartFtraceEvent'arginfo = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ScmCallStartFtraceEvent "x0" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScmCallStartFtraceEvent'x0
           (\ x__ y__ -> x__ {_ScmCallStartFtraceEvent'x0 = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField ScmCallStartFtraceEvent "maybe'x0" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScmCallStartFtraceEvent'x0
           (\ x__ y__ -> x__ {_ScmCallStartFtraceEvent'x0 = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ScmCallStartFtraceEvent "x5" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScmCallStartFtraceEvent'x5
           (\ x__ y__ -> x__ {_ScmCallStartFtraceEvent'x5 = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField ScmCallStartFtraceEvent "maybe'x5" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ScmCallStartFtraceEvent'x5
           (\ x__ y__ -> x__ {_ScmCallStartFtraceEvent'x5 = y__}))
        Prelude.id
instance Data.ProtoLens.Message ScmCallStartFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.ScmCallStartFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\ETBScmCallStartFtraceEvent\DC2\CAN\n\
      \\aarginfo\CAN\SOH \SOH(\rR\aarginfo\DC2\SO\n\
      \\STXx0\CAN\STX \SOH(\EOTR\STXx0\DC2\SO\n\
      \\STXx5\CAN\ETX \SOH(\EOTR\STXx5"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        arginfo__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "arginfo"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'arginfo")) ::
              Data.ProtoLens.FieldDescriptor ScmCallStartFtraceEvent
        x0__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "x0"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'x0")) ::
              Data.ProtoLens.FieldDescriptor ScmCallStartFtraceEvent
        x5__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "x5"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'x5")) ::
              Data.ProtoLens.FieldDescriptor ScmCallStartFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, arginfo__field_descriptor),
           (Data.ProtoLens.Tag 2, x0__field_descriptor),
           (Data.ProtoLens.Tag 3, x5__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ScmCallStartFtraceEvent'_unknownFields
        (\ x__ y__ -> x__ {_ScmCallStartFtraceEvent'_unknownFields = y__})
  defMessage
    = ScmCallStartFtraceEvent'_constructor
        {_ScmCallStartFtraceEvent'arginfo = Prelude.Nothing,
         _ScmCallStartFtraceEvent'x0 = Prelude.Nothing,
         _ScmCallStartFtraceEvent'x5 = Prelude.Nothing,
         _ScmCallStartFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ScmCallStartFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser ScmCallStartFtraceEvent
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
                                       "arginfo"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"arginfo") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "x0"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"x0") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "x5"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"x5") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "ScmCallStartFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'arginfo") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       ((Prelude..)
                          Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'x0") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'x5") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData ScmCallStartFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ScmCallStartFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ScmCallStartFtraceEvent'arginfo x__)
                (Control.DeepSeq.deepseq
                   (_ScmCallStartFtraceEvent'x0 x__)
                   (Control.DeepSeq.deepseq (_ScmCallStartFtraceEvent'x5 x__) ())))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \&protos/perfetto/trace/ftrace/scm.proto\DC2\SIperfetto.protos\"S\n\
    \\ETBScmCallStartFtraceEvent\DC2\CAN\n\
    \\aarginfo\CAN\SOH \SOH(\rR\aarginfo\DC2\SO\n\
    \\STXx0\CAN\STX \SOH(\EOTR\STXx0\DC2\SO\n\
    \\STXx5\CAN\ETX \SOH(\EOTR\STXx5\"\ETB\n\
    \\NAKScmCallEndFtraceEventJ\243\STX\n\
    \\ACK\DC2\EOT\EOT\NUL\f \n\
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
    \\ETX\EOT\NUL\SOH\DC2\ETX\a\b\US\n\
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
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX\t\STX\EM\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\EOT\DC2\ETX\t\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ENQ\DC2\ETX\t\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX\t\DC2\DC4\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX\t\ETB\CAN\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETX\n\
    \\STX\EM\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\EOT\DC2\ETX\n\
    \\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ENQ\DC2\ETX\n\
    \\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETX\n\
    \\DC2\DC4\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETX\n\
    \\ETB\CAN\n\
    \\t\n\
    \\STX\EOT\SOH\DC2\ETX\f\NUL \n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX\f\b\GS"