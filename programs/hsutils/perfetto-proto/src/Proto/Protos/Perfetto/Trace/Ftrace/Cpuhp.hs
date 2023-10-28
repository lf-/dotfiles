{- This file was auto-generated from protos/perfetto/trace/ftrace/cpuhp.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Protos.Perfetto.Trace.Ftrace.Cpuhp (
        CpuhpEnterFtraceEvent(), CpuhpExitFtraceEvent(),
        CpuhpLatencyFtraceEvent(), CpuhpMultiEnterFtraceEvent(),
        CpuhpPauseFtraceEvent()
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
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Cpuhp_Fields.cpu' @:: Lens' CpuhpEnterFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Cpuhp_Fields.maybe'cpu' @:: Lens' CpuhpEnterFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Cpuhp_Fields.fun' @:: Lens' CpuhpEnterFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Cpuhp_Fields.maybe'fun' @:: Lens' CpuhpEnterFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Cpuhp_Fields.idx' @:: Lens' CpuhpEnterFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Cpuhp_Fields.maybe'idx' @:: Lens' CpuhpEnterFtraceEvent (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Cpuhp_Fields.target' @:: Lens' CpuhpEnterFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Cpuhp_Fields.maybe'target' @:: Lens' CpuhpEnterFtraceEvent (Prelude.Maybe Data.Int.Int32)@ -}
data CpuhpEnterFtraceEvent
  = CpuhpEnterFtraceEvent'_constructor {_CpuhpEnterFtraceEvent'cpu :: !(Prelude.Maybe Data.Word.Word32),
                                        _CpuhpEnterFtraceEvent'fun :: !(Prelude.Maybe Data.Word.Word64),
                                        _CpuhpEnterFtraceEvent'idx :: !(Prelude.Maybe Data.Int.Int32),
                                        _CpuhpEnterFtraceEvent'target :: !(Prelude.Maybe Data.Int.Int32),
                                        _CpuhpEnterFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show CpuhpEnterFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField CpuhpEnterFtraceEvent "cpu" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CpuhpEnterFtraceEvent'cpu
           (\ x__ y__ -> x__ {_CpuhpEnterFtraceEvent'cpu = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField CpuhpEnterFtraceEvent "maybe'cpu" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CpuhpEnterFtraceEvent'cpu
           (\ x__ y__ -> x__ {_CpuhpEnterFtraceEvent'cpu = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CpuhpEnterFtraceEvent "fun" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CpuhpEnterFtraceEvent'fun
           (\ x__ y__ -> x__ {_CpuhpEnterFtraceEvent'fun = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField CpuhpEnterFtraceEvent "maybe'fun" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CpuhpEnterFtraceEvent'fun
           (\ x__ y__ -> x__ {_CpuhpEnterFtraceEvent'fun = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CpuhpEnterFtraceEvent "idx" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CpuhpEnterFtraceEvent'idx
           (\ x__ y__ -> x__ {_CpuhpEnterFtraceEvent'idx = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField CpuhpEnterFtraceEvent "maybe'idx" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CpuhpEnterFtraceEvent'idx
           (\ x__ y__ -> x__ {_CpuhpEnterFtraceEvent'idx = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CpuhpEnterFtraceEvent "target" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CpuhpEnterFtraceEvent'target
           (\ x__ y__ -> x__ {_CpuhpEnterFtraceEvent'target = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField CpuhpEnterFtraceEvent "maybe'target" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CpuhpEnterFtraceEvent'target
           (\ x__ y__ -> x__ {_CpuhpEnterFtraceEvent'target = y__}))
        Prelude.id
instance Data.ProtoLens.Message CpuhpEnterFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.CpuhpEnterFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\NAKCpuhpEnterFtraceEvent\DC2\DLE\n\
      \\ETXcpu\CAN\SOH \SOH(\rR\ETXcpu\DC2\DLE\n\
      \\ETXfun\CAN\STX \SOH(\EOTR\ETXfun\DC2\DLE\n\
      \\ETXidx\CAN\ETX \SOH(\ENQR\ETXidx\DC2\SYN\n\
      \\ACKtarget\CAN\EOT \SOH(\ENQR\ACKtarget"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        cpu__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "cpu"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'cpu")) ::
              Data.ProtoLens.FieldDescriptor CpuhpEnterFtraceEvent
        fun__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "fun"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'fun")) ::
              Data.ProtoLens.FieldDescriptor CpuhpEnterFtraceEvent
        idx__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "idx"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'idx")) ::
              Data.ProtoLens.FieldDescriptor CpuhpEnterFtraceEvent
        target__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "target"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'target")) ::
              Data.ProtoLens.FieldDescriptor CpuhpEnterFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, cpu__field_descriptor),
           (Data.ProtoLens.Tag 2, fun__field_descriptor),
           (Data.ProtoLens.Tag 3, idx__field_descriptor),
           (Data.ProtoLens.Tag 4, target__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _CpuhpEnterFtraceEvent'_unknownFields
        (\ x__ y__ -> x__ {_CpuhpEnterFtraceEvent'_unknownFields = y__})
  defMessage
    = CpuhpEnterFtraceEvent'_constructor
        {_CpuhpEnterFtraceEvent'cpu = Prelude.Nothing,
         _CpuhpEnterFtraceEvent'fun = Prelude.Nothing,
         _CpuhpEnterFtraceEvent'idx = Prelude.Nothing,
         _CpuhpEnterFtraceEvent'target = Prelude.Nothing,
         _CpuhpEnterFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          CpuhpEnterFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser CpuhpEnterFtraceEvent
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
                                       "cpu"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"cpu") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "fun"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"fun") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "idx"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"idx") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "target"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"target") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "CpuhpEnterFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'cpu") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       ((Prelude..)
                          Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'fun") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'idx") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             ((Prelude..)
                                Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'target") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                                ((Prelude..)
                                   Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                      (Data.ProtoLens.Encoding.Wire.buildFieldSet
                         (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))
instance Control.DeepSeq.NFData CpuhpEnterFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_CpuhpEnterFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_CpuhpEnterFtraceEvent'cpu x__)
                (Control.DeepSeq.deepseq
                   (_CpuhpEnterFtraceEvent'fun x__)
                   (Control.DeepSeq.deepseq
                      (_CpuhpEnterFtraceEvent'idx x__)
                      (Control.DeepSeq.deepseq (_CpuhpEnterFtraceEvent'target x__) ()))))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Cpuhp_Fields.cpu' @:: Lens' CpuhpExitFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Cpuhp_Fields.maybe'cpu' @:: Lens' CpuhpExitFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Cpuhp_Fields.idx' @:: Lens' CpuhpExitFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Cpuhp_Fields.maybe'idx' @:: Lens' CpuhpExitFtraceEvent (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Cpuhp_Fields.ret' @:: Lens' CpuhpExitFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Cpuhp_Fields.maybe'ret' @:: Lens' CpuhpExitFtraceEvent (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Cpuhp_Fields.state' @:: Lens' CpuhpExitFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Cpuhp_Fields.maybe'state' @:: Lens' CpuhpExitFtraceEvent (Prelude.Maybe Data.Int.Int32)@ -}
data CpuhpExitFtraceEvent
  = CpuhpExitFtraceEvent'_constructor {_CpuhpExitFtraceEvent'cpu :: !(Prelude.Maybe Data.Word.Word32),
                                       _CpuhpExitFtraceEvent'idx :: !(Prelude.Maybe Data.Int.Int32),
                                       _CpuhpExitFtraceEvent'ret :: !(Prelude.Maybe Data.Int.Int32),
                                       _CpuhpExitFtraceEvent'state :: !(Prelude.Maybe Data.Int.Int32),
                                       _CpuhpExitFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show CpuhpExitFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField CpuhpExitFtraceEvent "cpu" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CpuhpExitFtraceEvent'cpu
           (\ x__ y__ -> x__ {_CpuhpExitFtraceEvent'cpu = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField CpuhpExitFtraceEvent "maybe'cpu" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CpuhpExitFtraceEvent'cpu
           (\ x__ y__ -> x__ {_CpuhpExitFtraceEvent'cpu = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CpuhpExitFtraceEvent "idx" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CpuhpExitFtraceEvent'idx
           (\ x__ y__ -> x__ {_CpuhpExitFtraceEvent'idx = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField CpuhpExitFtraceEvent "maybe'idx" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CpuhpExitFtraceEvent'idx
           (\ x__ y__ -> x__ {_CpuhpExitFtraceEvent'idx = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CpuhpExitFtraceEvent "ret" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CpuhpExitFtraceEvent'ret
           (\ x__ y__ -> x__ {_CpuhpExitFtraceEvent'ret = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField CpuhpExitFtraceEvent "maybe'ret" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CpuhpExitFtraceEvent'ret
           (\ x__ y__ -> x__ {_CpuhpExitFtraceEvent'ret = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CpuhpExitFtraceEvent "state" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CpuhpExitFtraceEvent'state
           (\ x__ y__ -> x__ {_CpuhpExitFtraceEvent'state = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField CpuhpExitFtraceEvent "maybe'state" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CpuhpExitFtraceEvent'state
           (\ x__ y__ -> x__ {_CpuhpExitFtraceEvent'state = y__}))
        Prelude.id
instance Data.ProtoLens.Message CpuhpExitFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.CpuhpExitFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\DC4CpuhpExitFtraceEvent\DC2\DLE\n\
      \\ETXcpu\CAN\SOH \SOH(\rR\ETXcpu\DC2\DLE\n\
      \\ETXidx\CAN\STX \SOH(\ENQR\ETXidx\DC2\DLE\n\
      \\ETXret\CAN\ETX \SOH(\ENQR\ETXret\DC2\DC4\n\
      \\ENQstate\CAN\EOT \SOH(\ENQR\ENQstate"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        cpu__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "cpu"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'cpu")) ::
              Data.ProtoLens.FieldDescriptor CpuhpExitFtraceEvent
        idx__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "idx"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'idx")) ::
              Data.ProtoLens.FieldDescriptor CpuhpExitFtraceEvent
        ret__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "ret"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'ret")) ::
              Data.ProtoLens.FieldDescriptor CpuhpExitFtraceEvent
        state__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "state"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'state")) ::
              Data.ProtoLens.FieldDescriptor CpuhpExitFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, cpu__field_descriptor),
           (Data.ProtoLens.Tag 2, idx__field_descriptor),
           (Data.ProtoLens.Tag 3, ret__field_descriptor),
           (Data.ProtoLens.Tag 4, state__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _CpuhpExitFtraceEvent'_unknownFields
        (\ x__ y__ -> x__ {_CpuhpExitFtraceEvent'_unknownFields = y__})
  defMessage
    = CpuhpExitFtraceEvent'_constructor
        {_CpuhpExitFtraceEvent'cpu = Prelude.Nothing,
         _CpuhpExitFtraceEvent'idx = Prelude.Nothing,
         _CpuhpExitFtraceEvent'ret = Prelude.Nothing,
         _CpuhpExitFtraceEvent'state = Prelude.Nothing,
         _CpuhpExitFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          CpuhpExitFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser CpuhpExitFtraceEvent
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
                                       "cpu"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"cpu") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "idx"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"idx") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "ret"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"ret") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "state"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"state") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "CpuhpExitFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'cpu") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       ((Prelude..)
                          Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'idx") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          ((Prelude..)
                             Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'ret") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             ((Prelude..)
                                Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'state") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                                ((Prelude..)
                                   Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                      (Data.ProtoLens.Encoding.Wire.buildFieldSet
                         (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))
instance Control.DeepSeq.NFData CpuhpExitFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_CpuhpExitFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_CpuhpExitFtraceEvent'cpu x__)
                (Control.DeepSeq.deepseq
                   (_CpuhpExitFtraceEvent'idx x__)
                   (Control.DeepSeq.deepseq
                      (_CpuhpExitFtraceEvent'ret x__)
                      (Control.DeepSeq.deepseq (_CpuhpExitFtraceEvent'state x__) ()))))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Cpuhp_Fields.cpu' @:: Lens' CpuhpLatencyFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Cpuhp_Fields.maybe'cpu' @:: Lens' CpuhpLatencyFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Cpuhp_Fields.ret' @:: Lens' CpuhpLatencyFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Cpuhp_Fields.maybe'ret' @:: Lens' CpuhpLatencyFtraceEvent (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Cpuhp_Fields.state' @:: Lens' CpuhpLatencyFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Cpuhp_Fields.maybe'state' @:: Lens' CpuhpLatencyFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Cpuhp_Fields.time' @:: Lens' CpuhpLatencyFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Cpuhp_Fields.maybe'time' @:: Lens' CpuhpLatencyFtraceEvent (Prelude.Maybe Data.Word.Word64)@ -}
data CpuhpLatencyFtraceEvent
  = CpuhpLatencyFtraceEvent'_constructor {_CpuhpLatencyFtraceEvent'cpu :: !(Prelude.Maybe Data.Word.Word32),
                                          _CpuhpLatencyFtraceEvent'ret :: !(Prelude.Maybe Data.Int.Int32),
                                          _CpuhpLatencyFtraceEvent'state :: !(Prelude.Maybe Data.Word.Word32),
                                          _CpuhpLatencyFtraceEvent'time :: !(Prelude.Maybe Data.Word.Word64),
                                          _CpuhpLatencyFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show CpuhpLatencyFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField CpuhpLatencyFtraceEvent "cpu" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CpuhpLatencyFtraceEvent'cpu
           (\ x__ y__ -> x__ {_CpuhpLatencyFtraceEvent'cpu = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField CpuhpLatencyFtraceEvent "maybe'cpu" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CpuhpLatencyFtraceEvent'cpu
           (\ x__ y__ -> x__ {_CpuhpLatencyFtraceEvent'cpu = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CpuhpLatencyFtraceEvent "ret" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CpuhpLatencyFtraceEvent'ret
           (\ x__ y__ -> x__ {_CpuhpLatencyFtraceEvent'ret = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField CpuhpLatencyFtraceEvent "maybe'ret" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CpuhpLatencyFtraceEvent'ret
           (\ x__ y__ -> x__ {_CpuhpLatencyFtraceEvent'ret = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CpuhpLatencyFtraceEvent "state" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CpuhpLatencyFtraceEvent'state
           (\ x__ y__ -> x__ {_CpuhpLatencyFtraceEvent'state = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField CpuhpLatencyFtraceEvent "maybe'state" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CpuhpLatencyFtraceEvent'state
           (\ x__ y__ -> x__ {_CpuhpLatencyFtraceEvent'state = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CpuhpLatencyFtraceEvent "time" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CpuhpLatencyFtraceEvent'time
           (\ x__ y__ -> x__ {_CpuhpLatencyFtraceEvent'time = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField CpuhpLatencyFtraceEvent "maybe'time" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CpuhpLatencyFtraceEvent'time
           (\ x__ y__ -> x__ {_CpuhpLatencyFtraceEvent'time = y__}))
        Prelude.id
instance Data.ProtoLens.Message CpuhpLatencyFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.CpuhpLatencyFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\ETBCpuhpLatencyFtraceEvent\DC2\DLE\n\
      \\ETXcpu\CAN\SOH \SOH(\rR\ETXcpu\DC2\DLE\n\
      \\ETXret\CAN\STX \SOH(\ENQR\ETXret\DC2\DC4\n\
      \\ENQstate\CAN\ETX \SOH(\rR\ENQstate\DC2\DC2\n\
      \\EOTtime\CAN\EOT \SOH(\EOTR\EOTtime"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        cpu__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "cpu"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'cpu")) ::
              Data.ProtoLens.FieldDescriptor CpuhpLatencyFtraceEvent
        ret__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "ret"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'ret")) ::
              Data.ProtoLens.FieldDescriptor CpuhpLatencyFtraceEvent
        state__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "state"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'state")) ::
              Data.ProtoLens.FieldDescriptor CpuhpLatencyFtraceEvent
        time__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "time"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'time")) ::
              Data.ProtoLens.FieldDescriptor CpuhpLatencyFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, cpu__field_descriptor),
           (Data.ProtoLens.Tag 2, ret__field_descriptor),
           (Data.ProtoLens.Tag 3, state__field_descriptor),
           (Data.ProtoLens.Tag 4, time__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _CpuhpLatencyFtraceEvent'_unknownFields
        (\ x__ y__ -> x__ {_CpuhpLatencyFtraceEvent'_unknownFields = y__})
  defMessage
    = CpuhpLatencyFtraceEvent'_constructor
        {_CpuhpLatencyFtraceEvent'cpu = Prelude.Nothing,
         _CpuhpLatencyFtraceEvent'ret = Prelude.Nothing,
         _CpuhpLatencyFtraceEvent'state = Prelude.Nothing,
         _CpuhpLatencyFtraceEvent'time = Prelude.Nothing,
         _CpuhpLatencyFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          CpuhpLatencyFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser CpuhpLatencyFtraceEvent
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
                                       "cpu"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"cpu") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "ret"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"ret") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "state"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"state") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "time"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"time") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "CpuhpLatencyFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'cpu") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       ((Prelude..)
                          Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'ret") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          ((Prelude..)
                             Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'state") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             ((Prelude..)
                                Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'time") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                      (Data.ProtoLens.Encoding.Wire.buildFieldSet
                         (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))
instance Control.DeepSeq.NFData CpuhpLatencyFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_CpuhpLatencyFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_CpuhpLatencyFtraceEvent'cpu x__)
                (Control.DeepSeq.deepseq
                   (_CpuhpLatencyFtraceEvent'ret x__)
                   (Control.DeepSeq.deepseq
                      (_CpuhpLatencyFtraceEvent'state x__)
                      (Control.DeepSeq.deepseq (_CpuhpLatencyFtraceEvent'time x__) ()))))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Cpuhp_Fields.cpu' @:: Lens' CpuhpMultiEnterFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Cpuhp_Fields.maybe'cpu' @:: Lens' CpuhpMultiEnterFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Cpuhp_Fields.fun' @:: Lens' CpuhpMultiEnterFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Cpuhp_Fields.maybe'fun' @:: Lens' CpuhpMultiEnterFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Cpuhp_Fields.idx' @:: Lens' CpuhpMultiEnterFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Cpuhp_Fields.maybe'idx' @:: Lens' CpuhpMultiEnterFtraceEvent (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Cpuhp_Fields.target' @:: Lens' CpuhpMultiEnterFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Cpuhp_Fields.maybe'target' @:: Lens' CpuhpMultiEnterFtraceEvent (Prelude.Maybe Data.Int.Int32)@ -}
data CpuhpMultiEnterFtraceEvent
  = CpuhpMultiEnterFtraceEvent'_constructor {_CpuhpMultiEnterFtraceEvent'cpu :: !(Prelude.Maybe Data.Word.Word32),
                                             _CpuhpMultiEnterFtraceEvent'fun :: !(Prelude.Maybe Data.Word.Word64),
                                             _CpuhpMultiEnterFtraceEvent'idx :: !(Prelude.Maybe Data.Int.Int32),
                                             _CpuhpMultiEnterFtraceEvent'target :: !(Prelude.Maybe Data.Int.Int32),
                                             _CpuhpMultiEnterFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show CpuhpMultiEnterFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField CpuhpMultiEnterFtraceEvent "cpu" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CpuhpMultiEnterFtraceEvent'cpu
           (\ x__ y__ -> x__ {_CpuhpMultiEnterFtraceEvent'cpu = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField CpuhpMultiEnterFtraceEvent "maybe'cpu" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CpuhpMultiEnterFtraceEvent'cpu
           (\ x__ y__ -> x__ {_CpuhpMultiEnterFtraceEvent'cpu = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CpuhpMultiEnterFtraceEvent "fun" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CpuhpMultiEnterFtraceEvent'fun
           (\ x__ y__ -> x__ {_CpuhpMultiEnterFtraceEvent'fun = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField CpuhpMultiEnterFtraceEvent "maybe'fun" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CpuhpMultiEnterFtraceEvent'fun
           (\ x__ y__ -> x__ {_CpuhpMultiEnterFtraceEvent'fun = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CpuhpMultiEnterFtraceEvent "idx" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CpuhpMultiEnterFtraceEvent'idx
           (\ x__ y__ -> x__ {_CpuhpMultiEnterFtraceEvent'idx = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField CpuhpMultiEnterFtraceEvent "maybe'idx" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CpuhpMultiEnterFtraceEvent'idx
           (\ x__ y__ -> x__ {_CpuhpMultiEnterFtraceEvent'idx = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CpuhpMultiEnterFtraceEvent "target" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CpuhpMultiEnterFtraceEvent'target
           (\ x__ y__ -> x__ {_CpuhpMultiEnterFtraceEvent'target = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField CpuhpMultiEnterFtraceEvent "maybe'target" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CpuhpMultiEnterFtraceEvent'target
           (\ x__ y__ -> x__ {_CpuhpMultiEnterFtraceEvent'target = y__}))
        Prelude.id
instance Data.ProtoLens.Message CpuhpMultiEnterFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.CpuhpMultiEnterFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\SUBCpuhpMultiEnterFtraceEvent\DC2\DLE\n\
      \\ETXcpu\CAN\SOH \SOH(\rR\ETXcpu\DC2\DLE\n\
      \\ETXfun\CAN\STX \SOH(\EOTR\ETXfun\DC2\DLE\n\
      \\ETXidx\CAN\ETX \SOH(\ENQR\ETXidx\DC2\SYN\n\
      \\ACKtarget\CAN\EOT \SOH(\ENQR\ACKtarget"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        cpu__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "cpu"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'cpu")) ::
              Data.ProtoLens.FieldDescriptor CpuhpMultiEnterFtraceEvent
        fun__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "fun"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'fun")) ::
              Data.ProtoLens.FieldDescriptor CpuhpMultiEnterFtraceEvent
        idx__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "idx"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'idx")) ::
              Data.ProtoLens.FieldDescriptor CpuhpMultiEnterFtraceEvent
        target__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "target"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'target")) ::
              Data.ProtoLens.FieldDescriptor CpuhpMultiEnterFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, cpu__field_descriptor),
           (Data.ProtoLens.Tag 2, fun__field_descriptor),
           (Data.ProtoLens.Tag 3, idx__field_descriptor),
           (Data.ProtoLens.Tag 4, target__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _CpuhpMultiEnterFtraceEvent'_unknownFields
        (\ x__ y__
           -> x__ {_CpuhpMultiEnterFtraceEvent'_unknownFields = y__})
  defMessage
    = CpuhpMultiEnterFtraceEvent'_constructor
        {_CpuhpMultiEnterFtraceEvent'cpu = Prelude.Nothing,
         _CpuhpMultiEnterFtraceEvent'fun = Prelude.Nothing,
         _CpuhpMultiEnterFtraceEvent'idx = Prelude.Nothing,
         _CpuhpMultiEnterFtraceEvent'target = Prelude.Nothing,
         _CpuhpMultiEnterFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          CpuhpMultiEnterFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser CpuhpMultiEnterFtraceEvent
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
                                       "cpu"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"cpu") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "fun"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"fun") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "idx"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"idx") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "target"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"target") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "CpuhpMultiEnterFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'cpu") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       ((Prelude..)
                          Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'fun") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'idx") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             ((Prelude..)
                                Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'target") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                                ((Prelude..)
                                   Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                      (Data.ProtoLens.Encoding.Wire.buildFieldSet
                         (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))
instance Control.DeepSeq.NFData CpuhpMultiEnterFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_CpuhpMultiEnterFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_CpuhpMultiEnterFtraceEvent'cpu x__)
                (Control.DeepSeq.deepseq
                   (_CpuhpMultiEnterFtraceEvent'fun x__)
                   (Control.DeepSeq.deepseq
                      (_CpuhpMultiEnterFtraceEvent'idx x__)
                      (Control.DeepSeq.deepseq
                         (_CpuhpMultiEnterFtraceEvent'target x__) ()))))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Cpuhp_Fields.activeCpus' @:: Lens' CpuhpPauseFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Cpuhp_Fields.maybe'activeCpus' @:: Lens' CpuhpPauseFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Cpuhp_Fields.cpus' @:: Lens' CpuhpPauseFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Cpuhp_Fields.maybe'cpus' @:: Lens' CpuhpPauseFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Cpuhp_Fields.pause' @:: Lens' CpuhpPauseFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Cpuhp_Fields.maybe'pause' @:: Lens' CpuhpPauseFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Cpuhp_Fields.time' @:: Lens' CpuhpPauseFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Cpuhp_Fields.maybe'time' @:: Lens' CpuhpPauseFtraceEvent (Prelude.Maybe Data.Word.Word32)@ -}
data CpuhpPauseFtraceEvent
  = CpuhpPauseFtraceEvent'_constructor {_CpuhpPauseFtraceEvent'activeCpus :: !(Prelude.Maybe Data.Word.Word32),
                                        _CpuhpPauseFtraceEvent'cpus :: !(Prelude.Maybe Data.Word.Word32),
                                        _CpuhpPauseFtraceEvent'pause :: !(Prelude.Maybe Data.Word.Word32),
                                        _CpuhpPauseFtraceEvent'time :: !(Prelude.Maybe Data.Word.Word32),
                                        _CpuhpPauseFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show CpuhpPauseFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField CpuhpPauseFtraceEvent "activeCpus" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CpuhpPauseFtraceEvent'activeCpus
           (\ x__ y__ -> x__ {_CpuhpPauseFtraceEvent'activeCpus = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField CpuhpPauseFtraceEvent "maybe'activeCpus" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CpuhpPauseFtraceEvent'activeCpus
           (\ x__ y__ -> x__ {_CpuhpPauseFtraceEvent'activeCpus = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CpuhpPauseFtraceEvent "cpus" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CpuhpPauseFtraceEvent'cpus
           (\ x__ y__ -> x__ {_CpuhpPauseFtraceEvent'cpus = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField CpuhpPauseFtraceEvent "maybe'cpus" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CpuhpPauseFtraceEvent'cpus
           (\ x__ y__ -> x__ {_CpuhpPauseFtraceEvent'cpus = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CpuhpPauseFtraceEvent "pause" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CpuhpPauseFtraceEvent'pause
           (\ x__ y__ -> x__ {_CpuhpPauseFtraceEvent'pause = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField CpuhpPauseFtraceEvent "maybe'pause" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CpuhpPauseFtraceEvent'pause
           (\ x__ y__ -> x__ {_CpuhpPauseFtraceEvent'pause = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CpuhpPauseFtraceEvent "time" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CpuhpPauseFtraceEvent'time
           (\ x__ y__ -> x__ {_CpuhpPauseFtraceEvent'time = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField CpuhpPauseFtraceEvent "maybe'time" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CpuhpPauseFtraceEvent'time
           (\ x__ y__ -> x__ {_CpuhpPauseFtraceEvent'time = y__}))
        Prelude.id
instance Data.ProtoLens.Message CpuhpPauseFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.CpuhpPauseFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\NAKCpuhpPauseFtraceEvent\DC2\US\n\
      \\vactive_cpus\CAN\SOH \SOH(\rR\n\
      \activeCpus\DC2\DC2\n\
      \\EOTcpus\CAN\STX \SOH(\rR\EOTcpus\DC2\DC4\n\
      \\ENQpause\CAN\ETX \SOH(\rR\ENQpause\DC2\DC2\n\
      \\EOTtime\CAN\EOT \SOH(\rR\EOTtime"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        activeCpus__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "active_cpus"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'activeCpus")) ::
              Data.ProtoLens.FieldDescriptor CpuhpPauseFtraceEvent
        cpus__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "cpus"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'cpus")) ::
              Data.ProtoLens.FieldDescriptor CpuhpPauseFtraceEvent
        pause__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "pause"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'pause")) ::
              Data.ProtoLens.FieldDescriptor CpuhpPauseFtraceEvent
        time__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "time"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'time")) ::
              Data.ProtoLens.FieldDescriptor CpuhpPauseFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, activeCpus__field_descriptor),
           (Data.ProtoLens.Tag 2, cpus__field_descriptor),
           (Data.ProtoLens.Tag 3, pause__field_descriptor),
           (Data.ProtoLens.Tag 4, time__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _CpuhpPauseFtraceEvent'_unknownFields
        (\ x__ y__ -> x__ {_CpuhpPauseFtraceEvent'_unknownFields = y__})
  defMessage
    = CpuhpPauseFtraceEvent'_constructor
        {_CpuhpPauseFtraceEvent'activeCpus = Prelude.Nothing,
         _CpuhpPauseFtraceEvent'cpus = Prelude.Nothing,
         _CpuhpPauseFtraceEvent'pause = Prelude.Nothing,
         _CpuhpPauseFtraceEvent'time = Prelude.Nothing,
         _CpuhpPauseFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          CpuhpPauseFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser CpuhpPauseFtraceEvent
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
                                       "active_cpus"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"activeCpus") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "cpus"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"cpus") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "pause"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"pause") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "time"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"time") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "CpuhpPauseFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'activeCpus") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       ((Prelude..)
                          Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'cpus") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          ((Prelude..)
                             Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'pause") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             ((Prelude..)
                                Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'time") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                                ((Prelude..)
                                   Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                      (Data.ProtoLens.Encoding.Wire.buildFieldSet
                         (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))
instance Control.DeepSeq.NFData CpuhpPauseFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_CpuhpPauseFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_CpuhpPauseFtraceEvent'activeCpus x__)
                (Control.DeepSeq.deepseq
                   (_CpuhpPauseFtraceEvent'cpus x__)
                   (Control.DeepSeq.deepseq
                      (_CpuhpPauseFtraceEvent'pause x__)
                      (Control.DeepSeq.deepseq (_CpuhpPauseFtraceEvent'time x__) ()))))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \(protos/perfetto/trace/ftrace/cpuhp.proto\DC2\SIperfetto.protos\"b\n\
    \\DC4CpuhpExitFtraceEvent\DC2\DLE\n\
    \\ETXcpu\CAN\SOH \SOH(\rR\ETXcpu\DC2\DLE\n\
    \\ETXidx\CAN\STX \SOH(\ENQR\ETXidx\DC2\DLE\n\
    \\ETXret\CAN\ETX \SOH(\ENQR\ETXret\DC2\DC4\n\
    \\ENQstate\CAN\EOT \SOH(\ENQR\ENQstate\"j\n\
    \\SUBCpuhpMultiEnterFtraceEvent\DC2\DLE\n\
    \\ETXcpu\CAN\SOH \SOH(\rR\ETXcpu\DC2\DLE\n\
    \\ETXfun\CAN\STX \SOH(\EOTR\ETXfun\DC2\DLE\n\
    \\ETXidx\CAN\ETX \SOH(\ENQR\ETXidx\DC2\SYN\n\
    \\ACKtarget\CAN\EOT \SOH(\ENQR\ACKtarget\"e\n\
    \\NAKCpuhpEnterFtraceEvent\DC2\DLE\n\
    \\ETXcpu\CAN\SOH \SOH(\rR\ETXcpu\DC2\DLE\n\
    \\ETXfun\CAN\STX \SOH(\EOTR\ETXfun\DC2\DLE\n\
    \\ETXidx\CAN\ETX \SOH(\ENQR\ETXidx\DC2\SYN\n\
    \\ACKtarget\CAN\EOT \SOH(\ENQR\ACKtarget\"g\n\
    \\ETBCpuhpLatencyFtraceEvent\DC2\DLE\n\
    \\ETXcpu\CAN\SOH \SOH(\rR\ETXcpu\DC2\DLE\n\
    \\ETXret\CAN\STX \SOH(\ENQR\ETXret\DC2\DC4\n\
    \\ENQstate\CAN\ETX \SOH(\rR\ENQstate\DC2\DC2\n\
    \\EOTtime\CAN\EOT \SOH(\EOTR\EOTtime\"v\n\
    \\NAKCpuhpPauseFtraceEvent\DC2\US\n\
    \\vactive_cpus\CAN\SOH \SOH(\rR\n\
    \activeCpus\DC2\DC2\n\
    \\EOTcpus\CAN\STX \SOH(\rR\EOTcpus\DC2\DC4\n\
    \\ENQpause\CAN\ETX \SOH(\rR\ENQpause\DC2\DC2\n\
    \\EOTtime\CAN\EOT \SOH(\rR\EOTtimeJ\209\f\n\
    \\ACK\DC2\EOT\EOT\NUL$\SOH\n\
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
    \\ETX\EOT\NUL\SOH\DC2\ETX\a\b\FS\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\b\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\EOT\DC2\ETX\b\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX\b\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\b\DC2\NAK\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\b\CAN\EM\n\
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
    \\EOT\EOT\NUL\STX\ETX\DC2\ETX\v\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\EOT\DC2\ETX\v\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ENQ\DC2\ETX\v\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\SOH\DC2\ETX\v\DC1\SYN\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ETX\DC2\ETX\v\EM\SUB\n\
    \\n\
    \\n\
    \\STX\EOT\SOH\DC2\EOT\r\NUL\DC2\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX\r\b\"\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETX\SO\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\EOT\DC2\ETX\SO\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ENQ\DC2\ETX\SO\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETX\SO\DC2\NAK\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETX\SO\CAN\EM\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\SOH\DC2\ETX\SI\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\EOT\DC2\ETX\SI\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ENQ\DC2\ETX\SI\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\SOH\DC2\ETX\SI\DC2\NAK\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ETX\DC2\ETX\SI\CAN\EM\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\STX\DC2\ETX\DLE\STX\EM\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\EOT\DC2\ETX\DLE\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\ENQ\DC2\ETX\DLE\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\SOH\DC2\ETX\DLE\DC1\DC4\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\ETX\DC2\ETX\DLE\ETB\CAN\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\ETX\DC2\ETX\DC1\STX\FS\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\EOT\DC2\ETX\DC1\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\ENQ\DC2\ETX\DC1\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\SOH\DC2\ETX\DC1\DC1\ETB\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\ETX\DC2\ETX\DC1\SUB\ESC\n\
    \\n\
    \\n\
    \\STX\EOT\STX\DC2\EOT\DC3\NUL\CAN\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\SOH\DC2\ETX\DC3\b\GS\n\
    \\v\n\
    \\EOT\EOT\STX\STX\NUL\DC2\ETX\DC4\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\EOT\DC2\ETX\DC4\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ENQ\DC2\ETX\DC4\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\SOH\DC2\ETX\DC4\DC2\NAK\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ETX\DC2\ETX\DC4\CAN\EM\n\
    \\v\n\
    \\EOT\EOT\STX\STX\SOH\DC2\ETX\NAK\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\EOT\DC2\ETX\NAK\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ENQ\DC2\ETX\NAK\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\SOH\DC2\ETX\NAK\DC2\NAK\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ETX\DC2\ETX\NAK\CAN\EM\n\
    \\v\n\
    \\EOT\EOT\STX\STX\STX\DC2\ETX\SYN\STX\EM\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\EOT\DC2\ETX\SYN\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\ENQ\DC2\ETX\SYN\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\SOH\DC2\ETX\SYN\DC1\DC4\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\ETX\DC2\ETX\SYN\ETB\CAN\n\
    \\v\n\
    \\EOT\EOT\STX\STX\ETX\DC2\ETX\ETB\STX\FS\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ETX\EOT\DC2\ETX\ETB\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ETX\ENQ\DC2\ETX\ETB\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ETX\SOH\DC2\ETX\ETB\DC1\ETB\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ETX\ETX\DC2\ETX\ETB\SUB\ESC\n\
    \\n\
    \\n\
    \\STX\EOT\ETX\DC2\EOT\EM\NUL\RS\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\ETX\SOH\DC2\ETX\EM\b\US\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\NUL\DC2\ETX\SUB\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\EOT\DC2\ETX\SUB\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ENQ\DC2\ETX\SUB\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\SOH\DC2\ETX\SUB\DC2\NAK\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ETX\DC2\ETX\SUB\CAN\EM\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\SOH\DC2\ETX\ESC\STX\EM\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\EOT\DC2\ETX\ESC\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\ENQ\DC2\ETX\ESC\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\SOH\DC2\ETX\ESC\DC1\DC4\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\ETX\DC2\ETX\ESC\ETB\CAN\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\STX\DC2\ETX\FS\STX\FS\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\STX\EOT\DC2\ETX\FS\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\STX\ENQ\DC2\ETX\FS\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\STX\SOH\DC2\ETX\FS\DC2\ETB\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\STX\ETX\DC2\ETX\FS\SUB\ESC\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\ETX\DC2\ETX\GS\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ETX\EOT\DC2\ETX\GS\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ETX\ENQ\DC2\ETX\GS\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ETX\SOH\DC2\ETX\GS\DC2\SYN\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ETX\ETX\DC2\ETX\GS\EM\SUB\n\
    \\n\
    \\n\
    \\STX\EOT\EOT\DC2\EOT\US\NUL$\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\EOT\SOH\DC2\ETX\US\b\GS\n\
    \\v\n\
    \\EOT\EOT\EOT\STX\NUL\DC2\ETX \STX\"\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\EOT\DC2\ETX \STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\ENQ\DC2\ETX \v\DC1\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\SOH\DC2\ETX \DC2\GS\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\ETX\DC2\ETX  !\n\
    \\v\n\
    \\EOT\EOT\EOT\STX\SOH\DC2\ETX!\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\EOT\DC2\ETX!\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\ENQ\DC2\ETX!\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\SOH\DC2\ETX!\DC2\SYN\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\ETX\DC2\ETX!\EM\SUB\n\
    \\v\n\
    \\EOT\EOT\EOT\STX\STX\DC2\ETX\"\STX\FS\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\STX\EOT\DC2\ETX\"\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\STX\ENQ\DC2\ETX\"\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\STX\SOH\DC2\ETX\"\DC2\ETB\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\STX\ETX\DC2\ETX\"\SUB\ESC\n\
    \\v\n\
    \\EOT\EOT\EOT\STX\ETX\DC2\ETX#\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\ETX\EOT\DC2\ETX#\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\ETX\ENQ\DC2\ETX#\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\ETX\SOH\DC2\ETX#\DC2\SYN\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\ETX\ETX\DC2\ETX#\EM\SUB"