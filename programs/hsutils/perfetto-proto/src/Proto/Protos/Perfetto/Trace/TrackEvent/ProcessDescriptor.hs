{- This file was auto-generated from protos/perfetto/trace/track_event/process_descriptor.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Protos.Perfetto.Trace.TrackEvent.ProcessDescriptor (
        ProcessDescriptor(), ProcessDescriptor'ChromeProcessType(..),
        ProcessDescriptor'ChromeProcessType()
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
     
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.ProcessDescriptor_Fields.pid' @:: Lens' ProcessDescriptor Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.ProcessDescriptor_Fields.maybe'pid' @:: Lens' ProcessDescriptor (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.ProcessDescriptor_Fields.cmdline' @:: Lens' ProcessDescriptor [Data.Text.Text]@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.ProcessDescriptor_Fields.vec'cmdline' @:: Lens' ProcessDescriptor (Data.Vector.Vector Data.Text.Text)@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.ProcessDescriptor_Fields.processName' @:: Lens' ProcessDescriptor Data.Text.Text@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.ProcessDescriptor_Fields.maybe'processName' @:: Lens' ProcessDescriptor (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.ProcessDescriptor_Fields.processPriority' @:: Lens' ProcessDescriptor Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.ProcessDescriptor_Fields.maybe'processPriority' @:: Lens' ProcessDescriptor (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.ProcessDescriptor_Fields.startTimestampNs' @:: Lens' ProcessDescriptor Data.Int.Int64@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.ProcessDescriptor_Fields.maybe'startTimestampNs' @:: Lens' ProcessDescriptor (Prelude.Maybe Data.Int.Int64)@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.ProcessDescriptor_Fields.chromeProcessType' @:: Lens' ProcessDescriptor ProcessDescriptor'ChromeProcessType@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.ProcessDescriptor_Fields.maybe'chromeProcessType' @:: Lens' ProcessDescriptor (Prelude.Maybe ProcessDescriptor'ChromeProcessType)@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.ProcessDescriptor_Fields.legacySortIndex' @:: Lens' ProcessDescriptor Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.ProcessDescriptor_Fields.maybe'legacySortIndex' @:: Lens' ProcessDescriptor (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.ProcessDescriptor_Fields.processLabels' @:: Lens' ProcessDescriptor [Data.Text.Text]@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.ProcessDescriptor_Fields.vec'processLabels' @:: Lens' ProcessDescriptor (Data.Vector.Vector Data.Text.Text)@ -}
data ProcessDescriptor
  = ProcessDescriptor'_constructor {_ProcessDescriptor'pid :: !(Prelude.Maybe Data.Int.Int32),
                                    _ProcessDescriptor'cmdline :: !(Data.Vector.Vector Data.Text.Text),
                                    _ProcessDescriptor'processName :: !(Prelude.Maybe Data.Text.Text),
                                    _ProcessDescriptor'processPriority :: !(Prelude.Maybe Data.Int.Int32),
                                    _ProcessDescriptor'startTimestampNs :: !(Prelude.Maybe Data.Int.Int64),
                                    _ProcessDescriptor'chromeProcessType :: !(Prelude.Maybe ProcessDescriptor'ChromeProcessType),
                                    _ProcessDescriptor'legacySortIndex :: !(Prelude.Maybe Data.Int.Int32),
                                    _ProcessDescriptor'processLabels :: !(Data.Vector.Vector Data.Text.Text),
                                    _ProcessDescriptor'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ProcessDescriptor where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ProcessDescriptor "pid" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProcessDescriptor'pid
           (\ x__ y__ -> x__ {_ProcessDescriptor'pid = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField ProcessDescriptor "maybe'pid" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProcessDescriptor'pid
           (\ x__ y__ -> x__ {_ProcessDescriptor'pid = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ProcessDescriptor "cmdline" [Data.Text.Text] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProcessDescriptor'cmdline
           (\ x__ y__ -> x__ {_ProcessDescriptor'cmdline = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField ProcessDescriptor "vec'cmdline" (Data.Vector.Vector Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProcessDescriptor'cmdline
           (\ x__ y__ -> x__ {_ProcessDescriptor'cmdline = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ProcessDescriptor "processName" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProcessDescriptor'processName
           (\ x__ y__ -> x__ {_ProcessDescriptor'processName = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField ProcessDescriptor "maybe'processName" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProcessDescriptor'processName
           (\ x__ y__ -> x__ {_ProcessDescriptor'processName = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ProcessDescriptor "processPriority" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProcessDescriptor'processPriority
           (\ x__ y__ -> x__ {_ProcessDescriptor'processPriority = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField ProcessDescriptor "maybe'processPriority" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProcessDescriptor'processPriority
           (\ x__ y__ -> x__ {_ProcessDescriptor'processPriority = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ProcessDescriptor "startTimestampNs" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProcessDescriptor'startTimestampNs
           (\ x__ y__ -> x__ {_ProcessDescriptor'startTimestampNs = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField ProcessDescriptor "maybe'startTimestampNs" (Prelude.Maybe Data.Int.Int64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProcessDescriptor'startTimestampNs
           (\ x__ y__ -> x__ {_ProcessDescriptor'startTimestampNs = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ProcessDescriptor "chromeProcessType" ProcessDescriptor'ChromeProcessType where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProcessDescriptor'chromeProcessType
           (\ x__ y__ -> x__ {_ProcessDescriptor'chromeProcessType = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField ProcessDescriptor "maybe'chromeProcessType" (Prelude.Maybe ProcessDescriptor'ChromeProcessType) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProcessDescriptor'chromeProcessType
           (\ x__ y__ -> x__ {_ProcessDescriptor'chromeProcessType = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ProcessDescriptor "legacySortIndex" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProcessDescriptor'legacySortIndex
           (\ x__ y__ -> x__ {_ProcessDescriptor'legacySortIndex = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField ProcessDescriptor "maybe'legacySortIndex" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProcessDescriptor'legacySortIndex
           (\ x__ y__ -> x__ {_ProcessDescriptor'legacySortIndex = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ProcessDescriptor "processLabels" [Data.Text.Text] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProcessDescriptor'processLabels
           (\ x__ y__ -> x__ {_ProcessDescriptor'processLabels = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField ProcessDescriptor "vec'processLabels" (Data.Vector.Vector Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProcessDescriptor'processLabels
           (\ x__ y__ -> x__ {_ProcessDescriptor'processLabels = y__}))
        Prelude.id
instance Data.ProtoLens.Message ProcessDescriptor where
  messageName _ = Data.Text.pack "perfetto.protos.ProcessDescriptor"
  packedMessageDescriptor _
    = "\n\
      \\DC1ProcessDescriptor\DC2\DLE\n\
      \\ETXpid\CAN\SOH \SOH(\ENQR\ETXpid\DC2\CAN\n\
      \\acmdline\CAN\STX \ETX(\tR\acmdline\DC2!\n\
      \\fprocess_name\CAN\ACK \SOH(\tR\vprocessName\DC2)\n\
      \\DLEprocess_priority\CAN\ENQ \SOH(\ENQR\SIprocessPriority\DC2,\n\
      \\DC2start_timestamp_ns\CAN\a \SOH(\ETXR\DLEstartTimestampNs\DC2d\n\
      \\DC3chrome_process_type\CAN\EOT \SOH(\SO24.perfetto.protos.ProcessDescriptor.ChromeProcessTypeR\DC1chromeProcessType\DC2*\n\
      \\DC1legacy_sort_index\CAN\ETX \SOH(\ENQR\SIlegacySortIndex\DC2%\n\
      \\SOprocess_labels\CAN\b \ETX(\tR\rprocessLabels\"\225\SOH\n\
      \\DC1ChromeProcessType\DC2\ETB\n\
      \\DC3PROCESS_UNSPECIFIED\DLE\NUL\DC2\DC3\n\
      \\SIPROCESS_BROWSER\DLE\SOH\DC2\DC4\n\
      \\DLEPROCESS_RENDERER\DLE\STX\DC2\DC3\n\
      \\SIPROCESS_UTILITY\DLE\ETX\DC2\DC2\n\
      \\SOPROCESS_ZYGOTE\DLE\EOT\DC2\SUB\n\
      \\SYNPROCESS_SANDBOX_HELPER\DLE\ENQ\DC2\SI\n\
      \\vPROCESS_GPU\DLE\ACK\DC2\CAN\n\
      \\DC4PROCESS_PPAPI_PLUGIN\DLE\a\DC2\CAN\n\
      \\DC4PROCESS_PPAPI_BROKER\DLE\b"
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
              Data.ProtoLens.FieldDescriptor ProcessDescriptor
        cmdline__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "cmdline"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"cmdline")) ::
              Data.ProtoLens.FieldDescriptor ProcessDescriptor
        processName__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "process_name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'processName")) ::
              Data.ProtoLens.FieldDescriptor ProcessDescriptor
        processPriority__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "process_priority"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'processPriority")) ::
              Data.ProtoLens.FieldDescriptor ProcessDescriptor
        startTimestampNs__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "start_timestamp_ns"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'startTimestampNs")) ::
              Data.ProtoLens.FieldDescriptor ProcessDescriptor
        chromeProcessType__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "chrome_process_type"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor ProcessDescriptor'ChromeProcessType)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'chromeProcessType")) ::
              Data.ProtoLens.FieldDescriptor ProcessDescriptor
        legacySortIndex__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "legacy_sort_index"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'legacySortIndex")) ::
              Data.ProtoLens.FieldDescriptor ProcessDescriptor
        processLabels__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "process_labels"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"processLabels")) ::
              Data.ProtoLens.FieldDescriptor ProcessDescriptor
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, pid__field_descriptor),
           (Data.ProtoLens.Tag 2, cmdline__field_descriptor),
           (Data.ProtoLens.Tag 6, processName__field_descriptor),
           (Data.ProtoLens.Tag 5, processPriority__field_descriptor),
           (Data.ProtoLens.Tag 7, startTimestampNs__field_descriptor),
           (Data.ProtoLens.Tag 4, chromeProcessType__field_descriptor),
           (Data.ProtoLens.Tag 3, legacySortIndex__field_descriptor),
           (Data.ProtoLens.Tag 8, processLabels__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ProcessDescriptor'_unknownFields
        (\ x__ y__ -> x__ {_ProcessDescriptor'_unknownFields = y__})
  defMessage
    = ProcessDescriptor'_constructor
        {_ProcessDescriptor'pid = Prelude.Nothing,
         _ProcessDescriptor'cmdline = Data.Vector.Generic.empty,
         _ProcessDescriptor'processName = Prelude.Nothing,
         _ProcessDescriptor'processPriority = Prelude.Nothing,
         _ProcessDescriptor'startTimestampNs = Prelude.Nothing,
         _ProcessDescriptor'chromeProcessType = Prelude.Nothing,
         _ProcessDescriptor'legacySortIndex = Prelude.Nothing,
         _ProcessDescriptor'processLabels = Data.Vector.Generic.empty,
         _ProcessDescriptor'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ProcessDescriptor
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Text.Text
             -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Text.Text
                -> Data.ProtoLens.Encoding.Bytes.Parser ProcessDescriptor
        loop x mutable'cmdline mutable'processLabels
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'cmdline <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                          (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                             mutable'cmdline)
                      frozen'processLabels <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                   mutable'processLabels)
                      (let missing = []
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
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t)
                           (Lens.Family2.set
                              (Data.ProtoLens.Field.field @"vec'cmdline") frozen'cmdline
                              (Lens.Family2.set
                                 (Data.ProtoLens.Field.field @"vec'processLabels")
                                 frozen'processLabels x)))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        8 -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "pid"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"pid") y x)
                                  mutable'cmdline mutable'processLabels
                        18
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                        Data.ProtoLens.Encoding.Bytes.getBytes
                                                          (Prelude.fromIntegral len)
                                            Data.ProtoLens.Encoding.Bytes.runEither
                                              (case Data.Text.Encoding.decodeUtf8' value of
                                                 (Prelude.Left err)
                                                   -> Prelude.Left (Prelude.show err)
                                                 (Prelude.Right r) -> Prelude.Right r))
                                        "cmdline"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'cmdline y)
                                loop x v mutable'processLabels
                        50
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "process_name"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"processName") y x)
                                  mutable'cmdline mutable'processLabels
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "process_priority"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"processPriority") y x)
                                  mutable'cmdline mutable'processLabels
                        56
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "start_timestamp_ns"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"startTimestampNs") y x)
                                  mutable'cmdline mutable'processLabels
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "chrome_process_type"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"chromeProcessType") y x)
                                  mutable'cmdline mutable'processLabels
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "legacy_sort_index"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"legacySortIndex") y x)
                                  mutable'cmdline mutable'processLabels
                        66
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                        Data.ProtoLens.Encoding.Bytes.getBytes
                                                          (Prelude.fromIntegral len)
                                            Data.ProtoLens.Encoding.Bytes.runEither
                                              (case Data.Text.Encoding.decodeUtf8' value of
                                                 (Prelude.Left err)
                                                   -> Prelude.Left (Prelude.show err)
                                                 (Prelude.Right r) -> Prelude.Right r))
                                        "process_labels"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'processLabels y)
                                loop x mutable'cmdline v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'cmdline mutable'processLabels
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'cmdline <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                   Data.ProtoLens.Encoding.Growing.new
              mutable'processLabels <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                         Data.ProtoLens.Encoding.Growing.new
              loop
                Data.ProtoLens.defMessage mutable'cmdline mutable'processLabels)
          "ProcessDescriptor"
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
                (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                   (\ _v
                      -> (Data.Monoid.<>)
                           (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                           ((Prelude..)
                              (\ bs
                                 -> (Data.Monoid.<>)
                                      (Data.ProtoLens.Encoding.Bytes.putVarInt
                                         (Prelude.fromIntegral (Data.ByteString.length bs)))
                                      (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                              Data.Text.Encoding.encodeUtf8 _v))
                   (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'cmdline") _x))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view
                          (Data.ProtoLens.Field.field @"maybe'processName") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 50)
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
                             (Data.ProtoLens.Field.field @"maybe'processPriority") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 40)
                                ((Prelude..)
                                   Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                      ((Data.Monoid.<>)
                         (case
                              Lens.Family2.view
                                (Data.ProtoLens.Field.field @"maybe'startTimestampNs") _x
                          of
                            Prelude.Nothing -> Data.Monoid.mempty
                            (Prelude.Just _v)
                              -> (Data.Monoid.<>)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt 56)
                                   ((Prelude..)
                                      Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral
                                      _v))
                         ((Data.Monoid.<>)
                            (case
                                 Lens.Family2.view
                                   (Data.ProtoLens.Field.field @"maybe'chromeProcessType") _x
                             of
                               Prelude.Nothing -> Data.Monoid.mempty
                               (Prelude.Just _v)
                                 -> (Data.Monoid.<>)
                                      (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                                      ((Prelude..)
                                         ((Prelude..)
                                            Data.ProtoLens.Encoding.Bytes.putVarInt
                                            Prelude.fromIntegral)
                                         Prelude.fromEnum _v))
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
                               ((Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                                     (\ _v
                                        -> (Data.Monoid.<>)
                                             (Data.ProtoLens.Encoding.Bytes.putVarInt 66)
                                             ((Prelude..)
                                                (\ bs
                                                   -> (Data.Monoid.<>)
                                                        (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                           (Prelude.fromIntegral
                                                              (Data.ByteString.length bs)))
                                                        (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                                Data.Text.Encoding.encodeUtf8 _v))
                                     (Lens.Family2.view
                                        (Data.ProtoLens.Field.field @"vec'processLabels") _x))
                                  (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                     (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))))))
instance Control.DeepSeq.NFData ProcessDescriptor where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ProcessDescriptor'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ProcessDescriptor'pid x__)
                (Control.DeepSeq.deepseq
                   (_ProcessDescriptor'cmdline x__)
                   (Control.DeepSeq.deepseq
                      (_ProcessDescriptor'processName x__)
                      (Control.DeepSeq.deepseq
                         (_ProcessDescriptor'processPriority x__)
                         (Control.DeepSeq.deepseq
                            (_ProcessDescriptor'startTimestampNs x__)
                            (Control.DeepSeq.deepseq
                               (_ProcessDescriptor'chromeProcessType x__)
                               (Control.DeepSeq.deepseq
                                  (_ProcessDescriptor'legacySortIndex x__)
                                  (Control.DeepSeq.deepseq
                                     (_ProcessDescriptor'processLabels x__) ()))))))))
data ProcessDescriptor'ChromeProcessType
  = ProcessDescriptor'PROCESS_UNSPECIFIED |
    ProcessDescriptor'PROCESS_BROWSER |
    ProcessDescriptor'PROCESS_RENDERER |
    ProcessDescriptor'PROCESS_UTILITY |
    ProcessDescriptor'PROCESS_ZYGOTE |
    ProcessDescriptor'PROCESS_SANDBOX_HELPER |
    ProcessDescriptor'PROCESS_GPU |
    ProcessDescriptor'PROCESS_PPAPI_PLUGIN |
    ProcessDescriptor'PROCESS_PPAPI_BROKER
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum ProcessDescriptor'ChromeProcessType where
  maybeToEnum 0 = Prelude.Just ProcessDescriptor'PROCESS_UNSPECIFIED
  maybeToEnum 1 = Prelude.Just ProcessDescriptor'PROCESS_BROWSER
  maybeToEnum 2 = Prelude.Just ProcessDescriptor'PROCESS_RENDERER
  maybeToEnum 3 = Prelude.Just ProcessDescriptor'PROCESS_UTILITY
  maybeToEnum 4 = Prelude.Just ProcessDescriptor'PROCESS_ZYGOTE
  maybeToEnum 5
    = Prelude.Just ProcessDescriptor'PROCESS_SANDBOX_HELPER
  maybeToEnum 6 = Prelude.Just ProcessDescriptor'PROCESS_GPU
  maybeToEnum 7 = Prelude.Just ProcessDescriptor'PROCESS_PPAPI_PLUGIN
  maybeToEnum 8 = Prelude.Just ProcessDescriptor'PROCESS_PPAPI_BROKER
  maybeToEnum _ = Prelude.Nothing
  showEnum ProcessDescriptor'PROCESS_UNSPECIFIED
    = "PROCESS_UNSPECIFIED"
  showEnum ProcessDescriptor'PROCESS_BROWSER = "PROCESS_BROWSER"
  showEnum ProcessDescriptor'PROCESS_RENDERER = "PROCESS_RENDERER"
  showEnum ProcessDescriptor'PROCESS_UTILITY = "PROCESS_UTILITY"
  showEnum ProcessDescriptor'PROCESS_ZYGOTE = "PROCESS_ZYGOTE"
  showEnum ProcessDescriptor'PROCESS_SANDBOX_HELPER
    = "PROCESS_SANDBOX_HELPER"
  showEnum ProcessDescriptor'PROCESS_GPU = "PROCESS_GPU"
  showEnum ProcessDescriptor'PROCESS_PPAPI_PLUGIN
    = "PROCESS_PPAPI_PLUGIN"
  showEnum ProcessDescriptor'PROCESS_PPAPI_BROKER
    = "PROCESS_PPAPI_BROKER"
  readEnum k
    | (Prelude.==) k "PROCESS_UNSPECIFIED"
    = Prelude.Just ProcessDescriptor'PROCESS_UNSPECIFIED
    | (Prelude.==) k "PROCESS_BROWSER"
    = Prelude.Just ProcessDescriptor'PROCESS_BROWSER
    | (Prelude.==) k "PROCESS_RENDERER"
    = Prelude.Just ProcessDescriptor'PROCESS_RENDERER
    | (Prelude.==) k "PROCESS_UTILITY"
    = Prelude.Just ProcessDescriptor'PROCESS_UTILITY
    | (Prelude.==) k "PROCESS_ZYGOTE"
    = Prelude.Just ProcessDescriptor'PROCESS_ZYGOTE
    | (Prelude.==) k "PROCESS_SANDBOX_HELPER"
    = Prelude.Just ProcessDescriptor'PROCESS_SANDBOX_HELPER
    | (Prelude.==) k "PROCESS_GPU"
    = Prelude.Just ProcessDescriptor'PROCESS_GPU
    | (Prelude.==) k "PROCESS_PPAPI_PLUGIN"
    = Prelude.Just ProcessDescriptor'PROCESS_PPAPI_PLUGIN
    | (Prelude.==) k "PROCESS_PPAPI_BROKER"
    = Prelude.Just ProcessDescriptor'PROCESS_PPAPI_BROKER
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded ProcessDescriptor'ChromeProcessType where
  minBound = ProcessDescriptor'PROCESS_UNSPECIFIED
  maxBound = ProcessDescriptor'PROCESS_PPAPI_BROKER
instance Prelude.Enum ProcessDescriptor'ChromeProcessType where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum ChromeProcessType: "
              (Prelude.show k__)))
        Prelude.id (Data.ProtoLens.maybeToEnum k__)
  fromEnum ProcessDescriptor'PROCESS_UNSPECIFIED = 0
  fromEnum ProcessDescriptor'PROCESS_BROWSER = 1
  fromEnum ProcessDescriptor'PROCESS_RENDERER = 2
  fromEnum ProcessDescriptor'PROCESS_UTILITY = 3
  fromEnum ProcessDescriptor'PROCESS_ZYGOTE = 4
  fromEnum ProcessDescriptor'PROCESS_SANDBOX_HELPER = 5
  fromEnum ProcessDescriptor'PROCESS_GPU = 6
  fromEnum ProcessDescriptor'PROCESS_PPAPI_PLUGIN = 7
  fromEnum ProcessDescriptor'PROCESS_PPAPI_BROKER = 8
  succ ProcessDescriptor'PROCESS_PPAPI_BROKER
    = Prelude.error
        "ProcessDescriptor'ChromeProcessType.succ: bad argument ProcessDescriptor'PROCESS_PPAPI_BROKER. This value would be out of bounds."
  succ ProcessDescriptor'PROCESS_UNSPECIFIED
    = ProcessDescriptor'PROCESS_BROWSER
  succ ProcessDescriptor'PROCESS_BROWSER
    = ProcessDescriptor'PROCESS_RENDERER
  succ ProcessDescriptor'PROCESS_RENDERER
    = ProcessDescriptor'PROCESS_UTILITY
  succ ProcessDescriptor'PROCESS_UTILITY
    = ProcessDescriptor'PROCESS_ZYGOTE
  succ ProcessDescriptor'PROCESS_ZYGOTE
    = ProcessDescriptor'PROCESS_SANDBOX_HELPER
  succ ProcessDescriptor'PROCESS_SANDBOX_HELPER
    = ProcessDescriptor'PROCESS_GPU
  succ ProcessDescriptor'PROCESS_GPU
    = ProcessDescriptor'PROCESS_PPAPI_PLUGIN
  succ ProcessDescriptor'PROCESS_PPAPI_PLUGIN
    = ProcessDescriptor'PROCESS_PPAPI_BROKER
  pred ProcessDescriptor'PROCESS_UNSPECIFIED
    = Prelude.error
        "ProcessDescriptor'ChromeProcessType.pred: bad argument ProcessDescriptor'PROCESS_UNSPECIFIED. This value would be out of bounds."
  pred ProcessDescriptor'PROCESS_BROWSER
    = ProcessDescriptor'PROCESS_UNSPECIFIED
  pred ProcessDescriptor'PROCESS_RENDERER
    = ProcessDescriptor'PROCESS_BROWSER
  pred ProcessDescriptor'PROCESS_UTILITY
    = ProcessDescriptor'PROCESS_RENDERER
  pred ProcessDescriptor'PROCESS_ZYGOTE
    = ProcessDescriptor'PROCESS_UTILITY
  pred ProcessDescriptor'PROCESS_SANDBOX_HELPER
    = ProcessDescriptor'PROCESS_ZYGOTE
  pred ProcessDescriptor'PROCESS_GPU
    = ProcessDescriptor'PROCESS_SANDBOX_HELPER
  pred ProcessDescriptor'PROCESS_PPAPI_PLUGIN
    = ProcessDescriptor'PROCESS_GPU
  pred ProcessDescriptor'PROCESS_PPAPI_BROKER
    = ProcessDescriptor'PROCESS_PPAPI_PLUGIN
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault ProcessDescriptor'ChromeProcessType where
  fieldDefault = ProcessDescriptor'PROCESS_UNSPECIFIED
instance Control.DeepSeq.NFData ProcessDescriptor'ChromeProcessType where
  rnf x__ = Prelude.seq x__ ()
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \:protos/perfetto/trace/track_event/process_descriptor.proto\DC2\SIperfetto.protos\"\216\EOT\n\
    \\DC1ProcessDescriptor\DC2\DLE\n\
    \\ETXpid\CAN\SOH \SOH(\ENQR\ETXpid\DC2\CAN\n\
    \\acmdline\CAN\STX \ETX(\tR\acmdline\DC2!\n\
    \\fprocess_name\CAN\ACK \SOH(\tR\vprocessName\DC2)\n\
    \\DLEprocess_priority\CAN\ENQ \SOH(\ENQR\SIprocessPriority\DC2,\n\
    \\DC2start_timestamp_ns\CAN\a \SOH(\ETXR\DLEstartTimestampNs\DC2d\n\
    \\DC3chrome_process_type\CAN\EOT \SOH(\SO24.perfetto.protos.ProcessDescriptor.ChromeProcessTypeR\DC1chromeProcessType\DC2*\n\
    \\DC1legacy_sort_index\CAN\ETX \SOH(\ENQR\SIlegacySortIndex\DC2%\n\
    \\SOprocess_labels\CAN\b \ETX(\tR\rprocessLabels\"\225\SOH\n\
    \\DC1ChromeProcessType\DC2\ETB\n\
    \\DC3PROCESS_UNSPECIFIED\DLE\NUL\DC2\DC3\n\
    \\SIPROCESS_BROWSER\DLE\SOH\DC2\DC4\n\
    \\DLEPROCESS_RENDERER\DLE\STX\DC2\DC3\n\
    \\SIPROCESS_UTILITY\DLE\ETX\DC2\DC2\n\
    \\SOPROCESS_ZYGOTE\DLE\EOT\DC2\SUB\n\
    \\SYNPROCESS_SANDBOX_HELPER\DLE\ENQ\DC2\SI\n\
    \\vPROCESS_GPU\DLE\ACK\DC2\CAN\n\
    \\DC4PROCESS_PPAPI_PLUGIN\DLE\a\DC2\CAN\n\
    \\DC4PROCESS_PPAPI_BROKER\DLE\bJ\165\DC3\n\
    \\ACK\DC2\EOT\DLE\NUL<\SOH\n\
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
    \\138\SOH\n\
    \\STX\EOT\NUL\DC2\EOT\CAN\NUL<\SOH\SUB~ Describes a process's attributes. Emitted as part of a TrackDescriptor,\n\
    \ usually by the process's main thread.\n\
    \\n\
    \ Next id: 9.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\CAN\b\EM\n\
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
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX\SUB\STX\RS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\EOT\DC2\ETX\SUB\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ENQ\DC2\ETX\SUB\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX\SUB\DC2\EM\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX\SUB\FS\GS\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETX\ESC\STX#\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\EOT\DC2\ETX\ESC\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ENQ\DC2\ETX\ESC\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETX\ESC\DC2\RS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETX\ESC!\"\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\ETX\DC2\ETX\GS\STX&\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\EOT\DC2\ETX\GS\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ENQ\DC2\ETX\GS\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\SOH\DC2\ETX\GS\DC1!\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ETX\DC2\ETX\GS$%\n\
    \\163\SOH\n\
    \\EOT\EOT\NUL\STX\EOT\DC2\ETX!\STX(\SUB\149\SOH Process start time in nanoseconds.\n\
    \ The timestamp refers to the trace clock by default. Other clock IDs\n\
    \ provided in TracePacket are not supported.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\EOT\DC2\ETX!\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ENQ\DC2\ETX!\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\SOH\DC2\ETX!\DC1#\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ETX\DC2\ETX!&'\n\
    \\147\STX\n\
    \\EOT\EOT\NUL\EOT\NUL\DC2\EOT(\STX2\ETX\SUB& See chromium's content::ProcessType.\n\
    \2\220\SOH ---------------------------------------------------------------------------\n\
    \ Deprecated / legacy fields, which will be removed in the future:\n\
    \ ---------------------------------------------------------------------------\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\EOT\NUL\SOH\DC2\ETX(\a\CAN\n\
    \\r\n\
    \\ACK\EOT\NUL\EOT\NUL\STX\NUL\DC2\ETX)\EOT\FS\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\NUL\SOH\DC2\ETX)\EOT\ETB\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\NUL\STX\DC2\ETX)\SUB\ESC\n\
    \\r\n\
    \\ACK\EOT\NUL\EOT\NUL\STX\SOH\DC2\ETX*\EOT\CAN\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\SOH\SOH\DC2\ETX*\EOT\DC3\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\SOH\STX\DC2\ETX*\SYN\ETB\n\
    \\r\n\
    \\ACK\EOT\NUL\EOT\NUL\STX\STX\DC2\ETX+\EOT\EM\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\STX\SOH\DC2\ETX+\EOT\DC4\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\STX\STX\DC2\ETX+\ETB\CAN\n\
    \\r\n\
    \\ACK\EOT\NUL\EOT\NUL\STX\ETX\DC2\ETX,\EOT\CAN\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\ETX\SOH\DC2\ETX,\EOT\DC3\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\ETX\STX\DC2\ETX,\SYN\ETB\n\
    \\r\n\
    \\ACK\EOT\NUL\EOT\NUL\STX\EOT\DC2\ETX-\EOT\ETB\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\EOT\SOH\DC2\ETX-\EOT\DC2\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\EOT\STX\DC2\ETX-\NAK\SYN\n\
    \\r\n\
    \\ACK\EOT\NUL\EOT\NUL\STX\ENQ\DC2\ETX.\EOT\US\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\ENQ\SOH\DC2\ETX.\EOT\SUB\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\ENQ\STX\DC2\ETX.\GS\RS\n\
    \\r\n\
    \\ACK\EOT\NUL\EOT\NUL\STX\ACK\DC2\ETX/\EOT\DC4\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\ACK\SOH\DC2\ETX/\EOT\SI\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\ACK\STX\DC2\ETX/\DC2\DC3\n\
    \\r\n\
    \\ACK\EOT\NUL\EOT\NUL\STX\a\DC2\ETX0\EOT\GS\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\a\SOH\DC2\ETX0\EOT\CAN\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\a\STX\DC2\ETX0\ESC\FS\n\
    \\r\n\
    \\ACK\EOT\NUL\EOT\NUL\STX\b\DC2\ETX1\EOT\GS\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\b\SOH\DC2\ETX1\EOT\CAN\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\b\STX\DC2\ETX1\ESC\FS\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\ENQ\DC2\ETX3\STX5\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\EOT\DC2\ETX3\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\ACK\DC2\ETX3\v\FS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\SOH\DC2\ETX3\GS0\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\ETX\DC2\ETX334\n\
    \Z\n\
    \\EOT\EOT\NUL\STX\ACK\DC2\ETX6\STX'\SUBM To support old UI. New UI should determine default sorting by process_type.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ACK\EOT\DC2\ETX6\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ACK\ENQ\DC2\ETX6\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ACK\SOH\DC2\ETX6\DC1\"\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ACK\ETX\DC2\ETX6%&\n\
    \\207\SOH\n\
    \\EOT\EOT\NUL\STX\a\DC2\ETX;\STX%\SUB\193\SOH Labels can be used to further describe properties of the work performed by\n\
    \ the process. For example, these can be used by Chrome renderer process to\n\
    \ provide titles of frames being rendered.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\a\EOT\DC2\ETX;\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\a\ENQ\DC2\ETX;\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\a\SOH\DC2\ETX;\DC2 \n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\a\ETX\DC2\ETX;#$"