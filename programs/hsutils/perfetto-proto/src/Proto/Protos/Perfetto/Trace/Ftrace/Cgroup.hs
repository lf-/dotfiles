{- This file was auto-generated from protos/perfetto/trace/ftrace/cgroup.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Protos.Perfetto.Trace.Ftrace.Cgroup (
        CgroupAttachTaskFtraceEvent(), CgroupDestroyRootFtraceEvent(),
        CgroupMkdirFtraceEvent(), CgroupReleaseFtraceEvent(),
        CgroupRemountFtraceEvent(), CgroupRenameFtraceEvent(),
        CgroupRmdirFtraceEvent(), CgroupSetupRootFtraceEvent(),
        CgroupTransferTasksFtraceEvent()
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
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Cgroup_Fields.dstRoot' @:: Lens' CgroupAttachTaskFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Cgroup_Fields.maybe'dstRoot' @:: Lens' CgroupAttachTaskFtraceEvent (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Cgroup_Fields.dstId' @:: Lens' CgroupAttachTaskFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Cgroup_Fields.maybe'dstId' @:: Lens' CgroupAttachTaskFtraceEvent (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Cgroup_Fields.pid' @:: Lens' CgroupAttachTaskFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Cgroup_Fields.maybe'pid' @:: Lens' CgroupAttachTaskFtraceEvent (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Cgroup_Fields.comm' @:: Lens' CgroupAttachTaskFtraceEvent Data.Text.Text@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Cgroup_Fields.maybe'comm' @:: Lens' CgroupAttachTaskFtraceEvent (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Cgroup_Fields.cname' @:: Lens' CgroupAttachTaskFtraceEvent Data.Text.Text@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Cgroup_Fields.maybe'cname' @:: Lens' CgroupAttachTaskFtraceEvent (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Cgroup_Fields.dstLevel' @:: Lens' CgroupAttachTaskFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Cgroup_Fields.maybe'dstLevel' @:: Lens' CgroupAttachTaskFtraceEvent (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Cgroup_Fields.dstPath' @:: Lens' CgroupAttachTaskFtraceEvent Data.Text.Text@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Cgroup_Fields.maybe'dstPath' @:: Lens' CgroupAttachTaskFtraceEvent (Prelude.Maybe Data.Text.Text)@ -}
data CgroupAttachTaskFtraceEvent
  = CgroupAttachTaskFtraceEvent'_constructor {_CgroupAttachTaskFtraceEvent'dstRoot :: !(Prelude.Maybe Data.Int.Int32),
                                              _CgroupAttachTaskFtraceEvent'dstId :: !(Prelude.Maybe Data.Int.Int32),
                                              _CgroupAttachTaskFtraceEvent'pid :: !(Prelude.Maybe Data.Int.Int32),
                                              _CgroupAttachTaskFtraceEvent'comm :: !(Prelude.Maybe Data.Text.Text),
                                              _CgroupAttachTaskFtraceEvent'cname :: !(Prelude.Maybe Data.Text.Text),
                                              _CgroupAttachTaskFtraceEvent'dstLevel :: !(Prelude.Maybe Data.Int.Int32),
                                              _CgroupAttachTaskFtraceEvent'dstPath :: !(Prelude.Maybe Data.Text.Text),
                                              _CgroupAttachTaskFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show CgroupAttachTaskFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField CgroupAttachTaskFtraceEvent "dstRoot" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CgroupAttachTaskFtraceEvent'dstRoot
           (\ x__ y__ -> x__ {_CgroupAttachTaskFtraceEvent'dstRoot = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField CgroupAttachTaskFtraceEvent "maybe'dstRoot" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CgroupAttachTaskFtraceEvent'dstRoot
           (\ x__ y__ -> x__ {_CgroupAttachTaskFtraceEvent'dstRoot = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CgroupAttachTaskFtraceEvent "dstId" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CgroupAttachTaskFtraceEvent'dstId
           (\ x__ y__ -> x__ {_CgroupAttachTaskFtraceEvent'dstId = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField CgroupAttachTaskFtraceEvent "maybe'dstId" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CgroupAttachTaskFtraceEvent'dstId
           (\ x__ y__ -> x__ {_CgroupAttachTaskFtraceEvent'dstId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CgroupAttachTaskFtraceEvent "pid" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CgroupAttachTaskFtraceEvent'pid
           (\ x__ y__ -> x__ {_CgroupAttachTaskFtraceEvent'pid = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField CgroupAttachTaskFtraceEvent "maybe'pid" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CgroupAttachTaskFtraceEvent'pid
           (\ x__ y__ -> x__ {_CgroupAttachTaskFtraceEvent'pid = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CgroupAttachTaskFtraceEvent "comm" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CgroupAttachTaskFtraceEvent'comm
           (\ x__ y__ -> x__ {_CgroupAttachTaskFtraceEvent'comm = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField CgroupAttachTaskFtraceEvent "maybe'comm" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CgroupAttachTaskFtraceEvent'comm
           (\ x__ y__ -> x__ {_CgroupAttachTaskFtraceEvent'comm = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CgroupAttachTaskFtraceEvent "cname" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CgroupAttachTaskFtraceEvent'cname
           (\ x__ y__ -> x__ {_CgroupAttachTaskFtraceEvent'cname = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField CgroupAttachTaskFtraceEvent "maybe'cname" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CgroupAttachTaskFtraceEvent'cname
           (\ x__ y__ -> x__ {_CgroupAttachTaskFtraceEvent'cname = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CgroupAttachTaskFtraceEvent "dstLevel" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CgroupAttachTaskFtraceEvent'dstLevel
           (\ x__ y__ -> x__ {_CgroupAttachTaskFtraceEvent'dstLevel = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField CgroupAttachTaskFtraceEvent "maybe'dstLevel" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CgroupAttachTaskFtraceEvent'dstLevel
           (\ x__ y__ -> x__ {_CgroupAttachTaskFtraceEvent'dstLevel = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CgroupAttachTaskFtraceEvent "dstPath" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CgroupAttachTaskFtraceEvent'dstPath
           (\ x__ y__ -> x__ {_CgroupAttachTaskFtraceEvent'dstPath = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField CgroupAttachTaskFtraceEvent "maybe'dstPath" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CgroupAttachTaskFtraceEvent'dstPath
           (\ x__ y__ -> x__ {_CgroupAttachTaskFtraceEvent'dstPath = y__}))
        Prelude.id
instance Data.ProtoLens.Message CgroupAttachTaskFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.CgroupAttachTaskFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\ESCCgroupAttachTaskFtraceEvent\DC2\EM\n\
      \\bdst_root\CAN\SOH \SOH(\ENQR\adstRoot\DC2\NAK\n\
      \\ACKdst_id\CAN\STX \SOH(\ENQR\ENQdstId\DC2\DLE\n\
      \\ETXpid\CAN\ETX \SOH(\ENQR\ETXpid\DC2\DC2\n\
      \\EOTcomm\CAN\EOT \SOH(\tR\EOTcomm\DC2\DC4\n\
      \\ENQcname\CAN\ENQ \SOH(\tR\ENQcname\DC2\ESC\n\
      \\tdst_level\CAN\ACK \SOH(\ENQR\bdstLevel\DC2\EM\n\
      \\bdst_path\CAN\a \SOH(\tR\adstPath"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        dstRoot__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "dst_root"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'dstRoot")) ::
              Data.ProtoLens.FieldDescriptor CgroupAttachTaskFtraceEvent
        dstId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "dst_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'dstId")) ::
              Data.ProtoLens.FieldDescriptor CgroupAttachTaskFtraceEvent
        pid__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "pid"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'pid")) ::
              Data.ProtoLens.FieldDescriptor CgroupAttachTaskFtraceEvent
        comm__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "comm"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'comm")) ::
              Data.ProtoLens.FieldDescriptor CgroupAttachTaskFtraceEvent
        cname__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "cname"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'cname")) ::
              Data.ProtoLens.FieldDescriptor CgroupAttachTaskFtraceEvent
        dstLevel__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "dst_level"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'dstLevel")) ::
              Data.ProtoLens.FieldDescriptor CgroupAttachTaskFtraceEvent
        dstPath__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "dst_path"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'dstPath")) ::
              Data.ProtoLens.FieldDescriptor CgroupAttachTaskFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, dstRoot__field_descriptor),
           (Data.ProtoLens.Tag 2, dstId__field_descriptor),
           (Data.ProtoLens.Tag 3, pid__field_descriptor),
           (Data.ProtoLens.Tag 4, comm__field_descriptor),
           (Data.ProtoLens.Tag 5, cname__field_descriptor),
           (Data.ProtoLens.Tag 6, dstLevel__field_descriptor),
           (Data.ProtoLens.Tag 7, dstPath__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _CgroupAttachTaskFtraceEvent'_unknownFields
        (\ x__ y__
           -> x__ {_CgroupAttachTaskFtraceEvent'_unknownFields = y__})
  defMessage
    = CgroupAttachTaskFtraceEvent'_constructor
        {_CgroupAttachTaskFtraceEvent'dstRoot = Prelude.Nothing,
         _CgroupAttachTaskFtraceEvent'dstId = Prelude.Nothing,
         _CgroupAttachTaskFtraceEvent'pid = Prelude.Nothing,
         _CgroupAttachTaskFtraceEvent'comm = Prelude.Nothing,
         _CgroupAttachTaskFtraceEvent'cname = Prelude.Nothing,
         _CgroupAttachTaskFtraceEvent'dstLevel = Prelude.Nothing,
         _CgroupAttachTaskFtraceEvent'dstPath = Prelude.Nothing,
         _CgroupAttachTaskFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          CgroupAttachTaskFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser CgroupAttachTaskFtraceEvent
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
                                       "dst_root"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"dstRoot") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "dst_id"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"dstId") y x)
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
                                       "comm"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"comm") y x)
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
                                       "cname"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"cname") y x)
                        48
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "dst_level"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"dstLevel") y x)
                        58
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "dst_path"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"dstPath") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "CgroupAttachTaskFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'dstRoot") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       ((Prelude..)
                          Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'dstId") _x
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
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'comm") _x
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
                              Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'cname") _x
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
                                 Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'dstLevel") _x
                             of
                               Prelude.Nothing -> Data.Monoid.mempty
                               (Prelude.Just _v)
                                 -> (Data.Monoid.<>)
                                      (Data.ProtoLens.Encoding.Bytes.putVarInt 48)
                                      ((Prelude..)
                                         Data.ProtoLens.Encoding.Bytes.putVarInt
                                         Prelude.fromIntegral _v))
                            ((Data.Monoid.<>)
                               (case
                                    Lens.Family2.view
                                      (Data.ProtoLens.Field.field @"maybe'dstPath") _x
                                of
                                  Prelude.Nothing -> Data.Monoid.mempty
                                  (Prelude.Just _v)
                                    -> (Data.Monoid.<>)
                                         (Data.ProtoLens.Encoding.Bytes.putVarInt 58)
                                         ((Prelude..)
                                            (\ bs
                                               -> (Data.Monoid.<>)
                                                    (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                       (Prelude.fromIntegral
                                                          (Data.ByteString.length bs)))
                                                    (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                            Data.Text.Encoding.encodeUtf8 _v))
                               (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                  (Lens.Family2.view Data.ProtoLens.unknownFields _x))))))))
instance Control.DeepSeq.NFData CgroupAttachTaskFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_CgroupAttachTaskFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_CgroupAttachTaskFtraceEvent'dstRoot x__)
                (Control.DeepSeq.deepseq
                   (_CgroupAttachTaskFtraceEvent'dstId x__)
                   (Control.DeepSeq.deepseq
                      (_CgroupAttachTaskFtraceEvent'pid x__)
                      (Control.DeepSeq.deepseq
                         (_CgroupAttachTaskFtraceEvent'comm x__)
                         (Control.DeepSeq.deepseq
                            (_CgroupAttachTaskFtraceEvent'cname x__)
                            (Control.DeepSeq.deepseq
                               (_CgroupAttachTaskFtraceEvent'dstLevel x__)
                               (Control.DeepSeq.deepseq
                                  (_CgroupAttachTaskFtraceEvent'dstPath x__) ())))))))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Cgroup_Fields.root' @:: Lens' CgroupDestroyRootFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Cgroup_Fields.maybe'root' @:: Lens' CgroupDestroyRootFtraceEvent (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Cgroup_Fields.ssMask' @:: Lens' CgroupDestroyRootFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Cgroup_Fields.maybe'ssMask' @:: Lens' CgroupDestroyRootFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Cgroup_Fields.name' @:: Lens' CgroupDestroyRootFtraceEvent Data.Text.Text@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Cgroup_Fields.maybe'name' @:: Lens' CgroupDestroyRootFtraceEvent (Prelude.Maybe Data.Text.Text)@ -}
data CgroupDestroyRootFtraceEvent
  = CgroupDestroyRootFtraceEvent'_constructor {_CgroupDestroyRootFtraceEvent'root :: !(Prelude.Maybe Data.Int.Int32),
                                               _CgroupDestroyRootFtraceEvent'ssMask :: !(Prelude.Maybe Data.Word.Word32),
                                               _CgroupDestroyRootFtraceEvent'name :: !(Prelude.Maybe Data.Text.Text),
                                               _CgroupDestroyRootFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show CgroupDestroyRootFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField CgroupDestroyRootFtraceEvent "root" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CgroupDestroyRootFtraceEvent'root
           (\ x__ y__ -> x__ {_CgroupDestroyRootFtraceEvent'root = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField CgroupDestroyRootFtraceEvent "maybe'root" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CgroupDestroyRootFtraceEvent'root
           (\ x__ y__ -> x__ {_CgroupDestroyRootFtraceEvent'root = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CgroupDestroyRootFtraceEvent "ssMask" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CgroupDestroyRootFtraceEvent'ssMask
           (\ x__ y__ -> x__ {_CgroupDestroyRootFtraceEvent'ssMask = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField CgroupDestroyRootFtraceEvent "maybe'ssMask" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CgroupDestroyRootFtraceEvent'ssMask
           (\ x__ y__ -> x__ {_CgroupDestroyRootFtraceEvent'ssMask = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CgroupDestroyRootFtraceEvent "name" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CgroupDestroyRootFtraceEvent'name
           (\ x__ y__ -> x__ {_CgroupDestroyRootFtraceEvent'name = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField CgroupDestroyRootFtraceEvent "maybe'name" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CgroupDestroyRootFtraceEvent'name
           (\ x__ y__ -> x__ {_CgroupDestroyRootFtraceEvent'name = y__}))
        Prelude.id
instance Data.ProtoLens.Message CgroupDestroyRootFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.CgroupDestroyRootFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\FSCgroupDestroyRootFtraceEvent\DC2\DC2\n\
      \\EOTroot\CAN\SOH \SOH(\ENQR\EOTroot\DC2\ETB\n\
      \\ass_mask\CAN\STX \SOH(\rR\ACKssMask\DC2\DC2\n\
      \\EOTname\CAN\ETX \SOH(\tR\EOTname"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        root__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "root"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'root")) ::
              Data.ProtoLens.FieldDescriptor CgroupDestroyRootFtraceEvent
        ssMask__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "ss_mask"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'ssMask")) ::
              Data.ProtoLens.FieldDescriptor CgroupDestroyRootFtraceEvent
        name__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'name")) ::
              Data.ProtoLens.FieldDescriptor CgroupDestroyRootFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, root__field_descriptor),
           (Data.ProtoLens.Tag 2, ssMask__field_descriptor),
           (Data.ProtoLens.Tag 3, name__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _CgroupDestroyRootFtraceEvent'_unknownFields
        (\ x__ y__
           -> x__ {_CgroupDestroyRootFtraceEvent'_unknownFields = y__})
  defMessage
    = CgroupDestroyRootFtraceEvent'_constructor
        {_CgroupDestroyRootFtraceEvent'root = Prelude.Nothing,
         _CgroupDestroyRootFtraceEvent'ssMask = Prelude.Nothing,
         _CgroupDestroyRootFtraceEvent'name = Prelude.Nothing,
         _CgroupDestroyRootFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          CgroupDestroyRootFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser CgroupDestroyRootFtraceEvent
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
                                       "root"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"root") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "ss_mask"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"ssMask") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "name"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"name") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "CgroupDestroyRootFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'root") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       ((Prelude..)
                          Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'ssMask") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          ((Prelude..)
                             Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'name") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
                             ((Prelude..)
                                (\ bs
                                   -> (Data.Monoid.<>)
                                        (Data.ProtoLens.Encoding.Bytes.putVarInt
                                           (Prelude.fromIntegral (Data.ByteString.length bs)))
                                        (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                Data.Text.Encoding.encodeUtf8 _v))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData CgroupDestroyRootFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_CgroupDestroyRootFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_CgroupDestroyRootFtraceEvent'root x__)
                (Control.DeepSeq.deepseq
                   (_CgroupDestroyRootFtraceEvent'ssMask x__)
                   (Control.DeepSeq.deepseq
                      (_CgroupDestroyRootFtraceEvent'name x__) ())))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Cgroup_Fields.root' @:: Lens' CgroupMkdirFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Cgroup_Fields.maybe'root' @:: Lens' CgroupMkdirFtraceEvent (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Cgroup_Fields.id' @:: Lens' CgroupMkdirFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Cgroup_Fields.maybe'id' @:: Lens' CgroupMkdirFtraceEvent (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Cgroup_Fields.cname' @:: Lens' CgroupMkdirFtraceEvent Data.Text.Text@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Cgroup_Fields.maybe'cname' @:: Lens' CgroupMkdirFtraceEvent (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Cgroup_Fields.level' @:: Lens' CgroupMkdirFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Cgroup_Fields.maybe'level' @:: Lens' CgroupMkdirFtraceEvent (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Cgroup_Fields.path' @:: Lens' CgroupMkdirFtraceEvent Data.Text.Text@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Cgroup_Fields.maybe'path' @:: Lens' CgroupMkdirFtraceEvent (Prelude.Maybe Data.Text.Text)@ -}
data CgroupMkdirFtraceEvent
  = CgroupMkdirFtraceEvent'_constructor {_CgroupMkdirFtraceEvent'root :: !(Prelude.Maybe Data.Int.Int32),
                                         _CgroupMkdirFtraceEvent'id :: !(Prelude.Maybe Data.Int.Int32),
                                         _CgroupMkdirFtraceEvent'cname :: !(Prelude.Maybe Data.Text.Text),
                                         _CgroupMkdirFtraceEvent'level :: !(Prelude.Maybe Data.Int.Int32),
                                         _CgroupMkdirFtraceEvent'path :: !(Prelude.Maybe Data.Text.Text),
                                         _CgroupMkdirFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show CgroupMkdirFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField CgroupMkdirFtraceEvent "root" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CgroupMkdirFtraceEvent'root
           (\ x__ y__ -> x__ {_CgroupMkdirFtraceEvent'root = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField CgroupMkdirFtraceEvent "maybe'root" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CgroupMkdirFtraceEvent'root
           (\ x__ y__ -> x__ {_CgroupMkdirFtraceEvent'root = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CgroupMkdirFtraceEvent "id" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CgroupMkdirFtraceEvent'id
           (\ x__ y__ -> x__ {_CgroupMkdirFtraceEvent'id = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField CgroupMkdirFtraceEvent "maybe'id" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CgroupMkdirFtraceEvent'id
           (\ x__ y__ -> x__ {_CgroupMkdirFtraceEvent'id = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CgroupMkdirFtraceEvent "cname" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CgroupMkdirFtraceEvent'cname
           (\ x__ y__ -> x__ {_CgroupMkdirFtraceEvent'cname = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField CgroupMkdirFtraceEvent "maybe'cname" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CgroupMkdirFtraceEvent'cname
           (\ x__ y__ -> x__ {_CgroupMkdirFtraceEvent'cname = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CgroupMkdirFtraceEvent "level" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CgroupMkdirFtraceEvent'level
           (\ x__ y__ -> x__ {_CgroupMkdirFtraceEvent'level = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField CgroupMkdirFtraceEvent "maybe'level" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CgroupMkdirFtraceEvent'level
           (\ x__ y__ -> x__ {_CgroupMkdirFtraceEvent'level = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CgroupMkdirFtraceEvent "path" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CgroupMkdirFtraceEvent'path
           (\ x__ y__ -> x__ {_CgroupMkdirFtraceEvent'path = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField CgroupMkdirFtraceEvent "maybe'path" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CgroupMkdirFtraceEvent'path
           (\ x__ y__ -> x__ {_CgroupMkdirFtraceEvent'path = y__}))
        Prelude.id
instance Data.ProtoLens.Message CgroupMkdirFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.CgroupMkdirFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\SYNCgroupMkdirFtraceEvent\DC2\DC2\n\
      \\EOTroot\CAN\SOH \SOH(\ENQR\EOTroot\DC2\SO\n\
      \\STXid\CAN\STX \SOH(\ENQR\STXid\DC2\DC4\n\
      \\ENQcname\CAN\ETX \SOH(\tR\ENQcname\DC2\DC4\n\
      \\ENQlevel\CAN\EOT \SOH(\ENQR\ENQlevel\DC2\DC2\n\
      \\EOTpath\CAN\ENQ \SOH(\tR\EOTpath"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        root__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "root"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'root")) ::
              Data.ProtoLens.FieldDescriptor CgroupMkdirFtraceEvent
        id__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'id")) ::
              Data.ProtoLens.FieldDescriptor CgroupMkdirFtraceEvent
        cname__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "cname"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'cname")) ::
              Data.ProtoLens.FieldDescriptor CgroupMkdirFtraceEvent
        level__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "level"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'level")) ::
              Data.ProtoLens.FieldDescriptor CgroupMkdirFtraceEvent
        path__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "path"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'path")) ::
              Data.ProtoLens.FieldDescriptor CgroupMkdirFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, root__field_descriptor),
           (Data.ProtoLens.Tag 2, id__field_descriptor),
           (Data.ProtoLens.Tag 3, cname__field_descriptor),
           (Data.ProtoLens.Tag 4, level__field_descriptor),
           (Data.ProtoLens.Tag 5, path__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _CgroupMkdirFtraceEvent'_unknownFields
        (\ x__ y__ -> x__ {_CgroupMkdirFtraceEvent'_unknownFields = y__})
  defMessage
    = CgroupMkdirFtraceEvent'_constructor
        {_CgroupMkdirFtraceEvent'root = Prelude.Nothing,
         _CgroupMkdirFtraceEvent'id = Prelude.Nothing,
         _CgroupMkdirFtraceEvent'cname = Prelude.Nothing,
         _CgroupMkdirFtraceEvent'level = Prelude.Nothing,
         _CgroupMkdirFtraceEvent'path = Prelude.Nothing,
         _CgroupMkdirFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          CgroupMkdirFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser CgroupMkdirFtraceEvent
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
                                       "root"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"root") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "id"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"id") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "cname"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"cname") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "level"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"level") y x)
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
                                       "path"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"path") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "CgroupMkdirFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'root") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       ((Prelude..)
                          Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'id") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          ((Prelude..)
                             Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'cname") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
                             ((Prelude..)
                                (\ bs
                                   -> (Data.Monoid.<>)
                                        (Data.ProtoLens.Encoding.Bytes.putVarInt
                                           (Prelude.fromIntegral (Data.ByteString.length bs)))
                                        (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                Data.Text.Encoding.encodeUtf8 _v))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'level") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                                ((Prelude..)
                                   Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                      ((Data.Monoid.<>)
                         (case
                              Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'path") _x
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
                         (Data.ProtoLens.Encoding.Wire.buildFieldSet
                            (Lens.Family2.view Data.ProtoLens.unknownFields _x))))))
instance Control.DeepSeq.NFData CgroupMkdirFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_CgroupMkdirFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_CgroupMkdirFtraceEvent'root x__)
                (Control.DeepSeq.deepseq
                   (_CgroupMkdirFtraceEvent'id x__)
                   (Control.DeepSeq.deepseq
                      (_CgroupMkdirFtraceEvent'cname x__)
                      (Control.DeepSeq.deepseq
                         (_CgroupMkdirFtraceEvent'level x__)
                         (Control.DeepSeq.deepseq (_CgroupMkdirFtraceEvent'path x__) ())))))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Cgroup_Fields.root' @:: Lens' CgroupReleaseFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Cgroup_Fields.maybe'root' @:: Lens' CgroupReleaseFtraceEvent (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Cgroup_Fields.id' @:: Lens' CgroupReleaseFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Cgroup_Fields.maybe'id' @:: Lens' CgroupReleaseFtraceEvent (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Cgroup_Fields.cname' @:: Lens' CgroupReleaseFtraceEvent Data.Text.Text@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Cgroup_Fields.maybe'cname' @:: Lens' CgroupReleaseFtraceEvent (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Cgroup_Fields.level' @:: Lens' CgroupReleaseFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Cgroup_Fields.maybe'level' @:: Lens' CgroupReleaseFtraceEvent (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Cgroup_Fields.path' @:: Lens' CgroupReleaseFtraceEvent Data.Text.Text@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Cgroup_Fields.maybe'path' @:: Lens' CgroupReleaseFtraceEvent (Prelude.Maybe Data.Text.Text)@ -}
data CgroupReleaseFtraceEvent
  = CgroupReleaseFtraceEvent'_constructor {_CgroupReleaseFtraceEvent'root :: !(Prelude.Maybe Data.Int.Int32),
                                           _CgroupReleaseFtraceEvent'id :: !(Prelude.Maybe Data.Int.Int32),
                                           _CgroupReleaseFtraceEvent'cname :: !(Prelude.Maybe Data.Text.Text),
                                           _CgroupReleaseFtraceEvent'level :: !(Prelude.Maybe Data.Int.Int32),
                                           _CgroupReleaseFtraceEvent'path :: !(Prelude.Maybe Data.Text.Text),
                                           _CgroupReleaseFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show CgroupReleaseFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField CgroupReleaseFtraceEvent "root" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CgroupReleaseFtraceEvent'root
           (\ x__ y__ -> x__ {_CgroupReleaseFtraceEvent'root = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField CgroupReleaseFtraceEvent "maybe'root" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CgroupReleaseFtraceEvent'root
           (\ x__ y__ -> x__ {_CgroupReleaseFtraceEvent'root = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CgroupReleaseFtraceEvent "id" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CgroupReleaseFtraceEvent'id
           (\ x__ y__ -> x__ {_CgroupReleaseFtraceEvent'id = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField CgroupReleaseFtraceEvent "maybe'id" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CgroupReleaseFtraceEvent'id
           (\ x__ y__ -> x__ {_CgroupReleaseFtraceEvent'id = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CgroupReleaseFtraceEvent "cname" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CgroupReleaseFtraceEvent'cname
           (\ x__ y__ -> x__ {_CgroupReleaseFtraceEvent'cname = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField CgroupReleaseFtraceEvent "maybe'cname" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CgroupReleaseFtraceEvent'cname
           (\ x__ y__ -> x__ {_CgroupReleaseFtraceEvent'cname = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CgroupReleaseFtraceEvent "level" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CgroupReleaseFtraceEvent'level
           (\ x__ y__ -> x__ {_CgroupReleaseFtraceEvent'level = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField CgroupReleaseFtraceEvent "maybe'level" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CgroupReleaseFtraceEvent'level
           (\ x__ y__ -> x__ {_CgroupReleaseFtraceEvent'level = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CgroupReleaseFtraceEvent "path" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CgroupReleaseFtraceEvent'path
           (\ x__ y__ -> x__ {_CgroupReleaseFtraceEvent'path = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField CgroupReleaseFtraceEvent "maybe'path" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CgroupReleaseFtraceEvent'path
           (\ x__ y__ -> x__ {_CgroupReleaseFtraceEvent'path = y__}))
        Prelude.id
instance Data.ProtoLens.Message CgroupReleaseFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.CgroupReleaseFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\CANCgroupReleaseFtraceEvent\DC2\DC2\n\
      \\EOTroot\CAN\SOH \SOH(\ENQR\EOTroot\DC2\SO\n\
      \\STXid\CAN\STX \SOH(\ENQR\STXid\DC2\DC4\n\
      \\ENQcname\CAN\ETX \SOH(\tR\ENQcname\DC2\DC4\n\
      \\ENQlevel\CAN\EOT \SOH(\ENQR\ENQlevel\DC2\DC2\n\
      \\EOTpath\CAN\ENQ \SOH(\tR\EOTpath"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        root__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "root"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'root")) ::
              Data.ProtoLens.FieldDescriptor CgroupReleaseFtraceEvent
        id__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'id")) ::
              Data.ProtoLens.FieldDescriptor CgroupReleaseFtraceEvent
        cname__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "cname"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'cname")) ::
              Data.ProtoLens.FieldDescriptor CgroupReleaseFtraceEvent
        level__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "level"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'level")) ::
              Data.ProtoLens.FieldDescriptor CgroupReleaseFtraceEvent
        path__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "path"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'path")) ::
              Data.ProtoLens.FieldDescriptor CgroupReleaseFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, root__field_descriptor),
           (Data.ProtoLens.Tag 2, id__field_descriptor),
           (Data.ProtoLens.Tag 3, cname__field_descriptor),
           (Data.ProtoLens.Tag 4, level__field_descriptor),
           (Data.ProtoLens.Tag 5, path__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _CgroupReleaseFtraceEvent'_unknownFields
        (\ x__ y__ -> x__ {_CgroupReleaseFtraceEvent'_unknownFields = y__})
  defMessage
    = CgroupReleaseFtraceEvent'_constructor
        {_CgroupReleaseFtraceEvent'root = Prelude.Nothing,
         _CgroupReleaseFtraceEvent'id = Prelude.Nothing,
         _CgroupReleaseFtraceEvent'cname = Prelude.Nothing,
         _CgroupReleaseFtraceEvent'level = Prelude.Nothing,
         _CgroupReleaseFtraceEvent'path = Prelude.Nothing,
         _CgroupReleaseFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          CgroupReleaseFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser CgroupReleaseFtraceEvent
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
                                       "root"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"root") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "id"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"id") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "cname"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"cname") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "level"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"level") y x)
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
                                       "path"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"path") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "CgroupReleaseFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'root") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       ((Prelude..)
                          Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'id") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          ((Prelude..)
                             Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'cname") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
                             ((Prelude..)
                                (\ bs
                                   -> (Data.Monoid.<>)
                                        (Data.ProtoLens.Encoding.Bytes.putVarInt
                                           (Prelude.fromIntegral (Data.ByteString.length bs)))
                                        (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                Data.Text.Encoding.encodeUtf8 _v))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'level") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                                ((Prelude..)
                                   Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                      ((Data.Monoid.<>)
                         (case
                              Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'path") _x
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
                         (Data.ProtoLens.Encoding.Wire.buildFieldSet
                            (Lens.Family2.view Data.ProtoLens.unknownFields _x))))))
instance Control.DeepSeq.NFData CgroupReleaseFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_CgroupReleaseFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_CgroupReleaseFtraceEvent'root x__)
                (Control.DeepSeq.deepseq
                   (_CgroupReleaseFtraceEvent'id x__)
                   (Control.DeepSeq.deepseq
                      (_CgroupReleaseFtraceEvent'cname x__)
                      (Control.DeepSeq.deepseq
                         (_CgroupReleaseFtraceEvent'level x__)
                         (Control.DeepSeq.deepseq
                            (_CgroupReleaseFtraceEvent'path x__) ())))))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Cgroup_Fields.root' @:: Lens' CgroupRemountFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Cgroup_Fields.maybe'root' @:: Lens' CgroupRemountFtraceEvent (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Cgroup_Fields.ssMask' @:: Lens' CgroupRemountFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Cgroup_Fields.maybe'ssMask' @:: Lens' CgroupRemountFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Cgroup_Fields.name' @:: Lens' CgroupRemountFtraceEvent Data.Text.Text@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Cgroup_Fields.maybe'name' @:: Lens' CgroupRemountFtraceEvent (Prelude.Maybe Data.Text.Text)@ -}
data CgroupRemountFtraceEvent
  = CgroupRemountFtraceEvent'_constructor {_CgroupRemountFtraceEvent'root :: !(Prelude.Maybe Data.Int.Int32),
                                           _CgroupRemountFtraceEvent'ssMask :: !(Prelude.Maybe Data.Word.Word32),
                                           _CgroupRemountFtraceEvent'name :: !(Prelude.Maybe Data.Text.Text),
                                           _CgroupRemountFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show CgroupRemountFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField CgroupRemountFtraceEvent "root" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CgroupRemountFtraceEvent'root
           (\ x__ y__ -> x__ {_CgroupRemountFtraceEvent'root = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField CgroupRemountFtraceEvent "maybe'root" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CgroupRemountFtraceEvent'root
           (\ x__ y__ -> x__ {_CgroupRemountFtraceEvent'root = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CgroupRemountFtraceEvent "ssMask" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CgroupRemountFtraceEvent'ssMask
           (\ x__ y__ -> x__ {_CgroupRemountFtraceEvent'ssMask = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField CgroupRemountFtraceEvent "maybe'ssMask" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CgroupRemountFtraceEvent'ssMask
           (\ x__ y__ -> x__ {_CgroupRemountFtraceEvent'ssMask = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CgroupRemountFtraceEvent "name" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CgroupRemountFtraceEvent'name
           (\ x__ y__ -> x__ {_CgroupRemountFtraceEvent'name = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField CgroupRemountFtraceEvent "maybe'name" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CgroupRemountFtraceEvent'name
           (\ x__ y__ -> x__ {_CgroupRemountFtraceEvent'name = y__}))
        Prelude.id
instance Data.ProtoLens.Message CgroupRemountFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.CgroupRemountFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\CANCgroupRemountFtraceEvent\DC2\DC2\n\
      \\EOTroot\CAN\SOH \SOH(\ENQR\EOTroot\DC2\ETB\n\
      \\ass_mask\CAN\STX \SOH(\rR\ACKssMask\DC2\DC2\n\
      \\EOTname\CAN\ETX \SOH(\tR\EOTname"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        root__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "root"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'root")) ::
              Data.ProtoLens.FieldDescriptor CgroupRemountFtraceEvent
        ssMask__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "ss_mask"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'ssMask")) ::
              Data.ProtoLens.FieldDescriptor CgroupRemountFtraceEvent
        name__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'name")) ::
              Data.ProtoLens.FieldDescriptor CgroupRemountFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, root__field_descriptor),
           (Data.ProtoLens.Tag 2, ssMask__field_descriptor),
           (Data.ProtoLens.Tag 3, name__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _CgroupRemountFtraceEvent'_unknownFields
        (\ x__ y__ -> x__ {_CgroupRemountFtraceEvent'_unknownFields = y__})
  defMessage
    = CgroupRemountFtraceEvent'_constructor
        {_CgroupRemountFtraceEvent'root = Prelude.Nothing,
         _CgroupRemountFtraceEvent'ssMask = Prelude.Nothing,
         _CgroupRemountFtraceEvent'name = Prelude.Nothing,
         _CgroupRemountFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          CgroupRemountFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser CgroupRemountFtraceEvent
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
                                       "root"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"root") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "ss_mask"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"ssMask") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "name"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"name") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "CgroupRemountFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'root") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       ((Prelude..)
                          Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'ssMask") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          ((Prelude..)
                             Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'name") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
                             ((Prelude..)
                                (\ bs
                                   -> (Data.Monoid.<>)
                                        (Data.ProtoLens.Encoding.Bytes.putVarInt
                                           (Prelude.fromIntegral (Data.ByteString.length bs)))
                                        (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                Data.Text.Encoding.encodeUtf8 _v))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData CgroupRemountFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_CgroupRemountFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_CgroupRemountFtraceEvent'root x__)
                (Control.DeepSeq.deepseq
                   (_CgroupRemountFtraceEvent'ssMask x__)
                   (Control.DeepSeq.deepseq (_CgroupRemountFtraceEvent'name x__) ())))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Cgroup_Fields.root' @:: Lens' CgroupRenameFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Cgroup_Fields.maybe'root' @:: Lens' CgroupRenameFtraceEvent (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Cgroup_Fields.id' @:: Lens' CgroupRenameFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Cgroup_Fields.maybe'id' @:: Lens' CgroupRenameFtraceEvent (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Cgroup_Fields.cname' @:: Lens' CgroupRenameFtraceEvent Data.Text.Text@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Cgroup_Fields.maybe'cname' @:: Lens' CgroupRenameFtraceEvent (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Cgroup_Fields.level' @:: Lens' CgroupRenameFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Cgroup_Fields.maybe'level' @:: Lens' CgroupRenameFtraceEvent (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Cgroup_Fields.path' @:: Lens' CgroupRenameFtraceEvent Data.Text.Text@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Cgroup_Fields.maybe'path' @:: Lens' CgroupRenameFtraceEvent (Prelude.Maybe Data.Text.Text)@ -}
data CgroupRenameFtraceEvent
  = CgroupRenameFtraceEvent'_constructor {_CgroupRenameFtraceEvent'root :: !(Prelude.Maybe Data.Int.Int32),
                                          _CgroupRenameFtraceEvent'id :: !(Prelude.Maybe Data.Int.Int32),
                                          _CgroupRenameFtraceEvent'cname :: !(Prelude.Maybe Data.Text.Text),
                                          _CgroupRenameFtraceEvent'level :: !(Prelude.Maybe Data.Int.Int32),
                                          _CgroupRenameFtraceEvent'path :: !(Prelude.Maybe Data.Text.Text),
                                          _CgroupRenameFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show CgroupRenameFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField CgroupRenameFtraceEvent "root" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CgroupRenameFtraceEvent'root
           (\ x__ y__ -> x__ {_CgroupRenameFtraceEvent'root = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField CgroupRenameFtraceEvent "maybe'root" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CgroupRenameFtraceEvent'root
           (\ x__ y__ -> x__ {_CgroupRenameFtraceEvent'root = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CgroupRenameFtraceEvent "id" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CgroupRenameFtraceEvent'id
           (\ x__ y__ -> x__ {_CgroupRenameFtraceEvent'id = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField CgroupRenameFtraceEvent "maybe'id" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CgroupRenameFtraceEvent'id
           (\ x__ y__ -> x__ {_CgroupRenameFtraceEvent'id = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CgroupRenameFtraceEvent "cname" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CgroupRenameFtraceEvent'cname
           (\ x__ y__ -> x__ {_CgroupRenameFtraceEvent'cname = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField CgroupRenameFtraceEvent "maybe'cname" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CgroupRenameFtraceEvent'cname
           (\ x__ y__ -> x__ {_CgroupRenameFtraceEvent'cname = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CgroupRenameFtraceEvent "level" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CgroupRenameFtraceEvent'level
           (\ x__ y__ -> x__ {_CgroupRenameFtraceEvent'level = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField CgroupRenameFtraceEvent "maybe'level" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CgroupRenameFtraceEvent'level
           (\ x__ y__ -> x__ {_CgroupRenameFtraceEvent'level = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CgroupRenameFtraceEvent "path" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CgroupRenameFtraceEvent'path
           (\ x__ y__ -> x__ {_CgroupRenameFtraceEvent'path = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField CgroupRenameFtraceEvent "maybe'path" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CgroupRenameFtraceEvent'path
           (\ x__ y__ -> x__ {_CgroupRenameFtraceEvent'path = y__}))
        Prelude.id
instance Data.ProtoLens.Message CgroupRenameFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.CgroupRenameFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\ETBCgroupRenameFtraceEvent\DC2\DC2\n\
      \\EOTroot\CAN\SOH \SOH(\ENQR\EOTroot\DC2\SO\n\
      \\STXid\CAN\STX \SOH(\ENQR\STXid\DC2\DC4\n\
      \\ENQcname\CAN\ETX \SOH(\tR\ENQcname\DC2\DC4\n\
      \\ENQlevel\CAN\EOT \SOH(\ENQR\ENQlevel\DC2\DC2\n\
      \\EOTpath\CAN\ENQ \SOH(\tR\EOTpath"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        root__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "root"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'root")) ::
              Data.ProtoLens.FieldDescriptor CgroupRenameFtraceEvent
        id__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'id")) ::
              Data.ProtoLens.FieldDescriptor CgroupRenameFtraceEvent
        cname__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "cname"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'cname")) ::
              Data.ProtoLens.FieldDescriptor CgroupRenameFtraceEvent
        level__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "level"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'level")) ::
              Data.ProtoLens.FieldDescriptor CgroupRenameFtraceEvent
        path__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "path"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'path")) ::
              Data.ProtoLens.FieldDescriptor CgroupRenameFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, root__field_descriptor),
           (Data.ProtoLens.Tag 2, id__field_descriptor),
           (Data.ProtoLens.Tag 3, cname__field_descriptor),
           (Data.ProtoLens.Tag 4, level__field_descriptor),
           (Data.ProtoLens.Tag 5, path__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _CgroupRenameFtraceEvent'_unknownFields
        (\ x__ y__ -> x__ {_CgroupRenameFtraceEvent'_unknownFields = y__})
  defMessage
    = CgroupRenameFtraceEvent'_constructor
        {_CgroupRenameFtraceEvent'root = Prelude.Nothing,
         _CgroupRenameFtraceEvent'id = Prelude.Nothing,
         _CgroupRenameFtraceEvent'cname = Prelude.Nothing,
         _CgroupRenameFtraceEvent'level = Prelude.Nothing,
         _CgroupRenameFtraceEvent'path = Prelude.Nothing,
         _CgroupRenameFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          CgroupRenameFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser CgroupRenameFtraceEvent
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
                                       "root"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"root") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "id"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"id") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "cname"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"cname") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "level"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"level") y x)
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
                                       "path"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"path") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "CgroupRenameFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'root") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       ((Prelude..)
                          Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'id") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          ((Prelude..)
                             Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'cname") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
                             ((Prelude..)
                                (\ bs
                                   -> (Data.Monoid.<>)
                                        (Data.ProtoLens.Encoding.Bytes.putVarInt
                                           (Prelude.fromIntegral (Data.ByteString.length bs)))
                                        (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                Data.Text.Encoding.encodeUtf8 _v))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'level") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                                ((Prelude..)
                                   Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                      ((Data.Monoid.<>)
                         (case
                              Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'path") _x
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
                         (Data.ProtoLens.Encoding.Wire.buildFieldSet
                            (Lens.Family2.view Data.ProtoLens.unknownFields _x))))))
instance Control.DeepSeq.NFData CgroupRenameFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_CgroupRenameFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_CgroupRenameFtraceEvent'root x__)
                (Control.DeepSeq.deepseq
                   (_CgroupRenameFtraceEvent'id x__)
                   (Control.DeepSeq.deepseq
                      (_CgroupRenameFtraceEvent'cname x__)
                      (Control.DeepSeq.deepseq
                         (_CgroupRenameFtraceEvent'level x__)
                         (Control.DeepSeq.deepseq
                            (_CgroupRenameFtraceEvent'path x__) ())))))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Cgroup_Fields.root' @:: Lens' CgroupRmdirFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Cgroup_Fields.maybe'root' @:: Lens' CgroupRmdirFtraceEvent (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Cgroup_Fields.id' @:: Lens' CgroupRmdirFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Cgroup_Fields.maybe'id' @:: Lens' CgroupRmdirFtraceEvent (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Cgroup_Fields.cname' @:: Lens' CgroupRmdirFtraceEvent Data.Text.Text@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Cgroup_Fields.maybe'cname' @:: Lens' CgroupRmdirFtraceEvent (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Cgroup_Fields.level' @:: Lens' CgroupRmdirFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Cgroup_Fields.maybe'level' @:: Lens' CgroupRmdirFtraceEvent (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Cgroup_Fields.path' @:: Lens' CgroupRmdirFtraceEvent Data.Text.Text@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Cgroup_Fields.maybe'path' @:: Lens' CgroupRmdirFtraceEvent (Prelude.Maybe Data.Text.Text)@ -}
data CgroupRmdirFtraceEvent
  = CgroupRmdirFtraceEvent'_constructor {_CgroupRmdirFtraceEvent'root :: !(Prelude.Maybe Data.Int.Int32),
                                         _CgroupRmdirFtraceEvent'id :: !(Prelude.Maybe Data.Int.Int32),
                                         _CgroupRmdirFtraceEvent'cname :: !(Prelude.Maybe Data.Text.Text),
                                         _CgroupRmdirFtraceEvent'level :: !(Prelude.Maybe Data.Int.Int32),
                                         _CgroupRmdirFtraceEvent'path :: !(Prelude.Maybe Data.Text.Text),
                                         _CgroupRmdirFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show CgroupRmdirFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField CgroupRmdirFtraceEvent "root" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CgroupRmdirFtraceEvent'root
           (\ x__ y__ -> x__ {_CgroupRmdirFtraceEvent'root = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField CgroupRmdirFtraceEvent "maybe'root" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CgroupRmdirFtraceEvent'root
           (\ x__ y__ -> x__ {_CgroupRmdirFtraceEvent'root = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CgroupRmdirFtraceEvent "id" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CgroupRmdirFtraceEvent'id
           (\ x__ y__ -> x__ {_CgroupRmdirFtraceEvent'id = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField CgroupRmdirFtraceEvent "maybe'id" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CgroupRmdirFtraceEvent'id
           (\ x__ y__ -> x__ {_CgroupRmdirFtraceEvent'id = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CgroupRmdirFtraceEvent "cname" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CgroupRmdirFtraceEvent'cname
           (\ x__ y__ -> x__ {_CgroupRmdirFtraceEvent'cname = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField CgroupRmdirFtraceEvent "maybe'cname" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CgroupRmdirFtraceEvent'cname
           (\ x__ y__ -> x__ {_CgroupRmdirFtraceEvent'cname = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CgroupRmdirFtraceEvent "level" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CgroupRmdirFtraceEvent'level
           (\ x__ y__ -> x__ {_CgroupRmdirFtraceEvent'level = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField CgroupRmdirFtraceEvent "maybe'level" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CgroupRmdirFtraceEvent'level
           (\ x__ y__ -> x__ {_CgroupRmdirFtraceEvent'level = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CgroupRmdirFtraceEvent "path" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CgroupRmdirFtraceEvent'path
           (\ x__ y__ -> x__ {_CgroupRmdirFtraceEvent'path = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField CgroupRmdirFtraceEvent "maybe'path" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CgroupRmdirFtraceEvent'path
           (\ x__ y__ -> x__ {_CgroupRmdirFtraceEvent'path = y__}))
        Prelude.id
instance Data.ProtoLens.Message CgroupRmdirFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.CgroupRmdirFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\SYNCgroupRmdirFtraceEvent\DC2\DC2\n\
      \\EOTroot\CAN\SOH \SOH(\ENQR\EOTroot\DC2\SO\n\
      \\STXid\CAN\STX \SOH(\ENQR\STXid\DC2\DC4\n\
      \\ENQcname\CAN\ETX \SOH(\tR\ENQcname\DC2\DC4\n\
      \\ENQlevel\CAN\EOT \SOH(\ENQR\ENQlevel\DC2\DC2\n\
      \\EOTpath\CAN\ENQ \SOH(\tR\EOTpath"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        root__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "root"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'root")) ::
              Data.ProtoLens.FieldDescriptor CgroupRmdirFtraceEvent
        id__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'id")) ::
              Data.ProtoLens.FieldDescriptor CgroupRmdirFtraceEvent
        cname__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "cname"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'cname")) ::
              Data.ProtoLens.FieldDescriptor CgroupRmdirFtraceEvent
        level__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "level"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'level")) ::
              Data.ProtoLens.FieldDescriptor CgroupRmdirFtraceEvent
        path__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "path"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'path")) ::
              Data.ProtoLens.FieldDescriptor CgroupRmdirFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, root__field_descriptor),
           (Data.ProtoLens.Tag 2, id__field_descriptor),
           (Data.ProtoLens.Tag 3, cname__field_descriptor),
           (Data.ProtoLens.Tag 4, level__field_descriptor),
           (Data.ProtoLens.Tag 5, path__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _CgroupRmdirFtraceEvent'_unknownFields
        (\ x__ y__ -> x__ {_CgroupRmdirFtraceEvent'_unknownFields = y__})
  defMessage
    = CgroupRmdirFtraceEvent'_constructor
        {_CgroupRmdirFtraceEvent'root = Prelude.Nothing,
         _CgroupRmdirFtraceEvent'id = Prelude.Nothing,
         _CgroupRmdirFtraceEvent'cname = Prelude.Nothing,
         _CgroupRmdirFtraceEvent'level = Prelude.Nothing,
         _CgroupRmdirFtraceEvent'path = Prelude.Nothing,
         _CgroupRmdirFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          CgroupRmdirFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser CgroupRmdirFtraceEvent
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
                                       "root"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"root") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "id"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"id") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "cname"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"cname") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "level"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"level") y x)
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
                                       "path"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"path") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "CgroupRmdirFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'root") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       ((Prelude..)
                          Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'id") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          ((Prelude..)
                             Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'cname") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
                             ((Prelude..)
                                (\ bs
                                   -> (Data.Monoid.<>)
                                        (Data.ProtoLens.Encoding.Bytes.putVarInt
                                           (Prelude.fromIntegral (Data.ByteString.length bs)))
                                        (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                Data.Text.Encoding.encodeUtf8 _v))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'level") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                                ((Prelude..)
                                   Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                      ((Data.Monoid.<>)
                         (case
                              Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'path") _x
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
                         (Data.ProtoLens.Encoding.Wire.buildFieldSet
                            (Lens.Family2.view Data.ProtoLens.unknownFields _x))))))
instance Control.DeepSeq.NFData CgroupRmdirFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_CgroupRmdirFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_CgroupRmdirFtraceEvent'root x__)
                (Control.DeepSeq.deepseq
                   (_CgroupRmdirFtraceEvent'id x__)
                   (Control.DeepSeq.deepseq
                      (_CgroupRmdirFtraceEvent'cname x__)
                      (Control.DeepSeq.deepseq
                         (_CgroupRmdirFtraceEvent'level x__)
                         (Control.DeepSeq.deepseq (_CgroupRmdirFtraceEvent'path x__) ())))))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Cgroup_Fields.root' @:: Lens' CgroupSetupRootFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Cgroup_Fields.maybe'root' @:: Lens' CgroupSetupRootFtraceEvent (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Cgroup_Fields.ssMask' @:: Lens' CgroupSetupRootFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Cgroup_Fields.maybe'ssMask' @:: Lens' CgroupSetupRootFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Cgroup_Fields.name' @:: Lens' CgroupSetupRootFtraceEvent Data.Text.Text@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Cgroup_Fields.maybe'name' @:: Lens' CgroupSetupRootFtraceEvent (Prelude.Maybe Data.Text.Text)@ -}
data CgroupSetupRootFtraceEvent
  = CgroupSetupRootFtraceEvent'_constructor {_CgroupSetupRootFtraceEvent'root :: !(Prelude.Maybe Data.Int.Int32),
                                             _CgroupSetupRootFtraceEvent'ssMask :: !(Prelude.Maybe Data.Word.Word32),
                                             _CgroupSetupRootFtraceEvent'name :: !(Prelude.Maybe Data.Text.Text),
                                             _CgroupSetupRootFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show CgroupSetupRootFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField CgroupSetupRootFtraceEvent "root" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CgroupSetupRootFtraceEvent'root
           (\ x__ y__ -> x__ {_CgroupSetupRootFtraceEvent'root = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField CgroupSetupRootFtraceEvent "maybe'root" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CgroupSetupRootFtraceEvent'root
           (\ x__ y__ -> x__ {_CgroupSetupRootFtraceEvent'root = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CgroupSetupRootFtraceEvent "ssMask" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CgroupSetupRootFtraceEvent'ssMask
           (\ x__ y__ -> x__ {_CgroupSetupRootFtraceEvent'ssMask = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField CgroupSetupRootFtraceEvent "maybe'ssMask" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CgroupSetupRootFtraceEvent'ssMask
           (\ x__ y__ -> x__ {_CgroupSetupRootFtraceEvent'ssMask = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CgroupSetupRootFtraceEvent "name" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CgroupSetupRootFtraceEvent'name
           (\ x__ y__ -> x__ {_CgroupSetupRootFtraceEvent'name = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField CgroupSetupRootFtraceEvent "maybe'name" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CgroupSetupRootFtraceEvent'name
           (\ x__ y__ -> x__ {_CgroupSetupRootFtraceEvent'name = y__}))
        Prelude.id
instance Data.ProtoLens.Message CgroupSetupRootFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.CgroupSetupRootFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\SUBCgroupSetupRootFtraceEvent\DC2\DC2\n\
      \\EOTroot\CAN\SOH \SOH(\ENQR\EOTroot\DC2\ETB\n\
      \\ass_mask\CAN\STX \SOH(\rR\ACKssMask\DC2\DC2\n\
      \\EOTname\CAN\ETX \SOH(\tR\EOTname"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        root__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "root"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'root")) ::
              Data.ProtoLens.FieldDescriptor CgroupSetupRootFtraceEvent
        ssMask__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "ss_mask"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'ssMask")) ::
              Data.ProtoLens.FieldDescriptor CgroupSetupRootFtraceEvent
        name__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'name")) ::
              Data.ProtoLens.FieldDescriptor CgroupSetupRootFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, root__field_descriptor),
           (Data.ProtoLens.Tag 2, ssMask__field_descriptor),
           (Data.ProtoLens.Tag 3, name__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _CgroupSetupRootFtraceEvent'_unknownFields
        (\ x__ y__
           -> x__ {_CgroupSetupRootFtraceEvent'_unknownFields = y__})
  defMessage
    = CgroupSetupRootFtraceEvent'_constructor
        {_CgroupSetupRootFtraceEvent'root = Prelude.Nothing,
         _CgroupSetupRootFtraceEvent'ssMask = Prelude.Nothing,
         _CgroupSetupRootFtraceEvent'name = Prelude.Nothing,
         _CgroupSetupRootFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          CgroupSetupRootFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser CgroupSetupRootFtraceEvent
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
                                       "root"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"root") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "ss_mask"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"ssMask") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "name"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"name") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "CgroupSetupRootFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'root") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       ((Prelude..)
                          Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'ssMask") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          ((Prelude..)
                             Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'name") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
                             ((Prelude..)
                                (\ bs
                                   -> (Data.Monoid.<>)
                                        (Data.ProtoLens.Encoding.Bytes.putVarInt
                                           (Prelude.fromIntegral (Data.ByteString.length bs)))
                                        (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                Data.Text.Encoding.encodeUtf8 _v))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData CgroupSetupRootFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_CgroupSetupRootFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_CgroupSetupRootFtraceEvent'root x__)
                (Control.DeepSeq.deepseq
                   (_CgroupSetupRootFtraceEvent'ssMask x__)
                   (Control.DeepSeq.deepseq
                      (_CgroupSetupRootFtraceEvent'name x__) ())))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Cgroup_Fields.dstRoot' @:: Lens' CgroupTransferTasksFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Cgroup_Fields.maybe'dstRoot' @:: Lens' CgroupTransferTasksFtraceEvent (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Cgroup_Fields.dstId' @:: Lens' CgroupTransferTasksFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Cgroup_Fields.maybe'dstId' @:: Lens' CgroupTransferTasksFtraceEvent (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Cgroup_Fields.pid' @:: Lens' CgroupTransferTasksFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Cgroup_Fields.maybe'pid' @:: Lens' CgroupTransferTasksFtraceEvent (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Cgroup_Fields.comm' @:: Lens' CgroupTransferTasksFtraceEvent Data.Text.Text@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Cgroup_Fields.maybe'comm' @:: Lens' CgroupTransferTasksFtraceEvent (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Cgroup_Fields.cname' @:: Lens' CgroupTransferTasksFtraceEvent Data.Text.Text@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Cgroup_Fields.maybe'cname' @:: Lens' CgroupTransferTasksFtraceEvent (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Cgroup_Fields.dstLevel' @:: Lens' CgroupTransferTasksFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Cgroup_Fields.maybe'dstLevel' @:: Lens' CgroupTransferTasksFtraceEvent (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Cgroup_Fields.dstPath' @:: Lens' CgroupTransferTasksFtraceEvent Data.Text.Text@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Cgroup_Fields.maybe'dstPath' @:: Lens' CgroupTransferTasksFtraceEvent (Prelude.Maybe Data.Text.Text)@ -}
data CgroupTransferTasksFtraceEvent
  = CgroupTransferTasksFtraceEvent'_constructor {_CgroupTransferTasksFtraceEvent'dstRoot :: !(Prelude.Maybe Data.Int.Int32),
                                                 _CgroupTransferTasksFtraceEvent'dstId :: !(Prelude.Maybe Data.Int.Int32),
                                                 _CgroupTransferTasksFtraceEvent'pid :: !(Prelude.Maybe Data.Int.Int32),
                                                 _CgroupTransferTasksFtraceEvent'comm :: !(Prelude.Maybe Data.Text.Text),
                                                 _CgroupTransferTasksFtraceEvent'cname :: !(Prelude.Maybe Data.Text.Text),
                                                 _CgroupTransferTasksFtraceEvent'dstLevel :: !(Prelude.Maybe Data.Int.Int32),
                                                 _CgroupTransferTasksFtraceEvent'dstPath :: !(Prelude.Maybe Data.Text.Text),
                                                 _CgroupTransferTasksFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show CgroupTransferTasksFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField CgroupTransferTasksFtraceEvent "dstRoot" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CgroupTransferTasksFtraceEvent'dstRoot
           (\ x__ y__ -> x__ {_CgroupTransferTasksFtraceEvent'dstRoot = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField CgroupTransferTasksFtraceEvent "maybe'dstRoot" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CgroupTransferTasksFtraceEvent'dstRoot
           (\ x__ y__ -> x__ {_CgroupTransferTasksFtraceEvent'dstRoot = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CgroupTransferTasksFtraceEvent "dstId" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CgroupTransferTasksFtraceEvent'dstId
           (\ x__ y__ -> x__ {_CgroupTransferTasksFtraceEvent'dstId = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField CgroupTransferTasksFtraceEvent "maybe'dstId" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CgroupTransferTasksFtraceEvent'dstId
           (\ x__ y__ -> x__ {_CgroupTransferTasksFtraceEvent'dstId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CgroupTransferTasksFtraceEvent "pid" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CgroupTransferTasksFtraceEvent'pid
           (\ x__ y__ -> x__ {_CgroupTransferTasksFtraceEvent'pid = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField CgroupTransferTasksFtraceEvent "maybe'pid" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CgroupTransferTasksFtraceEvent'pid
           (\ x__ y__ -> x__ {_CgroupTransferTasksFtraceEvent'pid = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CgroupTransferTasksFtraceEvent "comm" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CgroupTransferTasksFtraceEvent'comm
           (\ x__ y__ -> x__ {_CgroupTransferTasksFtraceEvent'comm = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField CgroupTransferTasksFtraceEvent "maybe'comm" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CgroupTransferTasksFtraceEvent'comm
           (\ x__ y__ -> x__ {_CgroupTransferTasksFtraceEvent'comm = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CgroupTransferTasksFtraceEvent "cname" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CgroupTransferTasksFtraceEvent'cname
           (\ x__ y__ -> x__ {_CgroupTransferTasksFtraceEvent'cname = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField CgroupTransferTasksFtraceEvent "maybe'cname" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CgroupTransferTasksFtraceEvent'cname
           (\ x__ y__ -> x__ {_CgroupTransferTasksFtraceEvent'cname = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CgroupTransferTasksFtraceEvent "dstLevel" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CgroupTransferTasksFtraceEvent'dstLevel
           (\ x__ y__
              -> x__ {_CgroupTransferTasksFtraceEvent'dstLevel = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField CgroupTransferTasksFtraceEvent "maybe'dstLevel" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CgroupTransferTasksFtraceEvent'dstLevel
           (\ x__ y__
              -> x__ {_CgroupTransferTasksFtraceEvent'dstLevel = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CgroupTransferTasksFtraceEvent "dstPath" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CgroupTransferTasksFtraceEvent'dstPath
           (\ x__ y__ -> x__ {_CgroupTransferTasksFtraceEvent'dstPath = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField CgroupTransferTasksFtraceEvent "maybe'dstPath" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CgroupTransferTasksFtraceEvent'dstPath
           (\ x__ y__ -> x__ {_CgroupTransferTasksFtraceEvent'dstPath = y__}))
        Prelude.id
instance Data.ProtoLens.Message CgroupTransferTasksFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.CgroupTransferTasksFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\RSCgroupTransferTasksFtraceEvent\DC2\EM\n\
      \\bdst_root\CAN\SOH \SOH(\ENQR\adstRoot\DC2\NAK\n\
      \\ACKdst_id\CAN\STX \SOH(\ENQR\ENQdstId\DC2\DLE\n\
      \\ETXpid\CAN\ETX \SOH(\ENQR\ETXpid\DC2\DC2\n\
      \\EOTcomm\CAN\EOT \SOH(\tR\EOTcomm\DC2\DC4\n\
      \\ENQcname\CAN\ENQ \SOH(\tR\ENQcname\DC2\ESC\n\
      \\tdst_level\CAN\ACK \SOH(\ENQR\bdstLevel\DC2\EM\n\
      \\bdst_path\CAN\a \SOH(\tR\adstPath"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        dstRoot__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "dst_root"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'dstRoot")) ::
              Data.ProtoLens.FieldDescriptor CgroupTransferTasksFtraceEvent
        dstId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "dst_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'dstId")) ::
              Data.ProtoLens.FieldDescriptor CgroupTransferTasksFtraceEvent
        pid__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "pid"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'pid")) ::
              Data.ProtoLens.FieldDescriptor CgroupTransferTasksFtraceEvent
        comm__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "comm"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'comm")) ::
              Data.ProtoLens.FieldDescriptor CgroupTransferTasksFtraceEvent
        cname__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "cname"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'cname")) ::
              Data.ProtoLens.FieldDescriptor CgroupTransferTasksFtraceEvent
        dstLevel__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "dst_level"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'dstLevel")) ::
              Data.ProtoLens.FieldDescriptor CgroupTransferTasksFtraceEvent
        dstPath__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "dst_path"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'dstPath")) ::
              Data.ProtoLens.FieldDescriptor CgroupTransferTasksFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, dstRoot__field_descriptor),
           (Data.ProtoLens.Tag 2, dstId__field_descriptor),
           (Data.ProtoLens.Tag 3, pid__field_descriptor),
           (Data.ProtoLens.Tag 4, comm__field_descriptor),
           (Data.ProtoLens.Tag 5, cname__field_descriptor),
           (Data.ProtoLens.Tag 6, dstLevel__field_descriptor),
           (Data.ProtoLens.Tag 7, dstPath__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _CgroupTransferTasksFtraceEvent'_unknownFields
        (\ x__ y__
           -> x__ {_CgroupTransferTasksFtraceEvent'_unknownFields = y__})
  defMessage
    = CgroupTransferTasksFtraceEvent'_constructor
        {_CgroupTransferTasksFtraceEvent'dstRoot = Prelude.Nothing,
         _CgroupTransferTasksFtraceEvent'dstId = Prelude.Nothing,
         _CgroupTransferTasksFtraceEvent'pid = Prelude.Nothing,
         _CgroupTransferTasksFtraceEvent'comm = Prelude.Nothing,
         _CgroupTransferTasksFtraceEvent'cname = Prelude.Nothing,
         _CgroupTransferTasksFtraceEvent'dstLevel = Prelude.Nothing,
         _CgroupTransferTasksFtraceEvent'dstPath = Prelude.Nothing,
         _CgroupTransferTasksFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          CgroupTransferTasksFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser CgroupTransferTasksFtraceEvent
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
                                       "dst_root"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"dstRoot") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "dst_id"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"dstId") y x)
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
                                       "comm"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"comm") y x)
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
                                       "cname"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"cname") y x)
                        48
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "dst_level"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"dstLevel") y x)
                        58
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "dst_path"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"dstPath") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage)
          "CgroupTransferTasksFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'dstRoot") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       ((Prelude..)
                          Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'dstId") _x
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
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'comm") _x
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
                              Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'cname") _x
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
                                 Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'dstLevel") _x
                             of
                               Prelude.Nothing -> Data.Monoid.mempty
                               (Prelude.Just _v)
                                 -> (Data.Monoid.<>)
                                      (Data.ProtoLens.Encoding.Bytes.putVarInt 48)
                                      ((Prelude..)
                                         Data.ProtoLens.Encoding.Bytes.putVarInt
                                         Prelude.fromIntegral _v))
                            ((Data.Monoid.<>)
                               (case
                                    Lens.Family2.view
                                      (Data.ProtoLens.Field.field @"maybe'dstPath") _x
                                of
                                  Prelude.Nothing -> Data.Monoid.mempty
                                  (Prelude.Just _v)
                                    -> (Data.Monoid.<>)
                                         (Data.ProtoLens.Encoding.Bytes.putVarInt 58)
                                         ((Prelude..)
                                            (\ bs
                                               -> (Data.Monoid.<>)
                                                    (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                       (Prelude.fromIntegral
                                                          (Data.ByteString.length bs)))
                                                    (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                            Data.Text.Encoding.encodeUtf8 _v))
                               (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                  (Lens.Family2.view Data.ProtoLens.unknownFields _x))))))))
instance Control.DeepSeq.NFData CgroupTransferTasksFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_CgroupTransferTasksFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_CgroupTransferTasksFtraceEvent'dstRoot x__)
                (Control.DeepSeq.deepseq
                   (_CgroupTransferTasksFtraceEvent'dstId x__)
                   (Control.DeepSeq.deepseq
                      (_CgroupTransferTasksFtraceEvent'pid x__)
                      (Control.DeepSeq.deepseq
                         (_CgroupTransferTasksFtraceEvent'comm x__)
                         (Control.DeepSeq.deepseq
                            (_CgroupTransferTasksFtraceEvent'cname x__)
                            (Control.DeepSeq.deepseq
                               (_CgroupTransferTasksFtraceEvent'dstLevel x__)
                               (Control.DeepSeq.deepseq
                                  (_CgroupTransferTasksFtraceEvent'dstPath x__) ())))))))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \)protos/perfetto/trace/ftrace/cgroup.proto\DC2\SIperfetto.protos\"\195\SOH\n\
    \\ESCCgroupAttachTaskFtraceEvent\DC2\EM\n\
    \\bdst_root\CAN\SOH \SOH(\ENQR\adstRoot\DC2\NAK\n\
    \\ACKdst_id\CAN\STX \SOH(\ENQR\ENQdstId\DC2\DLE\n\
    \\ETXpid\CAN\ETX \SOH(\ENQR\ETXpid\DC2\DC2\n\
    \\EOTcomm\CAN\EOT \SOH(\tR\EOTcomm\DC2\DC4\n\
    \\ENQcname\CAN\ENQ \SOH(\tR\ENQcname\DC2\ESC\n\
    \\tdst_level\CAN\ACK \SOH(\ENQR\bdstLevel\DC2\EM\n\
    \\bdst_path\CAN\a \SOH(\tR\adstPath\"|\n\
    \\SYNCgroupMkdirFtraceEvent\DC2\DC2\n\
    \\EOTroot\CAN\SOH \SOH(\ENQR\EOTroot\DC2\SO\n\
    \\STXid\CAN\STX \SOH(\ENQR\STXid\DC2\DC4\n\
    \\ENQcname\CAN\ETX \SOH(\tR\ENQcname\DC2\DC4\n\
    \\ENQlevel\CAN\EOT \SOH(\ENQR\ENQlevel\DC2\DC2\n\
    \\EOTpath\CAN\ENQ \SOH(\tR\EOTpath\"[\n\
    \\CANCgroupRemountFtraceEvent\DC2\DC2\n\
    \\EOTroot\CAN\SOH \SOH(\ENQR\EOTroot\DC2\ETB\n\
    \\ass_mask\CAN\STX \SOH(\rR\ACKssMask\DC2\DC2\n\
    \\EOTname\CAN\ETX \SOH(\tR\EOTname\"|\n\
    \\SYNCgroupRmdirFtraceEvent\DC2\DC2\n\
    \\EOTroot\CAN\SOH \SOH(\ENQR\EOTroot\DC2\SO\n\
    \\STXid\CAN\STX \SOH(\ENQR\STXid\DC2\DC4\n\
    \\ENQcname\CAN\ETX \SOH(\tR\ENQcname\DC2\DC4\n\
    \\ENQlevel\CAN\EOT \SOH(\ENQR\ENQlevel\DC2\DC2\n\
    \\EOTpath\CAN\ENQ \SOH(\tR\EOTpath\"\198\SOH\n\
    \\RSCgroupTransferTasksFtraceEvent\DC2\EM\n\
    \\bdst_root\CAN\SOH \SOH(\ENQR\adstRoot\DC2\NAK\n\
    \\ACKdst_id\CAN\STX \SOH(\ENQR\ENQdstId\DC2\DLE\n\
    \\ETXpid\CAN\ETX \SOH(\ENQR\ETXpid\DC2\DC2\n\
    \\EOTcomm\CAN\EOT \SOH(\tR\EOTcomm\DC2\DC4\n\
    \\ENQcname\CAN\ENQ \SOH(\tR\ENQcname\DC2\ESC\n\
    \\tdst_level\CAN\ACK \SOH(\ENQR\bdstLevel\DC2\EM\n\
    \\bdst_path\CAN\a \SOH(\tR\adstPath\"_\n\
    \\FSCgroupDestroyRootFtraceEvent\DC2\DC2\n\
    \\EOTroot\CAN\SOH \SOH(\ENQR\EOTroot\DC2\ETB\n\
    \\ass_mask\CAN\STX \SOH(\rR\ACKssMask\DC2\DC2\n\
    \\EOTname\CAN\ETX \SOH(\tR\EOTname\"~\n\
    \\CANCgroupReleaseFtraceEvent\DC2\DC2\n\
    \\EOTroot\CAN\SOH \SOH(\ENQR\EOTroot\DC2\SO\n\
    \\STXid\CAN\STX \SOH(\ENQR\STXid\DC2\DC4\n\
    \\ENQcname\CAN\ETX \SOH(\tR\ENQcname\DC2\DC4\n\
    \\ENQlevel\CAN\EOT \SOH(\ENQR\ENQlevel\DC2\DC2\n\
    \\EOTpath\CAN\ENQ \SOH(\tR\EOTpath\"}\n\
    \\ETBCgroupRenameFtraceEvent\DC2\DC2\n\
    \\EOTroot\CAN\SOH \SOH(\ENQR\EOTroot\DC2\SO\n\
    \\STXid\CAN\STX \SOH(\ENQR\STXid\DC2\DC4\n\
    \\ENQcname\CAN\ETX \SOH(\tR\ENQcname\DC2\DC4\n\
    \\ENQlevel\CAN\EOT \SOH(\ENQR\ENQlevel\DC2\DC2\n\
    \\EOTpath\CAN\ENQ \SOH(\tR\EOTpath\"]\n\
    \\SUBCgroupSetupRootFtraceEvent\DC2\DC2\n\
    \\EOTroot\CAN\SOH \SOH(\ENQR\EOTroot\DC2\ETB\n\
    \\ass_mask\CAN\STX \SOH(\rR\ACKssMask\DC2\DC2\n\
    \\EOTname\CAN\ETX \SOH(\tR\EOTnameJ\228\EM\n\
    \\ACK\DC2\EOT\EOT\NULC\SOH\n\
    \a\n\
    \\SOH\f\DC2\ETX\EOT\NUL\DC22W Autogenerated by:\n\
    \ ../../src/tools/ftrace_proto_gen/ftrace_proto_gen.cc\n\
    \ Do not edit.\n\
    \\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\ENQ\NUL\CAN\n\
    \\n\
    \\n\
    \\STX\EOT\NUL\DC2\EOT\a\NUL\SI\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\a\b#\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\b\STX\RS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\EOT\DC2\ETX\b\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX\b\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\b\DC1\EM\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\b\FS\GS\n\
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
    \\ENQ\EOT\NUL\STX\ETX\ENQ\DC2\ETX\v\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\SOH\DC2\ETX\v\DC2\SYN\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ETX\DC2\ETX\v\EM\SUB\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\EOT\DC2\ETX\f\STX\FS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\EOT\DC2\ETX\f\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ENQ\DC2\ETX\f\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\SOH\DC2\ETX\f\DC2\ETB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ETX\DC2\ETX\f\SUB\ESC\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\ENQ\DC2\ETX\r\STX\US\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\EOT\DC2\ETX\r\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\ENQ\DC2\ETX\r\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\SOH\DC2\ETX\r\DC1\SUB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\ETX\DC2\ETX\r\GS\RS\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\ACK\DC2\ETX\SO\STX\US\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ACK\EOT\DC2\ETX\SO\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ACK\ENQ\DC2\ETX\SO\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ACK\SOH\DC2\ETX\SO\DC2\SUB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ACK\ETX\DC2\ETX\SO\GS\RS\n\
    \\n\
    \\n\
    \\STX\EOT\SOH\DC2\EOT\DLE\NUL\SYN\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX\DLE\b\RS\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETX\DC1\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\EOT\DC2\ETX\DC1\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ENQ\DC2\ETX\DC1\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETX\DC1\DC1\NAK\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETX\DC1\CAN\EM\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\SOH\DC2\ETX\DC2\STX\CAN\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\EOT\DC2\ETX\DC2\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ENQ\DC2\ETX\DC2\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\SOH\DC2\ETX\DC2\DC1\DC3\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ETX\DC2\ETX\DC2\SYN\ETB\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\STX\DC2\ETX\DC3\STX\FS\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\EOT\DC2\ETX\DC3\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\ENQ\DC2\ETX\DC3\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\SOH\DC2\ETX\DC3\DC2\ETB\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\ETX\DC2\ETX\DC3\SUB\ESC\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\ETX\DC2\ETX\DC4\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\EOT\DC2\ETX\DC4\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\ENQ\DC2\ETX\DC4\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\SOH\DC2\ETX\DC4\DC1\SYN\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\ETX\DC2\ETX\DC4\EM\SUB\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\EOT\DC2\ETX\NAK\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\EOT\EOT\DC2\ETX\NAK\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\EOT\ENQ\DC2\ETX\NAK\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\EOT\SOH\DC2\ETX\NAK\DC2\SYN\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\EOT\ETX\DC2\ETX\NAK\EM\SUB\n\
    \\n\
    \\n\
    \\STX\EOT\STX\DC2\EOT\ETB\NUL\ESC\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\SOH\DC2\ETX\ETB\b \n\
    \\v\n\
    \\EOT\EOT\STX\STX\NUL\DC2\ETX\CAN\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\EOT\DC2\ETX\CAN\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ENQ\DC2\ETX\CAN\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\SOH\DC2\ETX\CAN\DC1\NAK\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ETX\DC2\ETX\CAN\CAN\EM\n\
    \\v\n\
    \\EOT\EOT\STX\STX\SOH\DC2\ETX\EM\STX\RS\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\EOT\DC2\ETX\EM\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ENQ\DC2\ETX\EM\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\SOH\DC2\ETX\EM\DC2\EM\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ETX\DC2\ETX\EM\FS\GS\n\
    \\v\n\
    \\EOT\EOT\STX\STX\STX\DC2\ETX\SUB\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\EOT\DC2\ETX\SUB\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\ENQ\DC2\ETX\SUB\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\SOH\DC2\ETX\SUB\DC2\SYN\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\ETX\DC2\ETX\SUB\EM\SUB\n\
    \\n\
    \\n\
    \\STX\EOT\ETX\DC2\EOT\FS\NUL\"\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\ETX\SOH\DC2\ETX\FS\b\RS\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\NUL\DC2\ETX\GS\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\EOT\DC2\ETX\GS\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ENQ\DC2\ETX\GS\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\SOH\DC2\ETX\GS\DC1\NAK\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ETX\DC2\ETX\GS\CAN\EM\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\SOH\DC2\ETX\RS\STX\CAN\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\EOT\DC2\ETX\RS\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\ENQ\DC2\ETX\RS\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\SOH\DC2\ETX\RS\DC1\DC3\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\ETX\DC2\ETX\RS\SYN\ETB\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\STX\DC2\ETX\US\STX\FS\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\STX\EOT\DC2\ETX\US\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\STX\ENQ\DC2\ETX\US\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\STX\SOH\DC2\ETX\US\DC2\ETB\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\STX\ETX\DC2\ETX\US\SUB\ESC\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\ETX\DC2\ETX \STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ETX\EOT\DC2\ETX \STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ETX\ENQ\DC2\ETX \v\DLE\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ETX\SOH\DC2\ETX \DC1\SYN\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ETX\ETX\DC2\ETX \EM\SUB\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\EOT\DC2\ETX!\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\EOT\EOT\DC2\ETX!\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\EOT\ENQ\DC2\ETX!\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\EOT\SOH\DC2\ETX!\DC2\SYN\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\EOT\ETX\DC2\ETX!\EM\SUB\n\
    \\n\
    \\n\
    \\STX\EOT\EOT\DC2\EOT#\NUL+\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\EOT\SOH\DC2\ETX#\b&\n\
    \\v\n\
    \\EOT\EOT\EOT\STX\NUL\DC2\ETX$\STX\RS\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\EOT\DC2\ETX$\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\ENQ\DC2\ETX$\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\SOH\DC2\ETX$\DC1\EM\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\ETX\DC2\ETX$\FS\GS\n\
    \\v\n\
    \\EOT\EOT\EOT\STX\SOH\DC2\ETX%\STX\FS\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\EOT\DC2\ETX%\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\ENQ\DC2\ETX%\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\SOH\DC2\ETX%\DC1\ETB\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\ETX\DC2\ETX%\SUB\ESC\n\
    \\v\n\
    \\EOT\EOT\EOT\STX\STX\DC2\ETX&\STX\EM\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\STX\EOT\DC2\ETX&\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\STX\ENQ\DC2\ETX&\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\STX\SOH\DC2\ETX&\DC1\DC4\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\STX\ETX\DC2\ETX&\ETB\CAN\n\
    \\v\n\
    \\EOT\EOT\EOT\STX\ETX\DC2\ETX'\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\ETX\EOT\DC2\ETX'\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\ETX\ENQ\DC2\ETX'\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\ETX\SOH\DC2\ETX'\DC2\SYN\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\ETX\ETX\DC2\ETX'\EM\SUB\n\
    \\v\n\
    \\EOT\EOT\EOT\STX\EOT\DC2\ETX(\STX\FS\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\EOT\EOT\DC2\ETX(\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\EOT\ENQ\DC2\ETX(\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\EOT\SOH\DC2\ETX(\DC2\ETB\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\EOT\ETX\DC2\ETX(\SUB\ESC\n\
    \\v\n\
    \\EOT\EOT\EOT\STX\ENQ\DC2\ETX)\STX\US\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\ENQ\EOT\DC2\ETX)\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\ENQ\ENQ\DC2\ETX)\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\ENQ\SOH\DC2\ETX)\DC1\SUB\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\ENQ\ETX\DC2\ETX)\GS\RS\n\
    \\v\n\
    \\EOT\EOT\EOT\STX\ACK\DC2\ETX*\STX\US\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\ACK\EOT\DC2\ETX*\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\ACK\ENQ\DC2\ETX*\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\ACK\SOH\DC2\ETX*\DC2\SUB\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\ACK\ETX\DC2\ETX*\GS\RS\n\
    \\n\
    \\n\
    \\STX\EOT\ENQ\DC2\EOT,\NUL0\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\ENQ\SOH\DC2\ETX,\b$\n\
    \\v\n\
    \\EOT\EOT\ENQ\STX\NUL\DC2\ETX-\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\EOT\DC2\ETX-\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\ENQ\DC2\ETX-\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\SOH\DC2\ETX-\DC1\NAK\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\ETX\DC2\ETX-\CAN\EM\n\
    \\v\n\
    \\EOT\EOT\ENQ\STX\SOH\DC2\ETX.\STX\RS\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\SOH\EOT\DC2\ETX.\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\SOH\ENQ\DC2\ETX.\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\SOH\SOH\DC2\ETX.\DC2\EM\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\SOH\ETX\DC2\ETX.\FS\GS\n\
    \\v\n\
    \\EOT\EOT\ENQ\STX\STX\DC2\ETX/\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\STX\EOT\DC2\ETX/\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\STX\ENQ\DC2\ETX/\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\STX\SOH\DC2\ETX/\DC2\SYN\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\STX\ETX\DC2\ETX/\EM\SUB\n\
    \\n\
    \\n\
    \\STX\EOT\ACK\DC2\EOT1\NUL7\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\ACK\SOH\DC2\ETX1\b \n\
    \\v\n\
    \\EOT\EOT\ACK\STX\NUL\DC2\ETX2\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\EOT\DC2\ETX2\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\ENQ\DC2\ETX2\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\SOH\DC2\ETX2\DC1\NAK\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\ETX\DC2\ETX2\CAN\EM\n\
    \\v\n\
    \\EOT\EOT\ACK\STX\SOH\DC2\ETX3\STX\CAN\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\SOH\EOT\DC2\ETX3\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\SOH\ENQ\DC2\ETX3\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\SOH\SOH\DC2\ETX3\DC1\DC3\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\SOH\ETX\DC2\ETX3\SYN\ETB\n\
    \\v\n\
    \\EOT\EOT\ACK\STX\STX\DC2\ETX4\STX\FS\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\STX\EOT\DC2\ETX4\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\STX\ENQ\DC2\ETX4\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\STX\SOH\DC2\ETX4\DC2\ETB\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\STX\ETX\DC2\ETX4\SUB\ESC\n\
    \\v\n\
    \\EOT\EOT\ACK\STX\ETX\DC2\ETX5\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\ETX\EOT\DC2\ETX5\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\ETX\ENQ\DC2\ETX5\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\ETX\SOH\DC2\ETX5\DC1\SYN\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\ETX\ETX\DC2\ETX5\EM\SUB\n\
    \\v\n\
    \\EOT\EOT\ACK\STX\EOT\DC2\ETX6\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\EOT\EOT\DC2\ETX6\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\EOT\ENQ\DC2\ETX6\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\EOT\SOH\DC2\ETX6\DC2\SYN\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\EOT\ETX\DC2\ETX6\EM\SUB\n\
    \\n\
    \\n\
    \\STX\EOT\a\DC2\EOT8\NUL>\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\a\SOH\DC2\ETX8\b\US\n\
    \\v\n\
    \\EOT\EOT\a\STX\NUL\DC2\ETX9\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\a\STX\NUL\EOT\DC2\ETX9\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\a\STX\NUL\ENQ\DC2\ETX9\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\a\STX\NUL\SOH\DC2\ETX9\DC1\NAK\n\
    \\f\n\
    \\ENQ\EOT\a\STX\NUL\ETX\DC2\ETX9\CAN\EM\n\
    \\v\n\
    \\EOT\EOT\a\STX\SOH\DC2\ETX:\STX\CAN\n\
    \\f\n\
    \\ENQ\EOT\a\STX\SOH\EOT\DC2\ETX:\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\a\STX\SOH\ENQ\DC2\ETX:\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\a\STX\SOH\SOH\DC2\ETX:\DC1\DC3\n\
    \\f\n\
    \\ENQ\EOT\a\STX\SOH\ETX\DC2\ETX:\SYN\ETB\n\
    \\v\n\
    \\EOT\EOT\a\STX\STX\DC2\ETX;\STX\FS\n\
    \\f\n\
    \\ENQ\EOT\a\STX\STX\EOT\DC2\ETX;\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\a\STX\STX\ENQ\DC2\ETX;\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\a\STX\STX\SOH\DC2\ETX;\DC2\ETB\n\
    \\f\n\
    \\ENQ\EOT\a\STX\STX\ETX\DC2\ETX;\SUB\ESC\n\
    \\v\n\
    \\EOT\EOT\a\STX\ETX\DC2\ETX<\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\a\STX\ETX\EOT\DC2\ETX<\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\a\STX\ETX\ENQ\DC2\ETX<\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\a\STX\ETX\SOH\DC2\ETX<\DC1\SYN\n\
    \\f\n\
    \\ENQ\EOT\a\STX\ETX\ETX\DC2\ETX<\EM\SUB\n\
    \\v\n\
    \\EOT\EOT\a\STX\EOT\DC2\ETX=\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\a\STX\EOT\EOT\DC2\ETX=\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\a\STX\EOT\ENQ\DC2\ETX=\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\a\STX\EOT\SOH\DC2\ETX=\DC2\SYN\n\
    \\f\n\
    \\ENQ\EOT\a\STX\EOT\ETX\DC2\ETX=\EM\SUB\n\
    \\n\
    \\n\
    \\STX\EOT\b\DC2\EOT?\NULC\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\b\SOH\DC2\ETX?\b\"\n\
    \\v\n\
    \\EOT\EOT\b\STX\NUL\DC2\ETX@\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\b\STX\NUL\EOT\DC2\ETX@\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\b\STX\NUL\ENQ\DC2\ETX@\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\b\STX\NUL\SOH\DC2\ETX@\DC1\NAK\n\
    \\f\n\
    \\ENQ\EOT\b\STX\NUL\ETX\DC2\ETX@\CAN\EM\n\
    \\v\n\
    \\EOT\EOT\b\STX\SOH\DC2\ETXA\STX\RS\n\
    \\f\n\
    \\ENQ\EOT\b\STX\SOH\EOT\DC2\ETXA\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\b\STX\SOH\ENQ\DC2\ETXA\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\b\STX\SOH\SOH\DC2\ETXA\DC2\EM\n\
    \\f\n\
    \\ENQ\EOT\b\STX\SOH\ETX\DC2\ETXA\FS\GS\n\
    \\v\n\
    \\EOT\EOT\b\STX\STX\DC2\ETXB\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\b\STX\STX\EOT\DC2\ETXB\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\b\STX\STX\ENQ\DC2\ETXB\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\b\STX\STX\SOH\DC2\ETXB\DC2\SYN\n\
    \\f\n\
    \\ENQ\EOT\b\STX\STX\ETX\DC2\ETXB\EM\SUB"