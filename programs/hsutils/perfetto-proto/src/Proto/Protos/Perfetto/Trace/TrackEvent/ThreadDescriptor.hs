{- This file was auto-generated from protos/perfetto/trace/track_event/thread_descriptor.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Protos.Perfetto.Trace.TrackEvent.ThreadDescriptor (
        ThreadDescriptor(), ThreadDescriptor'ChromeThreadType(..),
        ThreadDescriptor'ChromeThreadType()
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
     
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.ThreadDescriptor_Fields.pid' @:: Lens' ThreadDescriptor Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.ThreadDescriptor_Fields.maybe'pid' @:: Lens' ThreadDescriptor (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.ThreadDescriptor_Fields.tid' @:: Lens' ThreadDescriptor Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.ThreadDescriptor_Fields.maybe'tid' @:: Lens' ThreadDescriptor (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.ThreadDescriptor_Fields.threadName' @:: Lens' ThreadDescriptor Data.Text.Text@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.ThreadDescriptor_Fields.maybe'threadName' @:: Lens' ThreadDescriptor (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.ThreadDescriptor_Fields.chromeThreadType' @:: Lens' ThreadDescriptor ThreadDescriptor'ChromeThreadType@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.ThreadDescriptor_Fields.maybe'chromeThreadType' @:: Lens' ThreadDescriptor (Prelude.Maybe ThreadDescriptor'ChromeThreadType)@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.ThreadDescriptor_Fields.referenceTimestampUs' @:: Lens' ThreadDescriptor Data.Int.Int64@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.ThreadDescriptor_Fields.maybe'referenceTimestampUs' @:: Lens' ThreadDescriptor (Prelude.Maybe Data.Int.Int64)@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.ThreadDescriptor_Fields.referenceThreadTimeUs' @:: Lens' ThreadDescriptor Data.Int.Int64@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.ThreadDescriptor_Fields.maybe'referenceThreadTimeUs' @:: Lens' ThreadDescriptor (Prelude.Maybe Data.Int.Int64)@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.ThreadDescriptor_Fields.referenceThreadInstructionCount' @:: Lens' ThreadDescriptor Data.Int.Int64@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.ThreadDescriptor_Fields.maybe'referenceThreadInstructionCount' @:: Lens' ThreadDescriptor (Prelude.Maybe Data.Int.Int64)@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.ThreadDescriptor_Fields.legacySortIndex' @:: Lens' ThreadDescriptor Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.ThreadDescriptor_Fields.maybe'legacySortIndex' @:: Lens' ThreadDescriptor (Prelude.Maybe Data.Int.Int32)@ -}
data ThreadDescriptor
  = ThreadDescriptor'_constructor {_ThreadDescriptor'pid :: !(Prelude.Maybe Data.Int.Int32),
                                   _ThreadDescriptor'tid :: !(Prelude.Maybe Data.Int.Int32),
                                   _ThreadDescriptor'threadName :: !(Prelude.Maybe Data.Text.Text),
                                   _ThreadDescriptor'chromeThreadType :: !(Prelude.Maybe ThreadDescriptor'ChromeThreadType),
                                   _ThreadDescriptor'referenceTimestampUs :: !(Prelude.Maybe Data.Int.Int64),
                                   _ThreadDescriptor'referenceThreadTimeUs :: !(Prelude.Maybe Data.Int.Int64),
                                   _ThreadDescriptor'referenceThreadInstructionCount :: !(Prelude.Maybe Data.Int.Int64),
                                   _ThreadDescriptor'legacySortIndex :: !(Prelude.Maybe Data.Int.Int32),
                                   _ThreadDescriptor'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ThreadDescriptor where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ThreadDescriptor "pid" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ThreadDescriptor'pid
           (\ x__ y__ -> x__ {_ThreadDescriptor'pid = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField ThreadDescriptor "maybe'pid" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ThreadDescriptor'pid
           (\ x__ y__ -> x__ {_ThreadDescriptor'pid = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ThreadDescriptor "tid" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ThreadDescriptor'tid
           (\ x__ y__ -> x__ {_ThreadDescriptor'tid = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField ThreadDescriptor "maybe'tid" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ThreadDescriptor'tid
           (\ x__ y__ -> x__ {_ThreadDescriptor'tid = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ThreadDescriptor "threadName" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ThreadDescriptor'threadName
           (\ x__ y__ -> x__ {_ThreadDescriptor'threadName = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField ThreadDescriptor "maybe'threadName" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ThreadDescriptor'threadName
           (\ x__ y__ -> x__ {_ThreadDescriptor'threadName = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ThreadDescriptor "chromeThreadType" ThreadDescriptor'ChromeThreadType where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ThreadDescriptor'chromeThreadType
           (\ x__ y__ -> x__ {_ThreadDescriptor'chromeThreadType = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField ThreadDescriptor "maybe'chromeThreadType" (Prelude.Maybe ThreadDescriptor'ChromeThreadType) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ThreadDescriptor'chromeThreadType
           (\ x__ y__ -> x__ {_ThreadDescriptor'chromeThreadType = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ThreadDescriptor "referenceTimestampUs" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ThreadDescriptor'referenceTimestampUs
           (\ x__ y__ -> x__ {_ThreadDescriptor'referenceTimestampUs = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField ThreadDescriptor "maybe'referenceTimestampUs" (Prelude.Maybe Data.Int.Int64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ThreadDescriptor'referenceTimestampUs
           (\ x__ y__ -> x__ {_ThreadDescriptor'referenceTimestampUs = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ThreadDescriptor "referenceThreadTimeUs" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ThreadDescriptor'referenceThreadTimeUs
           (\ x__ y__ -> x__ {_ThreadDescriptor'referenceThreadTimeUs = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField ThreadDescriptor "maybe'referenceThreadTimeUs" (Prelude.Maybe Data.Int.Int64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ThreadDescriptor'referenceThreadTimeUs
           (\ x__ y__ -> x__ {_ThreadDescriptor'referenceThreadTimeUs = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ThreadDescriptor "referenceThreadInstructionCount" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ThreadDescriptor'referenceThreadInstructionCount
           (\ x__ y__
              -> x__ {_ThreadDescriptor'referenceThreadInstructionCount = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField ThreadDescriptor "maybe'referenceThreadInstructionCount" (Prelude.Maybe Data.Int.Int64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ThreadDescriptor'referenceThreadInstructionCount
           (\ x__ y__
              -> x__ {_ThreadDescriptor'referenceThreadInstructionCount = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ThreadDescriptor "legacySortIndex" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ThreadDescriptor'legacySortIndex
           (\ x__ y__ -> x__ {_ThreadDescriptor'legacySortIndex = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField ThreadDescriptor "maybe'legacySortIndex" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ThreadDescriptor'legacySortIndex
           (\ x__ y__ -> x__ {_ThreadDescriptor'legacySortIndex = y__}))
        Prelude.id
instance Data.ProtoLens.Message ThreadDescriptor where
  messageName _ = Data.Text.pack "perfetto.protos.ThreadDescriptor"
  packedMessageDescriptor _
    = "\n\
      \\DLEThreadDescriptor\DC2\DLE\n\
      \\ETXpid\CAN\SOH \SOH(\ENQR\ETXpid\DC2\DLE\n\
      \\ETXtid\CAN\STX \SOH(\ENQR\ETXtid\DC2\US\n\
      \\vthread_name\CAN\ENQ \SOH(\tR\n\
      \threadName\DC2`\n\
      \\DC2chrome_thread_type\CAN\EOT \SOH(\SO22.perfetto.protos.ThreadDescriptor.ChromeThreadTypeR\DLEchromeThreadType\DC24\n\
      \\SYNreference_timestamp_us\CAN\ACK \SOH(\ETXR\DC4referenceTimestampUs\DC27\n\
      \\CANreference_thread_time_us\CAN\a \SOH(\ETXR\NAKreferenceThreadTimeUs\DC2K\n\
      \\"reference_thread_instruction_count\CAN\b \SOH(\ETXR\USreferenceThreadInstructionCount\DC2*\n\
      \\DC1legacy_sort_index\CAN\ETX \SOH(\ENQR\SIlegacySortIndex\"\215\ETX\n\
      \\DLEChromeThreadType\DC2\GS\n\
      \\EMCHROME_THREAD_UNSPECIFIED\DLE\NUL\DC2\SYN\n\
      \\DC2CHROME_THREAD_MAIN\DLE\SOH\DC2\DC4\n\
      \\DLECHROME_THREAD_IO\DLE\STX\DC2 \n\
      \\FSCHROME_THREAD_POOL_BG_WORKER\DLE\ETX\DC2 \n\
      \\FSCHROME_THREAD_POOL_FG_WORKER\DLE\EOT\DC2\"\n\
      \\RSCHROME_THREAD_POOL_FB_BLOCKING\DLE\ENQ\DC2\"\n\
      \\RSCHROME_THREAD_POOL_BG_BLOCKING\DLE\ACK\DC2\RS\n\
      \\SUBCHROME_THREAD_POOL_SERVICE\DLE\a\DC2\FS\n\
      \\CANCHROME_THREAD_COMPOSITOR\DLE\b\DC2 \n\
      \\FSCHROME_THREAD_VIZ_COMPOSITOR\DLE\t\DC2#\n\
      \\USCHROME_THREAD_COMPOSITOR_WORKER\DLE\n\
      \\DC2 \n\
      \\FSCHROME_THREAD_SERVICE_WORKER\DLE\v\DC2\RS\n\
      \\SUBCHROME_THREAD_MEMORY_INFRA\DLE2\DC2#\n\
      \\USCHROME_THREAD_SAMPLING_PROFILER\DLE3"
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
              Data.ProtoLens.FieldDescriptor ThreadDescriptor
        tid__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "tid"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'tid")) ::
              Data.ProtoLens.FieldDescriptor ThreadDescriptor
        threadName__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "thread_name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'threadName")) ::
              Data.ProtoLens.FieldDescriptor ThreadDescriptor
        chromeThreadType__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "chrome_thread_type"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor ThreadDescriptor'ChromeThreadType)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'chromeThreadType")) ::
              Data.ProtoLens.FieldDescriptor ThreadDescriptor
        referenceTimestampUs__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "reference_timestamp_us"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'referenceTimestampUs")) ::
              Data.ProtoLens.FieldDescriptor ThreadDescriptor
        referenceThreadTimeUs__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "reference_thread_time_us"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'referenceThreadTimeUs")) ::
              Data.ProtoLens.FieldDescriptor ThreadDescriptor
        referenceThreadInstructionCount__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "reference_thread_instruction_count"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field
                    @"maybe'referenceThreadInstructionCount")) ::
              Data.ProtoLens.FieldDescriptor ThreadDescriptor
        legacySortIndex__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "legacy_sort_index"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'legacySortIndex")) ::
              Data.ProtoLens.FieldDescriptor ThreadDescriptor
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, pid__field_descriptor),
           (Data.ProtoLens.Tag 2, tid__field_descriptor),
           (Data.ProtoLens.Tag 5, threadName__field_descriptor),
           (Data.ProtoLens.Tag 4, chromeThreadType__field_descriptor),
           (Data.ProtoLens.Tag 6, referenceTimestampUs__field_descriptor),
           (Data.ProtoLens.Tag 7, referenceThreadTimeUs__field_descriptor),
           (Data.ProtoLens.Tag 8, 
            referenceThreadInstructionCount__field_descriptor),
           (Data.ProtoLens.Tag 3, legacySortIndex__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ThreadDescriptor'_unknownFields
        (\ x__ y__ -> x__ {_ThreadDescriptor'_unknownFields = y__})
  defMessage
    = ThreadDescriptor'_constructor
        {_ThreadDescriptor'pid = Prelude.Nothing,
         _ThreadDescriptor'tid = Prelude.Nothing,
         _ThreadDescriptor'threadName = Prelude.Nothing,
         _ThreadDescriptor'chromeThreadType = Prelude.Nothing,
         _ThreadDescriptor'referenceTimestampUs = Prelude.Nothing,
         _ThreadDescriptor'referenceThreadTimeUs = Prelude.Nothing,
         _ThreadDescriptor'referenceThreadInstructionCount = Prelude.Nothing,
         _ThreadDescriptor'legacySortIndex = Prelude.Nothing,
         _ThreadDescriptor'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ThreadDescriptor
          -> Data.ProtoLens.Encoding.Bytes.Parser ThreadDescriptor
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
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "tid"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"tid") y x)
                        42
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "thread_name"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"threadName") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "chrome_thread_type"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"chromeThreadType") y x)
                        48
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "reference_timestamp_us"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"referenceTimestampUs") y x)
                        56
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "reference_thread_time_us"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"referenceThreadTimeUs") y x)
                        64
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "reference_thread_instruction_count"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"referenceThreadInstructionCount")
                                     y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "legacy_sort_index"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"legacySortIndex") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "ThreadDescriptor"
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
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'tid") _x
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
                          (Data.ProtoLens.Field.field @"maybe'threadName") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 42)
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
                             (Data.ProtoLens.Field.field @"maybe'chromeThreadType") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                                ((Prelude..)
                                   ((Prelude..)
                                      Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral)
                                   Prelude.fromEnum _v))
                      ((Data.Monoid.<>)
                         (case
                              Lens.Family2.view
                                (Data.ProtoLens.Field.field @"maybe'referenceTimestampUs") _x
                          of
                            Prelude.Nothing -> Data.Monoid.mempty
                            (Prelude.Just _v)
                              -> (Data.Monoid.<>)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt 48)
                                   ((Prelude..)
                                      Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral
                                      _v))
                         ((Data.Monoid.<>)
                            (case
                                 Lens.Family2.view
                                   (Data.ProtoLens.Field.field @"maybe'referenceThreadTimeUs") _x
                             of
                               Prelude.Nothing -> Data.Monoid.mempty
                               (Prelude.Just _v)
                                 -> (Data.Monoid.<>)
                                      (Data.ProtoLens.Encoding.Bytes.putVarInt 56)
                                      ((Prelude..)
                                         Data.ProtoLens.Encoding.Bytes.putVarInt
                                         Prelude.fromIntegral _v))
                            ((Data.Monoid.<>)
                               (case
                                    Lens.Family2.view
                                      (Data.ProtoLens.Field.field
                                         @"maybe'referenceThreadInstructionCount")
                                      _x
                                of
                                  Prelude.Nothing -> Data.Monoid.mempty
                                  (Prelude.Just _v)
                                    -> (Data.Monoid.<>)
                                         (Data.ProtoLens.Encoding.Bytes.putVarInt 64)
                                         ((Prelude..)
                                            Data.ProtoLens.Encoding.Bytes.putVarInt
                                            Prelude.fromIntegral _v))
                               ((Data.Monoid.<>)
                                  (case
                                       Lens.Family2.view
                                         (Data.ProtoLens.Field.field @"maybe'legacySortIndex") _x
                                   of
                                     Prelude.Nothing -> Data.Monoid.mempty
                                     (Prelude.Just _v)
                                       -> (Data.Monoid.<>)
                                            (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                                            ((Prelude..)
                                               Data.ProtoLens.Encoding.Bytes.putVarInt
                                               Prelude.fromIntegral _v))
                                  (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                     (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))))))
instance Control.DeepSeq.NFData ThreadDescriptor where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ThreadDescriptor'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ThreadDescriptor'pid x__)
                (Control.DeepSeq.deepseq
                   (_ThreadDescriptor'tid x__)
                   (Control.DeepSeq.deepseq
                      (_ThreadDescriptor'threadName x__)
                      (Control.DeepSeq.deepseq
                         (_ThreadDescriptor'chromeThreadType x__)
                         (Control.DeepSeq.deepseq
                            (_ThreadDescriptor'referenceTimestampUs x__)
                            (Control.DeepSeq.deepseq
                               (_ThreadDescriptor'referenceThreadTimeUs x__)
                               (Control.DeepSeq.deepseq
                                  (_ThreadDescriptor'referenceThreadInstructionCount x__)
                                  (Control.DeepSeq.deepseq
                                     (_ThreadDescriptor'legacySortIndex x__) ()))))))))
data ThreadDescriptor'ChromeThreadType
  = ThreadDescriptor'CHROME_THREAD_UNSPECIFIED |
    ThreadDescriptor'CHROME_THREAD_MAIN |
    ThreadDescriptor'CHROME_THREAD_IO |
    ThreadDescriptor'CHROME_THREAD_POOL_BG_WORKER |
    ThreadDescriptor'CHROME_THREAD_POOL_FG_WORKER |
    ThreadDescriptor'CHROME_THREAD_POOL_FB_BLOCKING |
    ThreadDescriptor'CHROME_THREAD_POOL_BG_BLOCKING |
    ThreadDescriptor'CHROME_THREAD_POOL_SERVICE |
    ThreadDescriptor'CHROME_THREAD_COMPOSITOR |
    ThreadDescriptor'CHROME_THREAD_VIZ_COMPOSITOR |
    ThreadDescriptor'CHROME_THREAD_COMPOSITOR_WORKER |
    ThreadDescriptor'CHROME_THREAD_SERVICE_WORKER |
    ThreadDescriptor'CHROME_THREAD_MEMORY_INFRA |
    ThreadDescriptor'CHROME_THREAD_SAMPLING_PROFILER
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum ThreadDescriptor'ChromeThreadType where
  maybeToEnum 0
    = Prelude.Just ThreadDescriptor'CHROME_THREAD_UNSPECIFIED
  maybeToEnum 1 = Prelude.Just ThreadDescriptor'CHROME_THREAD_MAIN
  maybeToEnum 2 = Prelude.Just ThreadDescriptor'CHROME_THREAD_IO
  maybeToEnum 3
    = Prelude.Just ThreadDescriptor'CHROME_THREAD_POOL_BG_WORKER
  maybeToEnum 4
    = Prelude.Just ThreadDescriptor'CHROME_THREAD_POOL_FG_WORKER
  maybeToEnum 5
    = Prelude.Just ThreadDescriptor'CHROME_THREAD_POOL_FB_BLOCKING
  maybeToEnum 6
    = Prelude.Just ThreadDescriptor'CHROME_THREAD_POOL_BG_BLOCKING
  maybeToEnum 7
    = Prelude.Just ThreadDescriptor'CHROME_THREAD_POOL_SERVICE
  maybeToEnum 8
    = Prelude.Just ThreadDescriptor'CHROME_THREAD_COMPOSITOR
  maybeToEnum 9
    = Prelude.Just ThreadDescriptor'CHROME_THREAD_VIZ_COMPOSITOR
  maybeToEnum 10
    = Prelude.Just ThreadDescriptor'CHROME_THREAD_COMPOSITOR_WORKER
  maybeToEnum 11
    = Prelude.Just ThreadDescriptor'CHROME_THREAD_SERVICE_WORKER
  maybeToEnum 50
    = Prelude.Just ThreadDescriptor'CHROME_THREAD_MEMORY_INFRA
  maybeToEnum 51
    = Prelude.Just ThreadDescriptor'CHROME_THREAD_SAMPLING_PROFILER
  maybeToEnum _ = Prelude.Nothing
  showEnum ThreadDescriptor'CHROME_THREAD_UNSPECIFIED
    = "CHROME_THREAD_UNSPECIFIED"
  showEnum ThreadDescriptor'CHROME_THREAD_MAIN = "CHROME_THREAD_MAIN"
  showEnum ThreadDescriptor'CHROME_THREAD_IO = "CHROME_THREAD_IO"
  showEnum ThreadDescriptor'CHROME_THREAD_POOL_BG_WORKER
    = "CHROME_THREAD_POOL_BG_WORKER"
  showEnum ThreadDescriptor'CHROME_THREAD_POOL_FG_WORKER
    = "CHROME_THREAD_POOL_FG_WORKER"
  showEnum ThreadDescriptor'CHROME_THREAD_POOL_FB_BLOCKING
    = "CHROME_THREAD_POOL_FB_BLOCKING"
  showEnum ThreadDescriptor'CHROME_THREAD_POOL_BG_BLOCKING
    = "CHROME_THREAD_POOL_BG_BLOCKING"
  showEnum ThreadDescriptor'CHROME_THREAD_POOL_SERVICE
    = "CHROME_THREAD_POOL_SERVICE"
  showEnum ThreadDescriptor'CHROME_THREAD_COMPOSITOR
    = "CHROME_THREAD_COMPOSITOR"
  showEnum ThreadDescriptor'CHROME_THREAD_VIZ_COMPOSITOR
    = "CHROME_THREAD_VIZ_COMPOSITOR"
  showEnum ThreadDescriptor'CHROME_THREAD_COMPOSITOR_WORKER
    = "CHROME_THREAD_COMPOSITOR_WORKER"
  showEnum ThreadDescriptor'CHROME_THREAD_SERVICE_WORKER
    = "CHROME_THREAD_SERVICE_WORKER"
  showEnum ThreadDescriptor'CHROME_THREAD_MEMORY_INFRA
    = "CHROME_THREAD_MEMORY_INFRA"
  showEnum ThreadDescriptor'CHROME_THREAD_SAMPLING_PROFILER
    = "CHROME_THREAD_SAMPLING_PROFILER"
  readEnum k
    | (Prelude.==) k "CHROME_THREAD_UNSPECIFIED"
    = Prelude.Just ThreadDescriptor'CHROME_THREAD_UNSPECIFIED
    | (Prelude.==) k "CHROME_THREAD_MAIN"
    = Prelude.Just ThreadDescriptor'CHROME_THREAD_MAIN
    | (Prelude.==) k "CHROME_THREAD_IO"
    = Prelude.Just ThreadDescriptor'CHROME_THREAD_IO
    | (Prelude.==) k "CHROME_THREAD_POOL_BG_WORKER"
    = Prelude.Just ThreadDescriptor'CHROME_THREAD_POOL_BG_WORKER
    | (Prelude.==) k "CHROME_THREAD_POOL_FG_WORKER"
    = Prelude.Just ThreadDescriptor'CHROME_THREAD_POOL_FG_WORKER
    | (Prelude.==) k "CHROME_THREAD_POOL_FB_BLOCKING"
    = Prelude.Just ThreadDescriptor'CHROME_THREAD_POOL_FB_BLOCKING
    | (Prelude.==) k "CHROME_THREAD_POOL_BG_BLOCKING"
    = Prelude.Just ThreadDescriptor'CHROME_THREAD_POOL_BG_BLOCKING
    | (Prelude.==) k "CHROME_THREAD_POOL_SERVICE"
    = Prelude.Just ThreadDescriptor'CHROME_THREAD_POOL_SERVICE
    | (Prelude.==) k "CHROME_THREAD_COMPOSITOR"
    = Prelude.Just ThreadDescriptor'CHROME_THREAD_COMPOSITOR
    | (Prelude.==) k "CHROME_THREAD_VIZ_COMPOSITOR"
    = Prelude.Just ThreadDescriptor'CHROME_THREAD_VIZ_COMPOSITOR
    | (Prelude.==) k "CHROME_THREAD_COMPOSITOR_WORKER"
    = Prelude.Just ThreadDescriptor'CHROME_THREAD_COMPOSITOR_WORKER
    | (Prelude.==) k "CHROME_THREAD_SERVICE_WORKER"
    = Prelude.Just ThreadDescriptor'CHROME_THREAD_SERVICE_WORKER
    | (Prelude.==) k "CHROME_THREAD_MEMORY_INFRA"
    = Prelude.Just ThreadDescriptor'CHROME_THREAD_MEMORY_INFRA
    | (Prelude.==) k "CHROME_THREAD_SAMPLING_PROFILER"
    = Prelude.Just ThreadDescriptor'CHROME_THREAD_SAMPLING_PROFILER
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded ThreadDescriptor'ChromeThreadType where
  minBound = ThreadDescriptor'CHROME_THREAD_UNSPECIFIED
  maxBound = ThreadDescriptor'CHROME_THREAD_SAMPLING_PROFILER
instance Prelude.Enum ThreadDescriptor'ChromeThreadType where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum ChromeThreadType: "
              (Prelude.show k__)))
        Prelude.id (Data.ProtoLens.maybeToEnum k__)
  fromEnum ThreadDescriptor'CHROME_THREAD_UNSPECIFIED = 0
  fromEnum ThreadDescriptor'CHROME_THREAD_MAIN = 1
  fromEnum ThreadDescriptor'CHROME_THREAD_IO = 2
  fromEnum ThreadDescriptor'CHROME_THREAD_POOL_BG_WORKER = 3
  fromEnum ThreadDescriptor'CHROME_THREAD_POOL_FG_WORKER = 4
  fromEnum ThreadDescriptor'CHROME_THREAD_POOL_FB_BLOCKING = 5
  fromEnum ThreadDescriptor'CHROME_THREAD_POOL_BG_BLOCKING = 6
  fromEnum ThreadDescriptor'CHROME_THREAD_POOL_SERVICE = 7
  fromEnum ThreadDescriptor'CHROME_THREAD_COMPOSITOR = 8
  fromEnum ThreadDescriptor'CHROME_THREAD_VIZ_COMPOSITOR = 9
  fromEnum ThreadDescriptor'CHROME_THREAD_COMPOSITOR_WORKER = 10
  fromEnum ThreadDescriptor'CHROME_THREAD_SERVICE_WORKER = 11
  fromEnum ThreadDescriptor'CHROME_THREAD_MEMORY_INFRA = 50
  fromEnum ThreadDescriptor'CHROME_THREAD_SAMPLING_PROFILER = 51
  succ ThreadDescriptor'CHROME_THREAD_SAMPLING_PROFILER
    = Prelude.error
        "ThreadDescriptor'ChromeThreadType.succ: bad argument ThreadDescriptor'CHROME_THREAD_SAMPLING_PROFILER. This value would be out of bounds."
  succ ThreadDescriptor'CHROME_THREAD_UNSPECIFIED
    = ThreadDescriptor'CHROME_THREAD_MAIN
  succ ThreadDescriptor'CHROME_THREAD_MAIN
    = ThreadDescriptor'CHROME_THREAD_IO
  succ ThreadDescriptor'CHROME_THREAD_IO
    = ThreadDescriptor'CHROME_THREAD_POOL_BG_WORKER
  succ ThreadDescriptor'CHROME_THREAD_POOL_BG_WORKER
    = ThreadDescriptor'CHROME_THREAD_POOL_FG_WORKER
  succ ThreadDescriptor'CHROME_THREAD_POOL_FG_WORKER
    = ThreadDescriptor'CHROME_THREAD_POOL_FB_BLOCKING
  succ ThreadDescriptor'CHROME_THREAD_POOL_FB_BLOCKING
    = ThreadDescriptor'CHROME_THREAD_POOL_BG_BLOCKING
  succ ThreadDescriptor'CHROME_THREAD_POOL_BG_BLOCKING
    = ThreadDescriptor'CHROME_THREAD_POOL_SERVICE
  succ ThreadDescriptor'CHROME_THREAD_POOL_SERVICE
    = ThreadDescriptor'CHROME_THREAD_COMPOSITOR
  succ ThreadDescriptor'CHROME_THREAD_COMPOSITOR
    = ThreadDescriptor'CHROME_THREAD_VIZ_COMPOSITOR
  succ ThreadDescriptor'CHROME_THREAD_VIZ_COMPOSITOR
    = ThreadDescriptor'CHROME_THREAD_COMPOSITOR_WORKER
  succ ThreadDescriptor'CHROME_THREAD_COMPOSITOR_WORKER
    = ThreadDescriptor'CHROME_THREAD_SERVICE_WORKER
  succ ThreadDescriptor'CHROME_THREAD_SERVICE_WORKER
    = ThreadDescriptor'CHROME_THREAD_MEMORY_INFRA
  succ ThreadDescriptor'CHROME_THREAD_MEMORY_INFRA
    = ThreadDescriptor'CHROME_THREAD_SAMPLING_PROFILER
  pred ThreadDescriptor'CHROME_THREAD_UNSPECIFIED
    = Prelude.error
        "ThreadDescriptor'ChromeThreadType.pred: bad argument ThreadDescriptor'CHROME_THREAD_UNSPECIFIED. This value would be out of bounds."
  pred ThreadDescriptor'CHROME_THREAD_MAIN
    = ThreadDescriptor'CHROME_THREAD_UNSPECIFIED
  pred ThreadDescriptor'CHROME_THREAD_IO
    = ThreadDescriptor'CHROME_THREAD_MAIN
  pred ThreadDescriptor'CHROME_THREAD_POOL_BG_WORKER
    = ThreadDescriptor'CHROME_THREAD_IO
  pred ThreadDescriptor'CHROME_THREAD_POOL_FG_WORKER
    = ThreadDescriptor'CHROME_THREAD_POOL_BG_WORKER
  pred ThreadDescriptor'CHROME_THREAD_POOL_FB_BLOCKING
    = ThreadDescriptor'CHROME_THREAD_POOL_FG_WORKER
  pred ThreadDescriptor'CHROME_THREAD_POOL_BG_BLOCKING
    = ThreadDescriptor'CHROME_THREAD_POOL_FB_BLOCKING
  pred ThreadDescriptor'CHROME_THREAD_POOL_SERVICE
    = ThreadDescriptor'CHROME_THREAD_POOL_BG_BLOCKING
  pred ThreadDescriptor'CHROME_THREAD_COMPOSITOR
    = ThreadDescriptor'CHROME_THREAD_POOL_SERVICE
  pred ThreadDescriptor'CHROME_THREAD_VIZ_COMPOSITOR
    = ThreadDescriptor'CHROME_THREAD_COMPOSITOR
  pred ThreadDescriptor'CHROME_THREAD_COMPOSITOR_WORKER
    = ThreadDescriptor'CHROME_THREAD_VIZ_COMPOSITOR
  pred ThreadDescriptor'CHROME_THREAD_SERVICE_WORKER
    = ThreadDescriptor'CHROME_THREAD_COMPOSITOR_WORKER
  pred ThreadDescriptor'CHROME_THREAD_MEMORY_INFRA
    = ThreadDescriptor'CHROME_THREAD_SERVICE_WORKER
  pred ThreadDescriptor'CHROME_THREAD_SAMPLING_PROFILER
    = ThreadDescriptor'CHROME_THREAD_MEMORY_INFRA
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault ThreadDescriptor'ChromeThreadType where
  fieldDefault = ThreadDescriptor'CHROME_THREAD_UNSPECIFIED
instance Control.DeepSeq.NFData ThreadDescriptor'ChromeThreadType where
  rnf x__ = Prelude.seq x__ ()
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \9protos/perfetto/trace/track_event/thread_descriptor.proto\DC2\SIperfetto.protos\"\251\ACK\n\
    \\DLEThreadDescriptor\DC2\DLE\n\
    \\ETXpid\CAN\SOH \SOH(\ENQR\ETXpid\DC2\DLE\n\
    \\ETXtid\CAN\STX \SOH(\ENQR\ETXtid\DC2\US\n\
    \\vthread_name\CAN\ENQ \SOH(\tR\n\
    \threadName\DC2`\n\
    \\DC2chrome_thread_type\CAN\EOT \SOH(\SO22.perfetto.protos.ThreadDescriptor.ChromeThreadTypeR\DLEchromeThreadType\DC24\n\
    \\SYNreference_timestamp_us\CAN\ACK \SOH(\ETXR\DC4referenceTimestampUs\DC27\n\
    \\CANreference_thread_time_us\CAN\a \SOH(\ETXR\NAKreferenceThreadTimeUs\DC2K\n\
    \\"reference_thread_instruction_count\CAN\b \SOH(\ETXR\USreferenceThreadInstructionCount\DC2*\n\
    \\DC1legacy_sort_index\CAN\ETX \SOH(\ENQR\SIlegacySortIndex\"\215\ETX\n\
    \\DLEChromeThreadType\DC2\GS\n\
    \\EMCHROME_THREAD_UNSPECIFIED\DLE\NUL\DC2\SYN\n\
    \\DC2CHROME_THREAD_MAIN\DLE\SOH\DC2\DC4\n\
    \\DLECHROME_THREAD_IO\DLE\STX\DC2 \n\
    \\FSCHROME_THREAD_POOL_BG_WORKER\DLE\ETX\DC2 \n\
    \\FSCHROME_THREAD_POOL_FG_WORKER\DLE\EOT\DC2\"\n\
    \\RSCHROME_THREAD_POOL_FB_BLOCKING\DLE\ENQ\DC2\"\n\
    \\RSCHROME_THREAD_POOL_BG_BLOCKING\DLE\ACK\DC2\RS\n\
    \\SUBCHROME_THREAD_POOL_SERVICE\DLE\a\DC2\FS\n\
    \\CANCHROME_THREAD_COMPOSITOR\DLE\b\DC2 \n\
    \\FSCHROME_THREAD_VIZ_COMPOSITOR\DLE\t\DC2#\n\
    \\USCHROME_THREAD_COMPOSITOR_WORKER\DLE\n\
    \\DC2 \n\
    \\FSCHROME_THREAD_SERVICE_WORKER\DLE\v\DC2\RS\n\
    \\SUBCHROME_THREAD_MEMORY_INFRA\DLE2\DC2#\n\
    \\USCHROME_THREAD_SAMPLING_PROFILER\DLE3J\180\NAK\n\
    \\ACK\DC2\EOT\DLE\NULJ\SOH\n\
    \\215\EOT\n\
    \\SOH\f\DC2\ETX\DLE\NUL\DC22\204\EOT\n\
    \ Copyright (C) 2019 The Android Open Source Project\n\
    \\n\
    \ Licensed under the Apache License, Version 2.0 (the \"License\");\n\
    \ you may not use this file except in compliance with the License.\n\
    \ You may obtain a copy of the License at\n\
    \\n\
    \      http://www.apache.org/licenses/LICENSE-2.0\n\
    \\n\
    \ Unless required by applicable law or agreed to in writing, software\n\
    \ distributed under the License is distributed on an \"AS IS\" BASIS,\n\
    \ WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.\n\
    \ See the License for the specific language governing permissions and\n\
    \ limitations under the License.\n\
    \\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\DC2\NUL\CAN\n\
    \\137\SOH\n\
    \\STX\EOT\NUL\DC2\EOT\CAN\NULJ\SOH\SUB} Describes a thread's attributes. Emitted as part of a TrackDescriptor,\n\
    \ usually by the thread's trace writer.\n\
    \\n\
    \ Next id: 9.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\CAN\b\CAN\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\EM\STX\EM\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\EOT\DC2\ETX\EM\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX\EM\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\EM\DC1\DC4\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\EM\ETB\CAN\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX\SUB\STX\EM\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\EOT\DC2\ETX\SUB\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ENQ\DC2\ETX\SUB\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX\SUB\DC1\DC4\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX\SUB\ETB\CAN\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETX\FS\STX\"\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\EOT\DC2\ETX\FS\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ENQ\DC2\ETX\FS\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETX\FS\DC2\GS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETX\FS !\n\
    \\235\SOH\n\
    \\EOT\EOT\NUL\EOT\NUL\DC2\EOT\"\STX:\ETX2\220\SOH ---------------------------------------------------------------------------\n\
    \ Deprecated / legacy fields, which will be removed in the future:\n\
    \ ---------------------------------------------------------------------------\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\EOT\NUL\SOH\DC2\ETX\"\a\ETB\n\
    \\r\n\
    \\ACK\EOT\NUL\EOT\NUL\STX\NUL\DC2\ETX#\EOT\"\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\NUL\SOH\DC2\ETX#\EOT\GS\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\NUL\STX\DC2\ETX# !\n\
    \\r\n\
    \\ACK\EOT\NUL\EOT\NUL\STX\SOH\DC2\ETX%\EOT\ESC\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\SOH\SOH\DC2\ETX%\EOT\SYN\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\SOH\STX\DC2\ETX%\EM\SUB\n\
    \\r\n\
    \\ACK\EOT\NUL\EOT\NUL\STX\STX\DC2\ETX&\EOT\EM\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\STX\SOH\DC2\ETX&\EOT\DC4\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\STX\STX\DC2\ETX&\ETB\CAN\n\
    \\ESC\n\
    \\ACK\EOT\NUL\EOT\NUL\STX\ETX\DC2\ETX)\EOT%\SUB\f Scheduler:\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\ETX\SOH\DC2\ETX)\EOT \n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\ETX\STX\DC2\ETX)#$\n\
    \\r\n\
    \\ACK\EOT\NUL\EOT\NUL\STX\EOT\DC2\ETX*\EOT%\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\EOT\SOH\DC2\ETX*\EOT \n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\EOT\STX\DC2\ETX*#$\n\
    \\r\n\
    \\ACK\EOT\NUL\EOT\NUL\STX\ENQ\DC2\ETX+\EOT'\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\ENQ\SOH\DC2\ETX+\EOT\"\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\ENQ\STX\DC2\ETX+%&\n\
    \\r\n\
    \\ACK\EOT\NUL\EOT\NUL\STX\ACK\DC2\ETX,\EOT'\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\ACK\SOH\DC2\ETX,\EOT\"\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\ACK\STX\DC2\ETX,%&\n\
    \\r\n\
    \\ACK\EOT\NUL\EOT\NUL\STX\a\DC2\ETX-\EOT#\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\a\SOH\DC2\ETX-\EOT\RS\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\a\STX\DC2\ETX-!\"\n\
    \\FS\n\
    \\ACK\EOT\NUL\EOT\NUL\STX\b\DC2\ETX0\EOT!\SUB\r Compositor:\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\b\SOH\DC2\ETX0\EOT\FS\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\b\STX\DC2\ETX0\US \n\
    \\r\n\
    \\ACK\EOT\NUL\EOT\NUL\STX\t\DC2\ETX1\EOT%\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\t\SOH\DC2\ETX1\EOT \n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\t\STX\DC2\ETX1#$\n\
    \\r\n\
    \\ACK\EOT\NUL\EOT\NUL\STX\n\
    \\DC2\ETX2\EOT)\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\n\
    \\SOH\DC2\ETX2\EOT#\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\n\
    \\STX\DC2\ETX2&(\n\
    \\SUB\n\
    \\ACK\EOT\NUL\EOT\NUL\STX\v\DC2\ETX5\EOT&\SUB\v Renderer:\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\v\SOH\DC2\ETX5\EOT \n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\v\STX\DC2\ETX5#%\n\
    \)\n\
    \\ACK\EOT\NUL\EOT\NUL\STX\f\DC2\ETX8\EOT$\SUB\SUB Tracing related threads:\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\f\SOH\DC2\ETX8\EOT\RS\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\f\STX\DC2\ETX8!#\n\
    \\r\n\
    \\ACK\EOT\NUL\EOT\NUL\STX\r\DC2\ETX9\EOT)\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\r\SOH\DC2\ETX9\EOT#\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\r\STX\DC2\ETX9&(\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\ETX\DC2\ETX;\STX3\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\EOT\DC2\ETX;\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ACK\DC2\ETX;\v\ESC\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\SOH\DC2\ETX;\FS.\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ETX\DC2\ETX;12\n\
    \\128\SOH\n\
    \\EOT\EOT\NUL\STX\EOT\DC2\ETX?\STX,\SUBs Deprecated. Use ClockSnapshot in combination with TracePacket's timestamp\n\
    \ and timestamp_clock_id fields instead.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\EOT\DC2\ETX?\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ENQ\DC2\ETX?\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\SOH\DC2\ETX?\DC1'\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ETX\DC2\ETX?*+\n\
    \\250\SOH\n\
    \\EOT\EOT\NUL\STX\ENQ\DC2\ETXE\STX.\SUB\236\SOH Absolute reference values. Clock values in subsequent TrackEvents can be\n\
    \ encoded accumulatively and relative to these. This reduces their var-int\n\
    \ encoding size.\n\
    \ TODO(eseckler): Deprecated. Replace these with ClockSnapshot encoding.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\EOT\DC2\ETXE\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\ENQ\DC2\ETXE\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\SOH\DC2\ETXE\DC1)\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\ETX\DC2\ETXE,-\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\ACK\DC2\ETXF\STX8\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ACK\EOT\DC2\ETXF\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ACK\ENQ\DC2\ETXF\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ACK\SOH\DC2\ETXF\DC13\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ACK\ETX\DC2\ETXF67\n\
    \Y\n\
    \\EOT\EOT\NUL\STX\a\DC2\ETXI\STX'\SUBL To support old UI. New UI should determine default sorting by thread_type.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\a\EOT\DC2\ETXI\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\a\ENQ\DC2\ETXI\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\a\SOH\DC2\ETXI\DC1\"\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\a\ETX\DC2\ETXI%&"