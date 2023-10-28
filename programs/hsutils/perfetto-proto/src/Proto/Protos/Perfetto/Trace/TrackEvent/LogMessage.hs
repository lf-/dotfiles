{- This file was auto-generated from protos/perfetto/trace/track_event/log_message.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Protos.Perfetto.Trace.TrackEvent.LogMessage (
        LogMessage(), LogMessage'Priority(..), LogMessage'Priority(),
        LogMessageBody()
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
     
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.LogMessage_Fields.sourceLocationIid' @:: Lens' LogMessage Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.LogMessage_Fields.maybe'sourceLocationIid' @:: Lens' LogMessage (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.LogMessage_Fields.bodyIid' @:: Lens' LogMessage Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.LogMessage_Fields.maybe'bodyIid' @:: Lens' LogMessage (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.LogMessage_Fields.prio' @:: Lens' LogMessage LogMessage'Priority@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.LogMessage_Fields.maybe'prio' @:: Lens' LogMessage (Prelude.Maybe LogMessage'Priority)@ -}
data LogMessage
  = LogMessage'_constructor {_LogMessage'sourceLocationIid :: !(Prelude.Maybe Data.Word.Word64),
                             _LogMessage'bodyIid :: !(Prelude.Maybe Data.Word.Word64),
                             _LogMessage'prio :: !(Prelude.Maybe LogMessage'Priority),
                             _LogMessage'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show LogMessage where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField LogMessage "sourceLocationIid" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _LogMessage'sourceLocationIid
           (\ x__ y__ -> x__ {_LogMessage'sourceLocationIid = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField LogMessage "maybe'sourceLocationIid" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _LogMessage'sourceLocationIid
           (\ x__ y__ -> x__ {_LogMessage'sourceLocationIid = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField LogMessage "bodyIid" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _LogMessage'bodyIid (\ x__ y__ -> x__ {_LogMessage'bodyIid = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField LogMessage "maybe'bodyIid" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _LogMessage'bodyIid (\ x__ y__ -> x__ {_LogMessage'bodyIid = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField LogMessage "prio" LogMessage'Priority where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _LogMessage'prio (\ x__ y__ -> x__ {_LogMessage'prio = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField LogMessage "maybe'prio" (Prelude.Maybe LogMessage'Priority) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _LogMessage'prio (\ x__ y__ -> x__ {_LogMessage'prio = y__}))
        Prelude.id
instance Data.ProtoLens.Message LogMessage where
  messageName _ = Data.Text.pack "perfetto.protos.LogMessage"
  packedMessageDescriptor _
    = "\n\
      \\n\
      \LogMessage\DC2.\n\
      \\DC3source_location_iid\CAN\SOH \SOH(\EOTR\DC1sourceLocationIid\DC2\EM\n\
      \\bbody_iid\CAN\STX \SOH(\EOTR\abodyIid\DC28\n\
      \\EOTprio\CAN\ETX \SOH(\SO2$.perfetto.protos.LogMessage.PriorityR\EOTprio\"\145\SOH\n\
      \\bPriority\DC2\DC4\n\
      \\DLEPRIO_UNSPECIFIED\DLE\NUL\DC2\SI\n\
      \\vPRIO_UNUSED\DLE\SOH\DC2\DLE\n\
      \\fPRIO_VERBOSE\DLE\STX\DC2\SO\n\
      \\n\
      \PRIO_DEBUG\DLE\ETX\DC2\r\n\
      \\tPRIO_INFO\DLE\EOT\DC2\r\n\
      \\tPRIO_WARN\DLE\ENQ\DC2\SO\n\
      \\n\
      \PRIO_ERROR\DLE\ACK\DC2\SO\n\
      \\n\
      \PRIO_FATAL\DLE\a"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        sourceLocationIid__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "source_location_iid"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'sourceLocationIid")) ::
              Data.ProtoLens.FieldDescriptor LogMessage
        bodyIid__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "body_iid"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'bodyIid")) ::
              Data.ProtoLens.FieldDescriptor LogMessage
        prio__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "prio"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor LogMessage'Priority)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'prio")) ::
              Data.ProtoLens.FieldDescriptor LogMessage
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, sourceLocationIid__field_descriptor),
           (Data.ProtoLens.Tag 2, bodyIid__field_descriptor),
           (Data.ProtoLens.Tag 3, prio__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _LogMessage'_unknownFields
        (\ x__ y__ -> x__ {_LogMessage'_unknownFields = y__})
  defMessage
    = LogMessage'_constructor
        {_LogMessage'sourceLocationIid = Prelude.Nothing,
         _LogMessage'bodyIid = Prelude.Nothing,
         _LogMessage'prio = Prelude.Nothing,
         _LogMessage'_unknownFields = []}
  parseMessage
    = let
        loop ::
          LogMessage -> Data.ProtoLens.Encoding.Bytes.Parser LogMessage
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
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "source_location_iid"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"sourceLocationIid") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "body_iid"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"bodyIid") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "prio"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"prio") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "LogMessage"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'sourceLocationIid") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'bodyIid") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'prio") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             ((Prelude..)
                                ((Prelude..)
                                   Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral)
                                Prelude.fromEnum _v))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData LogMessage where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_LogMessage'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_LogMessage'sourceLocationIid x__)
                (Control.DeepSeq.deepseq
                   (_LogMessage'bodyIid x__)
                   (Control.DeepSeq.deepseq (_LogMessage'prio x__) ())))
data LogMessage'Priority
  = LogMessage'PRIO_UNSPECIFIED |
    LogMessage'PRIO_UNUSED |
    LogMessage'PRIO_VERBOSE |
    LogMessage'PRIO_DEBUG |
    LogMessage'PRIO_INFO |
    LogMessage'PRIO_WARN |
    LogMessage'PRIO_ERROR |
    LogMessage'PRIO_FATAL
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum LogMessage'Priority where
  maybeToEnum 0 = Prelude.Just LogMessage'PRIO_UNSPECIFIED
  maybeToEnum 1 = Prelude.Just LogMessage'PRIO_UNUSED
  maybeToEnum 2 = Prelude.Just LogMessage'PRIO_VERBOSE
  maybeToEnum 3 = Prelude.Just LogMessage'PRIO_DEBUG
  maybeToEnum 4 = Prelude.Just LogMessage'PRIO_INFO
  maybeToEnum 5 = Prelude.Just LogMessage'PRIO_WARN
  maybeToEnum 6 = Prelude.Just LogMessage'PRIO_ERROR
  maybeToEnum 7 = Prelude.Just LogMessage'PRIO_FATAL
  maybeToEnum _ = Prelude.Nothing
  showEnum LogMessage'PRIO_UNSPECIFIED = "PRIO_UNSPECIFIED"
  showEnum LogMessage'PRIO_UNUSED = "PRIO_UNUSED"
  showEnum LogMessage'PRIO_VERBOSE = "PRIO_VERBOSE"
  showEnum LogMessage'PRIO_DEBUG = "PRIO_DEBUG"
  showEnum LogMessage'PRIO_INFO = "PRIO_INFO"
  showEnum LogMessage'PRIO_WARN = "PRIO_WARN"
  showEnum LogMessage'PRIO_ERROR = "PRIO_ERROR"
  showEnum LogMessage'PRIO_FATAL = "PRIO_FATAL"
  readEnum k
    | (Prelude.==) k "PRIO_UNSPECIFIED"
    = Prelude.Just LogMessage'PRIO_UNSPECIFIED
    | (Prelude.==) k "PRIO_UNUSED"
    = Prelude.Just LogMessage'PRIO_UNUSED
    | (Prelude.==) k "PRIO_VERBOSE"
    = Prelude.Just LogMessage'PRIO_VERBOSE
    | (Prelude.==) k "PRIO_DEBUG" = Prelude.Just LogMessage'PRIO_DEBUG
    | (Prelude.==) k "PRIO_INFO" = Prelude.Just LogMessage'PRIO_INFO
    | (Prelude.==) k "PRIO_WARN" = Prelude.Just LogMessage'PRIO_WARN
    | (Prelude.==) k "PRIO_ERROR" = Prelude.Just LogMessage'PRIO_ERROR
    | (Prelude.==) k "PRIO_FATAL" = Prelude.Just LogMessage'PRIO_FATAL
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded LogMessage'Priority where
  minBound = LogMessage'PRIO_UNSPECIFIED
  maxBound = LogMessage'PRIO_FATAL
instance Prelude.Enum LogMessage'Priority where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum Priority: " (Prelude.show k__)))
        Prelude.id (Data.ProtoLens.maybeToEnum k__)
  fromEnum LogMessage'PRIO_UNSPECIFIED = 0
  fromEnum LogMessage'PRIO_UNUSED = 1
  fromEnum LogMessage'PRIO_VERBOSE = 2
  fromEnum LogMessage'PRIO_DEBUG = 3
  fromEnum LogMessage'PRIO_INFO = 4
  fromEnum LogMessage'PRIO_WARN = 5
  fromEnum LogMessage'PRIO_ERROR = 6
  fromEnum LogMessage'PRIO_FATAL = 7
  succ LogMessage'PRIO_FATAL
    = Prelude.error
        "LogMessage'Priority.succ: bad argument LogMessage'PRIO_FATAL. This value would be out of bounds."
  succ LogMessage'PRIO_UNSPECIFIED = LogMessage'PRIO_UNUSED
  succ LogMessage'PRIO_UNUSED = LogMessage'PRIO_VERBOSE
  succ LogMessage'PRIO_VERBOSE = LogMessage'PRIO_DEBUG
  succ LogMessage'PRIO_DEBUG = LogMessage'PRIO_INFO
  succ LogMessage'PRIO_INFO = LogMessage'PRIO_WARN
  succ LogMessage'PRIO_WARN = LogMessage'PRIO_ERROR
  succ LogMessage'PRIO_ERROR = LogMessage'PRIO_FATAL
  pred LogMessage'PRIO_UNSPECIFIED
    = Prelude.error
        "LogMessage'Priority.pred: bad argument LogMessage'PRIO_UNSPECIFIED. This value would be out of bounds."
  pred LogMessage'PRIO_UNUSED = LogMessage'PRIO_UNSPECIFIED
  pred LogMessage'PRIO_VERBOSE = LogMessage'PRIO_UNUSED
  pred LogMessage'PRIO_DEBUG = LogMessage'PRIO_VERBOSE
  pred LogMessage'PRIO_INFO = LogMessage'PRIO_DEBUG
  pred LogMessage'PRIO_WARN = LogMessage'PRIO_INFO
  pred LogMessage'PRIO_ERROR = LogMessage'PRIO_WARN
  pred LogMessage'PRIO_FATAL = LogMessage'PRIO_ERROR
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault LogMessage'Priority where
  fieldDefault = LogMessage'PRIO_UNSPECIFIED
instance Control.DeepSeq.NFData LogMessage'Priority where
  rnf x__ = Prelude.seq x__ ()
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.LogMessage_Fields.iid' @:: Lens' LogMessageBody Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.LogMessage_Fields.maybe'iid' @:: Lens' LogMessageBody (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.LogMessage_Fields.body' @:: Lens' LogMessageBody Data.Text.Text@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.LogMessage_Fields.maybe'body' @:: Lens' LogMessageBody (Prelude.Maybe Data.Text.Text)@ -}
data LogMessageBody
  = LogMessageBody'_constructor {_LogMessageBody'iid :: !(Prelude.Maybe Data.Word.Word64),
                                 _LogMessageBody'body :: !(Prelude.Maybe Data.Text.Text),
                                 _LogMessageBody'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show LogMessageBody where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField LogMessageBody "iid" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _LogMessageBody'iid (\ x__ y__ -> x__ {_LogMessageBody'iid = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField LogMessageBody "maybe'iid" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _LogMessageBody'iid (\ x__ y__ -> x__ {_LogMessageBody'iid = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField LogMessageBody "body" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _LogMessageBody'body
           (\ x__ y__ -> x__ {_LogMessageBody'body = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField LogMessageBody "maybe'body" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _LogMessageBody'body
           (\ x__ y__ -> x__ {_LogMessageBody'body = y__}))
        Prelude.id
instance Data.ProtoLens.Message LogMessageBody where
  messageName _ = Data.Text.pack "perfetto.protos.LogMessageBody"
  packedMessageDescriptor _
    = "\n\
      \\SOLogMessageBody\DC2\DLE\n\
      \\ETXiid\CAN\SOH \SOH(\EOTR\ETXiid\DC2\DC2\n\
      \\EOTbody\CAN\STX \SOH(\tR\EOTbody"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        iid__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "iid"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'iid")) ::
              Data.ProtoLens.FieldDescriptor LogMessageBody
        body__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "body"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'body")) ::
              Data.ProtoLens.FieldDescriptor LogMessageBody
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, iid__field_descriptor),
           (Data.ProtoLens.Tag 2, body__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _LogMessageBody'_unknownFields
        (\ x__ y__ -> x__ {_LogMessageBody'_unknownFields = y__})
  defMessage
    = LogMessageBody'_constructor
        {_LogMessageBody'iid = Prelude.Nothing,
         _LogMessageBody'body = Prelude.Nothing,
         _LogMessageBody'_unknownFields = []}
  parseMessage
    = let
        loop ::
          LogMessageBody
          -> Data.ProtoLens.Encoding.Bytes.Parser LogMessageBody
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
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "iid"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"iid") y x)
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
                                       "body"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"body") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "LogMessageBody"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'iid") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'body") _x
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
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData LogMessageBody where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_LogMessageBody'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_LogMessageBody'iid x__)
                (Control.DeepSeq.deepseq (_LogMessageBody'body x__) ()))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \3protos/perfetto/trace/track_event/log_message.proto\DC2\SIperfetto.protos\"\165\STX\n\
    \\n\
    \LogMessage\DC2.\n\
    \\DC3source_location_iid\CAN\SOH \SOH(\EOTR\DC1sourceLocationIid\DC2\EM\n\
    \\bbody_iid\CAN\STX \SOH(\EOTR\abodyIid\DC28\n\
    \\EOTprio\CAN\ETX \SOH(\SO2$.perfetto.protos.LogMessage.PriorityR\EOTprio\"\145\SOH\n\
    \\bPriority\DC2\DC4\n\
    \\DLEPRIO_UNSPECIFIED\DLE\NUL\DC2\SI\n\
    \\vPRIO_UNUSED\DLE\SOH\DC2\DLE\n\
    \\fPRIO_VERBOSE\DLE\STX\DC2\SO\n\
    \\n\
    \PRIO_DEBUG\DLE\ETX\DC2\r\n\
    \\tPRIO_INFO\DLE\EOT\DC2\r\n\
    \\tPRIO_WARN\DLE\ENQ\DC2\SO\n\
    \\n\
    \PRIO_ERROR\DLE\ACK\DC2\SO\n\
    \\n\
    \PRIO_FATAL\DLE\a\"6\n\
    \\SOLogMessageBody\DC2\DLE\n\
    \\ETXiid\CAN\SOH \SOH(\EOTR\ETXiid\DC2\DC2\n\
    \\EOTbody\CAN\STX \SOH(\tR\EOTbodyJ\133\f\n\
    \\ACK\DC2\EOT\DLE\NUL-\SOH\n\
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
    \\n\
    \\n\
    \\STX\EOT\NUL\DC2\EOT\DC4\NUL$\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\DC4\b\DC2\n\
    \'\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\SYN\STX*\SUB\SUB interned SourceLocation.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\EOT\DC2\ETX\SYN\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX\SYN\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\SYN\DC2%\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\SYN()\n\
    \'\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX\CAN\STX\US\SUB\SUB interned LogMessageBody.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\EOT\DC2\ETX\CAN\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ENQ\DC2\ETX\CAN\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX\CAN\DC2\SUB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX\CAN\GS\RS\n\
    \\f\n\
    \\EOT\EOT\NUL\EOT\NUL\DC2\EOT\EM\STX\"\ETX\n\
    \\f\n\
    \\ENQ\EOT\NUL\EOT\NUL\SOH\DC2\ETX\EM\a\SI\n\
    \\r\n\
    \\ACK\EOT\NUL\EOT\NUL\STX\NUL\DC2\ETX\SUB\EOT\EM\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\NUL\SOH\DC2\ETX\SUB\EOT\DC4\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\NUL\STX\DC2\ETX\SUB\ETB\CAN\n\
    \\r\n\
    \\ACK\EOT\NUL\EOT\NUL\STX\SOH\DC2\ETX\ESC\EOT\DC4\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\SOH\SOH\DC2\ETX\ESC\EOT\SI\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\SOH\STX\DC2\ETX\ESC\DC2\DC3\n\
    \\r\n\
    \\ACK\EOT\NUL\EOT\NUL\STX\STX\DC2\ETX\FS\EOT\NAK\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\STX\SOH\DC2\ETX\FS\EOT\DLE\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\STX\STX\DC2\ETX\FS\DC3\DC4\n\
    \\r\n\
    \\ACK\EOT\NUL\EOT\NUL\STX\ETX\DC2\ETX\GS\EOT\DC3\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\ETX\SOH\DC2\ETX\GS\EOT\SO\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\ETX\STX\DC2\ETX\GS\DC1\DC2\n\
    \\r\n\
    \\ACK\EOT\NUL\EOT\NUL\STX\EOT\DC2\ETX\RS\EOT\DC2\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\EOT\SOH\DC2\ETX\RS\EOT\r\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\EOT\STX\DC2\ETX\RS\DLE\DC1\n\
    \\r\n\
    \\ACK\EOT\NUL\EOT\NUL\STX\ENQ\DC2\ETX\US\EOT\DC2\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\ENQ\SOH\DC2\ETX\US\EOT\r\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\ENQ\STX\DC2\ETX\US\DLE\DC1\n\
    \\r\n\
    \\ACK\EOT\NUL\EOT\NUL\STX\ACK\DC2\ETX \EOT\DC3\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\ACK\SOH\DC2\ETX \EOT\SO\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\ACK\STX\DC2\ETX \DC1\DC2\n\
    \\r\n\
    \\ACK\EOT\NUL\EOT\NUL\STX\a\DC2\ETX!\EOT\DC3\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\a\SOH\DC2\ETX!\EOT\SO\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\a\STX\DC2\ETX!\DC1\DC2\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETX#\STX\GS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\EOT\DC2\ETX#\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ACK\DC2\ETX#\v\DC3\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETX#\DC4\CAN\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETX#\ESC\FS\n\
    \N\n\
    \\STX\EOT\SOH\DC2\EOT*\NUL-\SOH2B --------------------\n\
    \ Interned data types:\n\
    \ --------------------\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX*\b\SYN\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETX+\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\EOT\DC2\ETX+\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ENQ\DC2\ETX+\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETX+\DC2\NAK\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETX+\CAN\EM\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\SOH\DC2\ETX,\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\EOT\DC2\ETX,\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ENQ\DC2\ETX,\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\SOH\DC2\ETX,\DC2\SYN\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ETX\DC2\ETX,\EM\SUB"