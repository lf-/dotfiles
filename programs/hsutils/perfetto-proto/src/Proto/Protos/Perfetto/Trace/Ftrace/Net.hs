{- This file was auto-generated from protos/perfetto/trace/ftrace/net.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Protos.Perfetto.Trace.Ftrace.Net (
        NapiGroReceiveEntryFtraceEvent(), NapiGroReceiveExitFtraceEvent(),
        NetDevXmitFtraceEvent(), NetifReceiveSkbFtraceEvent()
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
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Net_Fields.dataLen' @:: Lens' NapiGroReceiveEntryFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Net_Fields.maybe'dataLen' @:: Lens' NapiGroReceiveEntryFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Net_Fields.gsoSize' @:: Lens' NapiGroReceiveEntryFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Net_Fields.maybe'gsoSize' @:: Lens' NapiGroReceiveEntryFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Net_Fields.gsoType' @:: Lens' NapiGroReceiveEntryFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Net_Fields.maybe'gsoType' @:: Lens' NapiGroReceiveEntryFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Net_Fields.hash' @:: Lens' NapiGroReceiveEntryFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Net_Fields.maybe'hash' @:: Lens' NapiGroReceiveEntryFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Net_Fields.ipSummed' @:: Lens' NapiGroReceiveEntryFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Net_Fields.maybe'ipSummed' @:: Lens' NapiGroReceiveEntryFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Net_Fields.l4Hash' @:: Lens' NapiGroReceiveEntryFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Net_Fields.maybe'l4Hash' @:: Lens' NapiGroReceiveEntryFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Net_Fields.len' @:: Lens' NapiGroReceiveEntryFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Net_Fields.maybe'len' @:: Lens' NapiGroReceiveEntryFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Net_Fields.macHeader' @:: Lens' NapiGroReceiveEntryFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Net_Fields.maybe'macHeader' @:: Lens' NapiGroReceiveEntryFtraceEvent (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Net_Fields.macHeaderValid' @:: Lens' NapiGroReceiveEntryFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Net_Fields.maybe'macHeaderValid' @:: Lens' NapiGroReceiveEntryFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Net_Fields.name' @:: Lens' NapiGroReceiveEntryFtraceEvent Data.Text.Text@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Net_Fields.maybe'name' @:: Lens' NapiGroReceiveEntryFtraceEvent (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Net_Fields.napiId' @:: Lens' NapiGroReceiveEntryFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Net_Fields.maybe'napiId' @:: Lens' NapiGroReceiveEntryFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Net_Fields.nrFrags' @:: Lens' NapiGroReceiveEntryFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Net_Fields.maybe'nrFrags' @:: Lens' NapiGroReceiveEntryFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Net_Fields.protocol' @:: Lens' NapiGroReceiveEntryFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Net_Fields.maybe'protocol' @:: Lens' NapiGroReceiveEntryFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Net_Fields.queueMapping' @:: Lens' NapiGroReceiveEntryFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Net_Fields.maybe'queueMapping' @:: Lens' NapiGroReceiveEntryFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Net_Fields.skbaddr' @:: Lens' NapiGroReceiveEntryFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Net_Fields.maybe'skbaddr' @:: Lens' NapiGroReceiveEntryFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Net_Fields.truesize' @:: Lens' NapiGroReceiveEntryFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Net_Fields.maybe'truesize' @:: Lens' NapiGroReceiveEntryFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Net_Fields.vlanProto' @:: Lens' NapiGroReceiveEntryFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Net_Fields.maybe'vlanProto' @:: Lens' NapiGroReceiveEntryFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Net_Fields.vlanTagged' @:: Lens' NapiGroReceiveEntryFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Net_Fields.maybe'vlanTagged' @:: Lens' NapiGroReceiveEntryFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Net_Fields.vlanTci' @:: Lens' NapiGroReceiveEntryFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Net_Fields.maybe'vlanTci' @:: Lens' NapiGroReceiveEntryFtraceEvent (Prelude.Maybe Data.Word.Word32)@ -}
data NapiGroReceiveEntryFtraceEvent
  = NapiGroReceiveEntryFtraceEvent'_constructor {_NapiGroReceiveEntryFtraceEvent'dataLen :: !(Prelude.Maybe Data.Word.Word32),
                                                 _NapiGroReceiveEntryFtraceEvent'gsoSize :: !(Prelude.Maybe Data.Word.Word32),
                                                 _NapiGroReceiveEntryFtraceEvent'gsoType :: !(Prelude.Maybe Data.Word.Word32),
                                                 _NapiGroReceiveEntryFtraceEvent'hash :: !(Prelude.Maybe Data.Word.Word32),
                                                 _NapiGroReceiveEntryFtraceEvent'ipSummed :: !(Prelude.Maybe Data.Word.Word32),
                                                 _NapiGroReceiveEntryFtraceEvent'l4Hash :: !(Prelude.Maybe Data.Word.Word32),
                                                 _NapiGroReceiveEntryFtraceEvent'len :: !(Prelude.Maybe Data.Word.Word32),
                                                 _NapiGroReceiveEntryFtraceEvent'macHeader :: !(Prelude.Maybe Data.Int.Int32),
                                                 _NapiGroReceiveEntryFtraceEvent'macHeaderValid :: !(Prelude.Maybe Data.Word.Word32),
                                                 _NapiGroReceiveEntryFtraceEvent'name :: !(Prelude.Maybe Data.Text.Text),
                                                 _NapiGroReceiveEntryFtraceEvent'napiId :: !(Prelude.Maybe Data.Word.Word32),
                                                 _NapiGroReceiveEntryFtraceEvent'nrFrags :: !(Prelude.Maybe Data.Word.Word32),
                                                 _NapiGroReceiveEntryFtraceEvent'protocol :: !(Prelude.Maybe Data.Word.Word32),
                                                 _NapiGroReceiveEntryFtraceEvent'queueMapping :: !(Prelude.Maybe Data.Word.Word32),
                                                 _NapiGroReceiveEntryFtraceEvent'skbaddr :: !(Prelude.Maybe Data.Word.Word64),
                                                 _NapiGroReceiveEntryFtraceEvent'truesize :: !(Prelude.Maybe Data.Word.Word32),
                                                 _NapiGroReceiveEntryFtraceEvent'vlanProto :: !(Prelude.Maybe Data.Word.Word32),
                                                 _NapiGroReceiveEntryFtraceEvent'vlanTagged :: !(Prelude.Maybe Data.Word.Word32),
                                                 _NapiGroReceiveEntryFtraceEvent'vlanTci :: !(Prelude.Maybe Data.Word.Word32),
                                                 _NapiGroReceiveEntryFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show NapiGroReceiveEntryFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField NapiGroReceiveEntryFtraceEvent "dataLen" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NapiGroReceiveEntryFtraceEvent'dataLen
           (\ x__ y__ -> x__ {_NapiGroReceiveEntryFtraceEvent'dataLen = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField NapiGroReceiveEntryFtraceEvent "maybe'dataLen" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NapiGroReceiveEntryFtraceEvent'dataLen
           (\ x__ y__ -> x__ {_NapiGroReceiveEntryFtraceEvent'dataLen = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField NapiGroReceiveEntryFtraceEvent "gsoSize" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NapiGroReceiveEntryFtraceEvent'gsoSize
           (\ x__ y__ -> x__ {_NapiGroReceiveEntryFtraceEvent'gsoSize = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField NapiGroReceiveEntryFtraceEvent "maybe'gsoSize" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NapiGroReceiveEntryFtraceEvent'gsoSize
           (\ x__ y__ -> x__ {_NapiGroReceiveEntryFtraceEvent'gsoSize = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField NapiGroReceiveEntryFtraceEvent "gsoType" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NapiGroReceiveEntryFtraceEvent'gsoType
           (\ x__ y__ -> x__ {_NapiGroReceiveEntryFtraceEvent'gsoType = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField NapiGroReceiveEntryFtraceEvent "maybe'gsoType" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NapiGroReceiveEntryFtraceEvent'gsoType
           (\ x__ y__ -> x__ {_NapiGroReceiveEntryFtraceEvent'gsoType = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField NapiGroReceiveEntryFtraceEvent "hash" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NapiGroReceiveEntryFtraceEvent'hash
           (\ x__ y__ -> x__ {_NapiGroReceiveEntryFtraceEvent'hash = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField NapiGroReceiveEntryFtraceEvent "maybe'hash" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NapiGroReceiveEntryFtraceEvent'hash
           (\ x__ y__ -> x__ {_NapiGroReceiveEntryFtraceEvent'hash = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField NapiGroReceiveEntryFtraceEvent "ipSummed" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NapiGroReceiveEntryFtraceEvent'ipSummed
           (\ x__ y__
              -> x__ {_NapiGroReceiveEntryFtraceEvent'ipSummed = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField NapiGroReceiveEntryFtraceEvent "maybe'ipSummed" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NapiGroReceiveEntryFtraceEvent'ipSummed
           (\ x__ y__
              -> x__ {_NapiGroReceiveEntryFtraceEvent'ipSummed = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField NapiGroReceiveEntryFtraceEvent "l4Hash" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NapiGroReceiveEntryFtraceEvent'l4Hash
           (\ x__ y__ -> x__ {_NapiGroReceiveEntryFtraceEvent'l4Hash = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField NapiGroReceiveEntryFtraceEvent "maybe'l4Hash" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NapiGroReceiveEntryFtraceEvent'l4Hash
           (\ x__ y__ -> x__ {_NapiGroReceiveEntryFtraceEvent'l4Hash = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField NapiGroReceiveEntryFtraceEvent "len" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NapiGroReceiveEntryFtraceEvent'len
           (\ x__ y__ -> x__ {_NapiGroReceiveEntryFtraceEvent'len = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField NapiGroReceiveEntryFtraceEvent "maybe'len" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NapiGroReceiveEntryFtraceEvent'len
           (\ x__ y__ -> x__ {_NapiGroReceiveEntryFtraceEvent'len = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField NapiGroReceiveEntryFtraceEvent "macHeader" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NapiGroReceiveEntryFtraceEvent'macHeader
           (\ x__ y__
              -> x__ {_NapiGroReceiveEntryFtraceEvent'macHeader = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField NapiGroReceiveEntryFtraceEvent "maybe'macHeader" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NapiGroReceiveEntryFtraceEvent'macHeader
           (\ x__ y__
              -> x__ {_NapiGroReceiveEntryFtraceEvent'macHeader = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField NapiGroReceiveEntryFtraceEvent "macHeaderValid" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NapiGroReceiveEntryFtraceEvent'macHeaderValid
           (\ x__ y__
              -> x__ {_NapiGroReceiveEntryFtraceEvent'macHeaderValid = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField NapiGroReceiveEntryFtraceEvent "maybe'macHeaderValid" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NapiGroReceiveEntryFtraceEvent'macHeaderValid
           (\ x__ y__
              -> x__ {_NapiGroReceiveEntryFtraceEvent'macHeaderValid = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField NapiGroReceiveEntryFtraceEvent "name" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NapiGroReceiveEntryFtraceEvent'name
           (\ x__ y__ -> x__ {_NapiGroReceiveEntryFtraceEvent'name = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField NapiGroReceiveEntryFtraceEvent "maybe'name" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NapiGroReceiveEntryFtraceEvent'name
           (\ x__ y__ -> x__ {_NapiGroReceiveEntryFtraceEvent'name = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField NapiGroReceiveEntryFtraceEvent "napiId" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NapiGroReceiveEntryFtraceEvent'napiId
           (\ x__ y__ -> x__ {_NapiGroReceiveEntryFtraceEvent'napiId = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField NapiGroReceiveEntryFtraceEvent "maybe'napiId" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NapiGroReceiveEntryFtraceEvent'napiId
           (\ x__ y__ -> x__ {_NapiGroReceiveEntryFtraceEvent'napiId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField NapiGroReceiveEntryFtraceEvent "nrFrags" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NapiGroReceiveEntryFtraceEvent'nrFrags
           (\ x__ y__ -> x__ {_NapiGroReceiveEntryFtraceEvent'nrFrags = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField NapiGroReceiveEntryFtraceEvent "maybe'nrFrags" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NapiGroReceiveEntryFtraceEvent'nrFrags
           (\ x__ y__ -> x__ {_NapiGroReceiveEntryFtraceEvent'nrFrags = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField NapiGroReceiveEntryFtraceEvent "protocol" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NapiGroReceiveEntryFtraceEvent'protocol
           (\ x__ y__
              -> x__ {_NapiGroReceiveEntryFtraceEvent'protocol = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField NapiGroReceiveEntryFtraceEvent "maybe'protocol" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NapiGroReceiveEntryFtraceEvent'protocol
           (\ x__ y__
              -> x__ {_NapiGroReceiveEntryFtraceEvent'protocol = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField NapiGroReceiveEntryFtraceEvent "queueMapping" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NapiGroReceiveEntryFtraceEvent'queueMapping
           (\ x__ y__
              -> x__ {_NapiGroReceiveEntryFtraceEvent'queueMapping = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField NapiGroReceiveEntryFtraceEvent "maybe'queueMapping" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NapiGroReceiveEntryFtraceEvent'queueMapping
           (\ x__ y__
              -> x__ {_NapiGroReceiveEntryFtraceEvent'queueMapping = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField NapiGroReceiveEntryFtraceEvent "skbaddr" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NapiGroReceiveEntryFtraceEvent'skbaddr
           (\ x__ y__ -> x__ {_NapiGroReceiveEntryFtraceEvent'skbaddr = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField NapiGroReceiveEntryFtraceEvent "maybe'skbaddr" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NapiGroReceiveEntryFtraceEvent'skbaddr
           (\ x__ y__ -> x__ {_NapiGroReceiveEntryFtraceEvent'skbaddr = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField NapiGroReceiveEntryFtraceEvent "truesize" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NapiGroReceiveEntryFtraceEvent'truesize
           (\ x__ y__
              -> x__ {_NapiGroReceiveEntryFtraceEvent'truesize = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField NapiGroReceiveEntryFtraceEvent "maybe'truesize" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NapiGroReceiveEntryFtraceEvent'truesize
           (\ x__ y__
              -> x__ {_NapiGroReceiveEntryFtraceEvent'truesize = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField NapiGroReceiveEntryFtraceEvent "vlanProto" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NapiGroReceiveEntryFtraceEvent'vlanProto
           (\ x__ y__
              -> x__ {_NapiGroReceiveEntryFtraceEvent'vlanProto = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField NapiGroReceiveEntryFtraceEvent "maybe'vlanProto" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NapiGroReceiveEntryFtraceEvent'vlanProto
           (\ x__ y__
              -> x__ {_NapiGroReceiveEntryFtraceEvent'vlanProto = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField NapiGroReceiveEntryFtraceEvent "vlanTagged" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NapiGroReceiveEntryFtraceEvent'vlanTagged
           (\ x__ y__
              -> x__ {_NapiGroReceiveEntryFtraceEvent'vlanTagged = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField NapiGroReceiveEntryFtraceEvent "maybe'vlanTagged" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NapiGroReceiveEntryFtraceEvent'vlanTagged
           (\ x__ y__
              -> x__ {_NapiGroReceiveEntryFtraceEvent'vlanTagged = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField NapiGroReceiveEntryFtraceEvent "vlanTci" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NapiGroReceiveEntryFtraceEvent'vlanTci
           (\ x__ y__ -> x__ {_NapiGroReceiveEntryFtraceEvent'vlanTci = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField NapiGroReceiveEntryFtraceEvent "maybe'vlanTci" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NapiGroReceiveEntryFtraceEvent'vlanTci
           (\ x__ y__ -> x__ {_NapiGroReceiveEntryFtraceEvent'vlanTci = y__}))
        Prelude.id
instance Data.ProtoLens.Message NapiGroReceiveEntryFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.NapiGroReceiveEntryFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\RSNapiGroReceiveEntryFtraceEvent\DC2\EM\n\
      \\bdata_len\CAN\SOH \SOH(\rR\adataLen\DC2\EM\n\
      \\bgso_size\CAN\STX \SOH(\rR\agsoSize\DC2\EM\n\
      \\bgso_type\CAN\ETX \SOH(\rR\agsoType\DC2\DC2\n\
      \\EOThash\CAN\EOT \SOH(\rR\EOThash\DC2\ESC\n\
      \\tip_summed\CAN\ENQ \SOH(\rR\bipSummed\DC2\ETB\n\
      \\al4_hash\CAN\ACK \SOH(\rR\ACKl4Hash\DC2\DLE\n\
      \\ETXlen\CAN\a \SOH(\rR\ETXlen\DC2\GS\n\
      \\n\
      \mac_header\CAN\b \SOH(\ENQR\tmacHeader\DC2(\n\
      \\DLEmac_header_valid\CAN\t \SOH(\rR\SOmacHeaderValid\DC2\DC2\n\
      \\EOTname\CAN\n\
      \ \SOH(\tR\EOTname\DC2\ETB\n\
      \\anapi_id\CAN\v \SOH(\rR\ACKnapiId\DC2\EM\n\
      \\bnr_frags\CAN\f \SOH(\rR\anrFrags\DC2\SUB\n\
      \\bprotocol\CAN\r \SOH(\rR\bprotocol\DC2#\n\
      \\rqueue_mapping\CAN\SO \SOH(\rR\fqueueMapping\DC2\CAN\n\
      \\askbaddr\CAN\SI \SOH(\EOTR\askbaddr\DC2\SUB\n\
      \\btruesize\CAN\DLE \SOH(\rR\btruesize\DC2\GS\n\
      \\n\
      \vlan_proto\CAN\DC1 \SOH(\rR\tvlanProto\DC2\US\n\
      \\vvlan_tagged\CAN\DC2 \SOH(\rR\n\
      \vlanTagged\DC2\EM\n\
      \\bvlan_tci\CAN\DC3 \SOH(\rR\avlanTci"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        dataLen__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "data_len"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'dataLen")) ::
              Data.ProtoLens.FieldDescriptor NapiGroReceiveEntryFtraceEvent
        gsoSize__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "gso_size"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'gsoSize")) ::
              Data.ProtoLens.FieldDescriptor NapiGroReceiveEntryFtraceEvent
        gsoType__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "gso_type"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'gsoType")) ::
              Data.ProtoLens.FieldDescriptor NapiGroReceiveEntryFtraceEvent
        hash__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "hash"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'hash")) ::
              Data.ProtoLens.FieldDescriptor NapiGroReceiveEntryFtraceEvent
        ipSummed__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "ip_summed"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'ipSummed")) ::
              Data.ProtoLens.FieldDescriptor NapiGroReceiveEntryFtraceEvent
        l4Hash__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "l4_hash"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'l4Hash")) ::
              Data.ProtoLens.FieldDescriptor NapiGroReceiveEntryFtraceEvent
        len__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "len"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'len")) ::
              Data.ProtoLens.FieldDescriptor NapiGroReceiveEntryFtraceEvent
        macHeader__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "mac_header"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'macHeader")) ::
              Data.ProtoLens.FieldDescriptor NapiGroReceiveEntryFtraceEvent
        macHeaderValid__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "mac_header_valid"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'macHeaderValid")) ::
              Data.ProtoLens.FieldDescriptor NapiGroReceiveEntryFtraceEvent
        name__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'name")) ::
              Data.ProtoLens.FieldDescriptor NapiGroReceiveEntryFtraceEvent
        napiId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "napi_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'napiId")) ::
              Data.ProtoLens.FieldDescriptor NapiGroReceiveEntryFtraceEvent
        nrFrags__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "nr_frags"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'nrFrags")) ::
              Data.ProtoLens.FieldDescriptor NapiGroReceiveEntryFtraceEvent
        protocol__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "protocol"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'protocol")) ::
              Data.ProtoLens.FieldDescriptor NapiGroReceiveEntryFtraceEvent
        queueMapping__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "queue_mapping"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'queueMapping")) ::
              Data.ProtoLens.FieldDescriptor NapiGroReceiveEntryFtraceEvent
        skbaddr__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "skbaddr"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'skbaddr")) ::
              Data.ProtoLens.FieldDescriptor NapiGroReceiveEntryFtraceEvent
        truesize__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "truesize"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'truesize")) ::
              Data.ProtoLens.FieldDescriptor NapiGroReceiveEntryFtraceEvent
        vlanProto__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "vlan_proto"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'vlanProto")) ::
              Data.ProtoLens.FieldDescriptor NapiGroReceiveEntryFtraceEvent
        vlanTagged__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "vlan_tagged"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'vlanTagged")) ::
              Data.ProtoLens.FieldDescriptor NapiGroReceiveEntryFtraceEvent
        vlanTci__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "vlan_tci"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'vlanTci")) ::
              Data.ProtoLens.FieldDescriptor NapiGroReceiveEntryFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, dataLen__field_descriptor),
           (Data.ProtoLens.Tag 2, gsoSize__field_descriptor),
           (Data.ProtoLens.Tag 3, gsoType__field_descriptor),
           (Data.ProtoLens.Tag 4, hash__field_descriptor),
           (Data.ProtoLens.Tag 5, ipSummed__field_descriptor),
           (Data.ProtoLens.Tag 6, l4Hash__field_descriptor),
           (Data.ProtoLens.Tag 7, len__field_descriptor),
           (Data.ProtoLens.Tag 8, macHeader__field_descriptor),
           (Data.ProtoLens.Tag 9, macHeaderValid__field_descriptor),
           (Data.ProtoLens.Tag 10, name__field_descriptor),
           (Data.ProtoLens.Tag 11, napiId__field_descriptor),
           (Data.ProtoLens.Tag 12, nrFrags__field_descriptor),
           (Data.ProtoLens.Tag 13, protocol__field_descriptor),
           (Data.ProtoLens.Tag 14, queueMapping__field_descriptor),
           (Data.ProtoLens.Tag 15, skbaddr__field_descriptor),
           (Data.ProtoLens.Tag 16, truesize__field_descriptor),
           (Data.ProtoLens.Tag 17, vlanProto__field_descriptor),
           (Data.ProtoLens.Tag 18, vlanTagged__field_descriptor),
           (Data.ProtoLens.Tag 19, vlanTci__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _NapiGroReceiveEntryFtraceEvent'_unknownFields
        (\ x__ y__
           -> x__ {_NapiGroReceiveEntryFtraceEvent'_unknownFields = y__})
  defMessage
    = NapiGroReceiveEntryFtraceEvent'_constructor
        {_NapiGroReceiveEntryFtraceEvent'dataLen = Prelude.Nothing,
         _NapiGroReceiveEntryFtraceEvent'gsoSize = Prelude.Nothing,
         _NapiGroReceiveEntryFtraceEvent'gsoType = Prelude.Nothing,
         _NapiGroReceiveEntryFtraceEvent'hash = Prelude.Nothing,
         _NapiGroReceiveEntryFtraceEvent'ipSummed = Prelude.Nothing,
         _NapiGroReceiveEntryFtraceEvent'l4Hash = Prelude.Nothing,
         _NapiGroReceiveEntryFtraceEvent'len = Prelude.Nothing,
         _NapiGroReceiveEntryFtraceEvent'macHeader = Prelude.Nothing,
         _NapiGroReceiveEntryFtraceEvent'macHeaderValid = Prelude.Nothing,
         _NapiGroReceiveEntryFtraceEvent'name = Prelude.Nothing,
         _NapiGroReceiveEntryFtraceEvent'napiId = Prelude.Nothing,
         _NapiGroReceiveEntryFtraceEvent'nrFrags = Prelude.Nothing,
         _NapiGroReceiveEntryFtraceEvent'protocol = Prelude.Nothing,
         _NapiGroReceiveEntryFtraceEvent'queueMapping = Prelude.Nothing,
         _NapiGroReceiveEntryFtraceEvent'skbaddr = Prelude.Nothing,
         _NapiGroReceiveEntryFtraceEvent'truesize = Prelude.Nothing,
         _NapiGroReceiveEntryFtraceEvent'vlanProto = Prelude.Nothing,
         _NapiGroReceiveEntryFtraceEvent'vlanTagged = Prelude.Nothing,
         _NapiGroReceiveEntryFtraceEvent'vlanTci = Prelude.Nothing,
         _NapiGroReceiveEntryFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          NapiGroReceiveEntryFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser NapiGroReceiveEntryFtraceEvent
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
                                       "data_len"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"dataLen") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "gso_size"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"gsoSize") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "gso_type"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"gsoType") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "hash"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"hash") y x)
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "ip_summed"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"ipSummed") y x)
                        48
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "l4_hash"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"l4Hash") y x)
                        56
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "len"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"len") y x)
                        64
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "mac_header"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"macHeader") y x)
                        72
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "mac_header_valid"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"macHeaderValid") y x)
                        82
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
                        88
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "napi_id"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"napiId") y x)
                        96
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "nr_frags"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"nrFrags") y x)
                        104
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "protocol"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"protocol") y x)
                        112
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "queue_mapping"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"queueMapping") y x)
                        120
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "skbaddr"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"skbaddr") y x)
                        128
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "truesize"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"truesize") y x)
                        136
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "vlan_proto"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"vlanProto") y x)
                        144
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "vlan_tagged"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"vlanTagged") y x)
                        152
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "vlan_tci"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"vlanTci") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage)
          "NapiGroReceiveEntryFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'dataLen") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       ((Prelude..)
                          Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'gsoSize") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          ((Prelude..)
                             Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'gsoType") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             ((Prelude..)
                                Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'hash") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                                ((Prelude..)
                                   Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                      ((Data.Monoid.<>)
                         (case
                              Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'ipSummed") _x
                          of
                            Prelude.Nothing -> Data.Monoid.mempty
                            (Prelude.Just _v)
                              -> (Data.Monoid.<>)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt 40)
                                   ((Prelude..)
                                      Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral
                                      _v))
                         ((Data.Monoid.<>)
                            (case
                                 Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'l4Hash") _x
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
                                    Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'len") _x
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
                                         (Data.ProtoLens.Field.field @"maybe'macHeader") _x
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
                                            (Data.ProtoLens.Field.field @"maybe'macHeaderValid") _x
                                      of
                                        Prelude.Nothing -> Data.Monoid.mempty
                                        (Prelude.Just _v)
                                          -> (Data.Monoid.<>)
                                               (Data.ProtoLens.Encoding.Bytes.putVarInt 72)
                                               ((Prelude..)
                                                  Data.ProtoLens.Encoding.Bytes.putVarInt
                                                  Prelude.fromIntegral _v))
                                     ((Data.Monoid.<>)
                                        (case
                                             Lens.Family2.view
                                               (Data.ProtoLens.Field.field @"maybe'name") _x
                                         of
                                           Prelude.Nothing -> Data.Monoid.mempty
                                           (Prelude.Just _v)
                                             -> (Data.Monoid.<>)
                                                  (Data.ProtoLens.Encoding.Bytes.putVarInt 82)
                                                  ((Prelude..)
                                                     (\ bs
                                                        -> (Data.Monoid.<>)
                                                             (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                (Prelude.fromIntegral
                                                                   (Data.ByteString.length bs)))
                                                             (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                bs))
                                                     Data.Text.Encoding.encodeUtf8 _v))
                                        ((Data.Monoid.<>)
                                           (case
                                                Lens.Family2.view
                                                  (Data.ProtoLens.Field.field @"maybe'napiId") _x
                                            of
                                              Prelude.Nothing -> Data.Monoid.mempty
                                              (Prelude.Just _v)
                                                -> (Data.Monoid.<>)
                                                     (Data.ProtoLens.Encoding.Bytes.putVarInt 88)
                                                     ((Prelude..)
                                                        Data.ProtoLens.Encoding.Bytes.putVarInt
                                                        Prelude.fromIntegral _v))
                                           ((Data.Monoid.<>)
                                              (case
                                                   Lens.Family2.view
                                                     (Data.ProtoLens.Field.field @"maybe'nrFrags")
                                                     _x
                                               of
                                                 Prelude.Nothing -> Data.Monoid.mempty
                                                 (Prelude.Just _v)
                                                   -> (Data.Monoid.<>)
                                                        (Data.ProtoLens.Encoding.Bytes.putVarInt 96)
                                                        ((Prelude..)
                                                           Data.ProtoLens.Encoding.Bytes.putVarInt
                                                           Prelude.fromIntegral _v))
                                              ((Data.Monoid.<>)
                                                 (case
                                                      Lens.Family2.view
                                                        (Data.ProtoLens.Field.field
                                                           @"maybe'protocol")
                                                        _x
                                                  of
                                                    Prelude.Nothing -> Data.Monoid.mempty
                                                    (Prelude.Just _v)
                                                      -> (Data.Monoid.<>)
                                                           (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                              104)
                                                           ((Prelude..)
                                                              Data.ProtoLens.Encoding.Bytes.putVarInt
                                                              Prelude.fromIntegral _v))
                                                 ((Data.Monoid.<>)
                                                    (case
                                                         Lens.Family2.view
                                                           (Data.ProtoLens.Field.field
                                                              @"maybe'queueMapping")
                                                           _x
                                                     of
                                                       Prelude.Nothing -> Data.Monoid.mempty
                                                       (Prelude.Just _v)
                                                         -> (Data.Monoid.<>)
                                                              (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                 112)
                                                              ((Prelude..)
                                                                 Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                 Prelude.fromIntegral _v))
                                                    ((Data.Monoid.<>)
                                                       (case
                                                            Lens.Family2.view
                                                              (Data.ProtoLens.Field.field
                                                                 @"maybe'skbaddr")
                                                              _x
                                                        of
                                                          Prelude.Nothing -> Data.Monoid.mempty
                                                          (Prelude.Just _v)
                                                            -> (Data.Monoid.<>)
                                                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                    120)
                                                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                    _v))
                                                       ((Data.Monoid.<>)
                                                          (case
                                                               Lens.Family2.view
                                                                 (Data.ProtoLens.Field.field
                                                                    @"maybe'truesize")
                                                                 _x
                                                           of
                                                             Prelude.Nothing -> Data.Monoid.mempty
                                                             (Prelude.Just _v)
                                                               -> (Data.Monoid.<>)
                                                                    (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                       128)
                                                                    ((Prelude..)
                                                                       Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                       Prelude.fromIntegral _v))
                                                          ((Data.Monoid.<>)
                                                             (case
                                                                  Lens.Family2.view
                                                                    (Data.ProtoLens.Field.field
                                                                       @"maybe'vlanProto")
                                                                    _x
                                                              of
                                                                Prelude.Nothing
                                                                  -> Data.Monoid.mempty
                                                                (Prelude.Just _v)
                                                                  -> (Data.Monoid.<>)
                                                                       (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                          136)
                                                                       ((Prelude..)
                                                                          Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                          Prelude.fromIntegral _v))
                                                             ((Data.Monoid.<>)
                                                                (case
                                                                     Lens.Family2.view
                                                                       (Data.ProtoLens.Field.field
                                                                          @"maybe'vlanTagged")
                                                                       _x
                                                                 of
                                                                   Prelude.Nothing
                                                                     -> Data.Monoid.mempty
                                                                   (Prelude.Just _v)
                                                                     -> (Data.Monoid.<>)
                                                                          (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                             144)
                                                                          ((Prelude..)
                                                                             Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                             Prelude.fromIntegral
                                                                             _v))
                                                                ((Data.Monoid.<>)
                                                                   (case
                                                                        Lens.Family2.view
                                                                          (Data.ProtoLens.Field.field
                                                                             @"maybe'vlanTci")
                                                                          _x
                                                                    of
                                                                      Prelude.Nothing
                                                                        -> Data.Monoid.mempty
                                                                      (Prelude.Just _v)
                                                                        -> (Data.Monoid.<>)
                                                                             (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                152)
                                                                             ((Prelude..)
                                                                                Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                Prelude.fromIntegral
                                                                                _v))
                                                                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                                                      (Lens.Family2.view
                                                                         Data.ProtoLens.unknownFields
                                                                         _x))))))))))))))))))))
instance Control.DeepSeq.NFData NapiGroReceiveEntryFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_NapiGroReceiveEntryFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_NapiGroReceiveEntryFtraceEvent'dataLen x__)
                (Control.DeepSeq.deepseq
                   (_NapiGroReceiveEntryFtraceEvent'gsoSize x__)
                   (Control.DeepSeq.deepseq
                      (_NapiGroReceiveEntryFtraceEvent'gsoType x__)
                      (Control.DeepSeq.deepseq
                         (_NapiGroReceiveEntryFtraceEvent'hash x__)
                         (Control.DeepSeq.deepseq
                            (_NapiGroReceiveEntryFtraceEvent'ipSummed x__)
                            (Control.DeepSeq.deepseq
                               (_NapiGroReceiveEntryFtraceEvent'l4Hash x__)
                               (Control.DeepSeq.deepseq
                                  (_NapiGroReceiveEntryFtraceEvent'len x__)
                                  (Control.DeepSeq.deepseq
                                     (_NapiGroReceiveEntryFtraceEvent'macHeader x__)
                                     (Control.DeepSeq.deepseq
                                        (_NapiGroReceiveEntryFtraceEvent'macHeaderValid x__)
                                        (Control.DeepSeq.deepseq
                                           (_NapiGroReceiveEntryFtraceEvent'name x__)
                                           (Control.DeepSeq.deepseq
                                              (_NapiGroReceiveEntryFtraceEvent'napiId x__)
                                              (Control.DeepSeq.deepseq
                                                 (_NapiGroReceiveEntryFtraceEvent'nrFrags x__)
                                                 (Control.DeepSeq.deepseq
                                                    (_NapiGroReceiveEntryFtraceEvent'protocol x__)
                                                    (Control.DeepSeq.deepseq
                                                       (_NapiGroReceiveEntryFtraceEvent'queueMapping
                                                          x__)
                                                       (Control.DeepSeq.deepseq
                                                          (_NapiGroReceiveEntryFtraceEvent'skbaddr
                                                             x__)
                                                          (Control.DeepSeq.deepseq
                                                             (_NapiGroReceiveEntryFtraceEvent'truesize
                                                                x__)
                                                             (Control.DeepSeq.deepseq
                                                                (_NapiGroReceiveEntryFtraceEvent'vlanProto
                                                                   x__)
                                                                (Control.DeepSeq.deepseq
                                                                   (_NapiGroReceiveEntryFtraceEvent'vlanTagged
                                                                      x__)
                                                                   (Control.DeepSeq.deepseq
                                                                      (_NapiGroReceiveEntryFtraceEvent'vlanTci
                                                                         x__)
                                                                      ())))))))))))))))))))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Net_Fields.ret' @:: Lens' NapiGroReceiveExitFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Net_Fields.maybe'ret' @:: Lens' NapiGroReceiveExitFtraceEvent (Prelude.Maybe Data.Int.Int32)@ -}
data NapiGroReceiveExitFtraceEvent
  = NapiGroReceiveExitFtraceEvent'_constructor {_NapiGroReceiveExitFtraceEvent'ret :: !(Prelude.Maybe Data.Int.Int32),
                                                _NapiGroReceiveExitFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show NapiGroReceiveExitFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField NapiGroReceiveExitFtraceEvent "ret" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NapiGroReceiveExitFtraceEvent'ret
           (\ x__ y__ -> x__ {_NapiGroReceiveExitFtraceEvent'ret = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField NapiGroReceiveExitFtraceEvent "maybe'ret" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NapiGroReceiveExitFtraceEvent'ret
           (\ x__ y__ -> x__ {_NapiGroReceiveExitFtraceEvent'ret = y__}))
        Prelude.id
instance Data.ProtoLens.Message NapiGroReceiveExitFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.NapiGroReceiveExitFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\GSNapiGroReceiveExitFtraceEvent\DC2\DLE\n\
      \\ETXret\CAN\SOH \SOH(\ENQR\ETXret"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        ret__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "ret"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'ret")) ::
              Data.ProtoLens.FieldDescriptor NapiGroReceiveExitFtraceEvent
      in
        Data.Map.fromList [(Data.ProtoLens.Tag 1, ret__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _NapiGroReceiveExitFtraceEvent'_unknownFields
        (\ x__ y__
           -> x__ {_NapiGroReceiveExitFtraceEvent'_unknownFields = y__})
  defMessage
    = NapiGroReceiveExitFtraceEvent'_constructor
        {_NapiGroReceiveExitFtraceEvent'ret = Prelude.Nothing,
         _NapiGroReceiveExitFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          NapiGroReceiveExitFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser NapiGroReceiveExitFtraceEvent
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
                                       "ret"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"ret") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "NapiGroReceiveExitFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'ret") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       ((Prelude..)
                          Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData NapiGroReceiveExitFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_NapiGroReceiveExitFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_NapiGroReceiveExitFtraceEvent'ret x__) ())
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Net_Fields.len' @:: Lens' NetDevXmitFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Net_Fields.maybe'len' @:: Lens' NetDevXmitFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Net_Fields.name' @:: Lens' NetDevXmitFtraceEvent Data.Text.Text@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Net_Fields.maybe'name' @:: Lens' NetDevXmitFtraceEvent (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Net_Fields.rc' @:: Lens' NetDevXmitFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Net_Fields.maybe'rc' @:: Lens' NetDevXmitFtraceEvent (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Net_Fields.skbaddr' @:: Lens' NetDevXmitFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Net_Fields.maybe'skbaddr' @:: Lens' NetDevXmitFtraceEvent (Prelude.Maybe Data.Word.Word64)@ -}
data NetDevXmitFtraceEvent
  = NetDevXmitFtraceEvent'_constructor {_NetDevXmitFtraceEvent'len :: !(Prelude.Maybe Data.Word.Word32),
                                        _NetDevXmitFtraceEvent'name :: !(Prelude.Maybe Data.Text.Text),
                                        _NetDevXmitFtraceEvent'rc :: !(Prelude.Maybe Data.Int.Int32),
                                        _NetDevXmitFtraceEvent'skbaddr :: !(Prelude.Maybe Data.Word.Word64),
                                        _NetDevXmitFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show NetDevXmitFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField NetDevXmitFtraceEvent "len" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NetDevXmitFtraceEvent'len
           (\ x__ y__ -> x__ {_NetDevXmitFtraceEvent'len = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField NetDevXmitFtraceEvent "maybe'len" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NetDevXmitFtraceEvent'len
           (\ x__ y__ -> x__ {_NetDevXmitFtraceEvent'len = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField NetDevXmitFtraceEvent "name" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NetDevXmitFtraceEvent'name
           (\ x__ y__ -> x__ {_NetDevXmitFtraceEvent'name = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField NetDevXmitFtraceEvent "maybe'name" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NetDevXmitFtraceEvent'name
           (\ x__ y__ -> x__ {_NetDevXmitFtraceEvent'name = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField NetDevXmitFtraceEvent "rc" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NetDevXmitFtraceEvent'rc
           (\ x__ y__ -> x__ {_NetDevXmitFtraceEvent'rc = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField NetDevXmitFtraceEvent "maybe'rc" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NetDevXmitFtraceEvent'rc
           (\ x__ y__ -> x__ {_NetDevXmitFtraceEvent'rc = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField NetDevXmitFtraceEvent "skbaddr" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NetDevXmitFtraceEvent'skbaddr
           (\ x__ y__ -> x__ {_NetDevXmitFtraceEvent'skbaddr = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField NetDevXmitFtraceEvent "maybe'skbaddr" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NetDevXmitFtraceEvent'skbaddr
           (\ x__ y__ -> x__ {_NetDevXmitFtraceEvent'skbaddr = y__}))
        Prelude.id
instance Data.ProtoLens.Message NetDevXmitFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.NetDevXmitFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\NAKNetDevXmitFtraceEvent\DC2\DLE\n\
      \\ETXlen\CAN\SOH \SOH(\rR\ETXlen\DC2\DC2\n\
      \\EOTname\CAN\STX \SOH(\tR\EOTname\DC2\SO\n\
      \\STXrc\CAN\ETX \SOH(\ENQR\STXrc\DC2\CAN\n\
      \\askbaddr\CAN\EOT \SOH(\EOTR\askbaddr"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        len__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "len"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'len")) ::
              Data.ProtoLens.FieldDescriptor NetDevXmitFtraceEvent
        name__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'name")) ::
              Data.ProtoLens.FieldDescriptor NetDevXmitFtraceEvent
        rc__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "rc"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'rc")) ::
              Data.ProtoLens.FieldDescriptor NetDevXmitFtraceEvent
        skbaddr__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "skbaddr"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'skbaddr")) ::
              Data.ProtoLens.FieldDescriptor NetDevXmitFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, len__field_descriptor),
           (Data.ProtoLens.Tag 2, name__field_descriptor),
           (Data.ProtoLens.Tag 3, rc__field_descriptor),
           (Data.ProtoLens.Tag 4, skbaddr__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _NetDevXmitFtraceEvent'_unknownFields
        (\ x__ y__ -> x__ {_NetDevXmitFtraceEvent'_unknownFields = y__})
  defMessage
    = NetDevXmitFtraceEvent'_constructor
        {_NetDevXmitFtraceEvent'len = Prelude.Nothing,
         _NetDevXmitFtraceEvent'name = Prelude.Nothing,
         _NetDevXmitFtraceEvent'rc = Prelude.Nothing,
         _NetDevXmitFtraceEvent'skbaddr = Prelude.Nothing,
         _NetDevXmitFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          NetDevXmitFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser NetDevXmitFtraceEvent
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
                                       "len"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"len") y x)
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
                                       "name"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"name") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "rc"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"rc") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "skbaddr"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"skbaddr") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "NetDevXmitFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'len") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       ((Prelude..)
                          Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'name") _x
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
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'rc") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             ((Prelude..)
                                Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'skbaddr") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                      (Data.ProtoLens.Encoding.Wire.buildFieldSet
                         (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))
instance Control.DeepSeq.NFData NetDevXmitFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_NetDevXmitFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_NetDevXmitFtraceEvent'len x__)
                (Control.DeepSeq.deepseq
                   (_NetDevXmitFtraceEvent'name x__)
                   (Control.DeepSeq.deepseq
                      (_NetDevXmitFtraceEvent'rc x__)
                      (Control.DeepSeq.deepseq
                         (_NetDevXmitFtraceEvent'skbaddr x__) ()))))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Net_Fields.len' @:: Lens' NetifReceiveSkbFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Net_Fields.maybe'len' @:: Lens' NetifReceiveSkbFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Net_Fields.name' @:: Lens' NetifReceiveSkbFtraceEvent Data.Text.Text@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Net_Fields.maybe'name' @:: Lens' NetifReceiveSkbFtraceEvent (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Net_Fields.skbaddr' @:: Lens' NetifReceiveSkbFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Net_Fields.maybe'skbaddr' @:: Lens' NetifReceiveSkbFtraceEvent (Prelude.Maybe Data.Word.Word64)@ -}
data NetifReceiveSkbFtraceEvent
  = NetifReceiveSkbFtraceEvent'_constructor {_NetifReceiveSkbFtraceEvent'len :: !(Prelude.Maybe Data.Word.Word32),
                                             _NetifReceiveSkbFtraceEvent'name :: !(Prelude.Maybe Data.Text.Text),
                                             _NetifReceiveSkbFtraceEvent'skbaddr :: !(Prelude.Maybe Data.Word.Word64),
                                             _NetifReceiveSkbFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show NetifReceiveSkbFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField NetifReceiveSkbFtraceEvent "len" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NetifReceiveSkbFtraceEvent'len
           (\ x__ y__ -> x__ {_NetifReceiveSkbFtraceEvent'len = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField NetifReceiveSkbFtraceEvent "maybe'len" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NetifReceiveSkbFtraceEvent'len
           (\ x__ y__ -> x__ {_NetifReceiveSkbFtraceEvent'len = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField NetifReceiveSkbFtraceEvent "name" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NetifReceiveSkbFtraceEvent'name
           (\ x__ y__ -> x__ {_NetifReceiveSkbFtraceEvent'name = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField NetifReceiveSkbFtraceEvent "maybe'name" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NetifReceiveSkbFtraceEvent'name
           (\ x__ y__ -> x__ {_NetifReceiveSkbFtraceEvent'name = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField NetifReceiveSkbFtraceEvent "skbaddr" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NetifReceiveSkbFtraceEvent'skbaddr
           (\ x__ y__ -> x__ {_NetifReceiveSkbFtraceEvent'skbaddr = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField NetifReceiveSkbFtraceEvent "maybe'skbaddr" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _NetifReceiveSkbFtraceEvent'skbaddr
           (\ x__ y__ -> x__ {_NetifReceiveSkbFtraceEvent'skbaddr = y__}))
        Prelude.id
instance Data.ProtoLens.Message NetifReceiveSkbFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.NetifReceiveSkbFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\SUBNetifReceiveSkbFtraceEvent\DC2\DLE\n\
      \\ETXlen\CAN\SOH \SOH(\rR\ETXlen\DC2\DC2\n\
      \\EOTname\CAN\STX \SOH(\tR\EOTname\DC2\CAN\n\
      \\askbaddr\CAN\ETX \SOH(\EOTR\askbaddr"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        len__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "len"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'len")) ::
              Data.ProtoLens.FieldDescriptor NetifReceiveSkbFtraceEvent
        name__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'name")) ::
              Data.ProtoLens.FieldDescriptor NetifReceiveSkbFtraceEvent
        skbaddr__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "skbaddr"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'skbaddr")) ::
              Data.ProtoLens.FieldDescriptor NetifReceiveSkbFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, len__field_descriptor),
           (Data.ProtoLens.Tag 2, name__field_descriptor),
           (Data.ProtoLens.Tag 3, skbaddr__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _NetifReceiveSkbFtraceEvent'_unknownFields
        (\ x__ y__
           -> x__ {_NetifReceiveSkbFtraceEvent'_unknownFields = y__})
  defMessage
    = NetifReceiveSkbFtraceEvent'_constructor
        {_NetifReceiveSkbFtraceEvent'len = Prelude.Nothing,
         _NetifReceiveSkbFtraceEvent'name = Prelude.Nothing,
         _NetifReceiveSkbFtraceEvent'skbaddr = Prelude.Nothing,
         _NetifReceiveSkbFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          NetifReceiveSkbFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser NetifReceiveSkbFtraceEvent
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
                                       "len"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"len") y x)
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
                                       "name"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"name") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "skbaddr"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"skbaddr") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "NetifReceiveSkbFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'len") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       ((Prelude..)
                          Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'name") _x
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
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'skbaddr") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData NetifReceiveSkbFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_NetifReceiveSkbFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_NetifReceiveSkbFtraceEvent'len x__)
                (Control.DeepSeq.deepseq
                   (_NetifReceiveSkbFtraceEvent'name x__)
                   (Control.DeepSeq.deepseq
                      (_NetifReceiveSkbFtraceEvent'skbaddr x__) ())))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \&protos/perfetto/trace/ftrace/net.proto\DC2\SIperfetto.protos\"\\\n\
    \\SUBNetifReceiveSkbFtraceEvent\DC2\DLE\n\
    \\ETXlen\CAN\SOH \SOH(\rR\ETXlen\DC2\DC2\n\
    \\EOTname\CAN\STX \SOH(\tR\EOTname\DC2\CAN\n\
    \\askbaddr\CAN\ETX \SOH(\EOTR\askbaddr\"g\n\
    \\NAKNetDevXmitFtraceEvent\DC2\DLE\n\
    \\ETXlen\CAN\SOH \SOH(\rR\ETXlen\DC2\DC2\n\
    \\EOTname\CAN\STX \SOH(\tR\EOTname\DC2\SO\n\
    \\STXrc\CAN\ETX \SOH(\ENQR\STXrc\DC2\CAN\n\
    \\askbaddr\CAN\EOT \SOH(\EOTR\askbaddr\"\176\EOT\n\
    \\RSNapiGroReceiveEntryFtraceEvent\DC2\EM\n\
    \\bdata_len\CAN\SOH \SOH(\rR\adataLen\DC2\EM\n\
    \\bgso_size\CAN\STX \SOH(\rR\agsoSize\DC2\EM\n\
    \\bgso_type\CAN\ETX \SOH(\rR\agsoType\DC2\DC2\n\
    \\EOThash\CAN\EOT \SOH(\rR\EOThash\DC2\ESC\n\
    \\tip_summed\CAN\ENQ \SOH(\rR\bipSummed\DC2\ETB\n\
    \\al4_hash\CAN\ACK \SOH(\rR\ACKl4Hash\DC2\DLE\n\
    \\ETXlen\CAN\a \SOH(\rR\ETXlen\DC2\GS\n\
    \\n\
    \mac_header\CAN\b \SOH(\ENQR\tmacHeader\DC2(\n\
    \\DLEmac_header_valid\CAN\t \SOH(\rR\SOmacHeaderValid\DC2\DC2\n\
    \\EOTname\CAN\n\
    \ \SOH(\tR\EOTname\DC2\ETB\n\
    \\anapi_id\CAN\v \SOH(\rR\ACKnapiId\DC2\EM\n\
    \\bnr_frags\CAN\f \SOH(\rR\anrFrags\DC2\SUB\n\
    \\bprotocol\CAN\r \SOH(\rR\bprotocol\DC2#\n\
    \\rqueue_mapping\CAN\SO \SOH(\rR\fqueueMapping\DC2\CAN\n\
    \\askbaddr\CAN\SI \SOH(\EOTR\askbaddr\DC2\SUB\n\
    \\btruesize\CAN\DLE \SOH(\rR\btruesize\DC2\GS\n\
    \\n\
    \vlan_proto\CAN\DC1 \SOH(\rR\tvlanProto\DC2\US\n\
    \\vvlan_tagged\CAN\DC2 \SOH(\rR\n\
    \vlanTagged\DC2\EM\n\
    \\bvlan_tci\CAN\DC3 \SOH(\rR\avlanTci\"1\n\
    \\GSNapiGroReceiveExitFtraceEvent\DC2\DLE\n\
    \\ETXret\CAN\SOH \SOH(\ENQR\ETXretJ\156\DLE\n\
    \\ACK\DC2\EOT\EOT\NUL)\SOH\n\
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
    \\ETX\EOT\NUL\SOH\DC2\ETX\a\b\"\n\
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
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX\t\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\EOT\DC2\ETX\t\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ENQ\DC2\ETX\t\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX\t\DC2\SYN\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX\t\EM\SUB\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETX\n\
    \\STX\RS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\EOT\DC2\ETX\n\
    \\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ENQ\DC2\ETX\n\
    \\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETX\n\
    \\DC2\EM\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETX\n\
    \\FS\GS\n\
    \\n\
    \\n\
    \\STX\EOT\SOH\DC2\EOT\f\NUL\DC1\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX\f\b\GS\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETX\r\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\EOT\DC2\ETX\r\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ENQ\DC2\ETX\r\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETX\r\DC2\NAK\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETX\r\CAN\EM\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\SOH\DC2\ETX\SO\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\EOT\DC2\ETX\SO\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ENQ\DC2\ETX\SO\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\SOH\DC2\ETX\SO\DC2\SYN\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ETX\DC2\ETX\SO\EM\SUB\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\STX\DC2\ETX\SI\STX\CAN\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\EOT\DC2\ETX\SI\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\ENQ\DC2\ETX\SI\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\SOH\DC2\ETX\SI\DC1\DC3\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\ETX\DC2\ETX\SI\SYN\ETB\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\ETX\DC2\ETX\DLE\STX\RS\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\EOT\DC2\ETX\DLE\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\ENQ\DC2\ETX\DLE\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\SOH\DC2\ETX\DLE\DC2\EM\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\ETX\DC2\ETX\DLE\FS\GS\n\
    \\n\
    \\n\
    \\STX\EOT\STX\DC2\EOT\DC2\NUL&\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\SOH\DC2\ETX\DC2\b&\n\
    \\v\n\
    \\EOT\EOT\STX\STX\NUL\DC2\ETX\DC3\STX\US\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\EOT\DC2\ETX\DC3\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ENQ\DC2\ETX\DC3\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\SOH\DC2\ETX\DC3\DC2\SUB\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ETX\DC2\ETX\DC3\GS\RS\n\
    \\v\n\
    \\EOT\EOT\STX\STX\SOH\DC2\ETX\DC4\STX\US\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\EOT\DC2\ETX\DC4\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ENQ\DC2\ETX\DC4\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\SOH\DC2\ETX\DC4\DC2\SUB\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ETX\DC2\ETX\DC4\GS\RS\n\
    \\v\n\
    \\EOT\EOT\STX\STX\STX\DC2\ETX\NAK\STX\US\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\EOT\DC2\ETX\NAK\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\ENQ\DC2\ETX\NAK\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\SOH\DC2\ETX\NAK\DC2\SUB\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\ETX\DC2\ETX\NAK\GS\RS\n\
    \\v\n\
    \\EOT\EOT\STX\STX\ETX\DC2\ETX\SYN\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ETX\EOT\DC2\ETX\SYN\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ETX\ENQ\DC2\ETX\SYN\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ETX\SOH\DC2\ETX\SYN\DC2\SYN\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ETX\ETX\DC2\ETX\SYN\EM\SUB\n\
    \\v\n\
    \\EOT\EOT\STX\STX\EOT\DC2\ETX\ETB\STX \n\
    \\f\n\
    \\ENQ\EOT\STX\STX\EOT\EOT\DC2\ETX\ETB\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\EOT\ENQ\DC2\ETX\ETB\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\EOT\SOH\DC2\ETX\ETB\DC2\ESC\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\EOT\ETX\DC2\ETX\ETB\RS\US\n\
    \\v\n\
    \\EOT\EOT\STX\STX\ENQ\DC2\ETX\CAN\STX\RS\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ENQ\EOT\DC2\ETX\CAN\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ENQ\ENQ\DC2\ETX\CAN\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ENQ\SOH\DC2\ETX\CAN\DC2\EM\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ENQ\ETX\DC2\ETX\CAN\FS\GS\n\
    \\v\n\
    \\EOT\EOT\STX\STX\ACK\DC2\ETX\EM\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ACK\EOT\DC2\ETX\EM\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ACK\ENQ\DC2\ETX\EM\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ACK\SOH\DC2\ETX\EM\DC2\NAK\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ACK\ETX\DC2\ETX\EM\CAN\EM\n\
    \\v\n\
    \\EOT\EOT\STX\STX\a\DC2\ETX\SUB\STX \n\
    \\f\n\
    \\ENQ\EOT\STX\STX\a\EOT\DC2\ETX\SUB\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\a\ENQ\DC2\ETX\SUB\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\a\SOH\DC2\ETX\SUB\DC1\ESC\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\a\ETX\DC2\ETX\SUB\RS\US\n\
    \\v\n\
    \\EOT\EOT\STX\STX\b\DC2\ETX\ESC\STX'\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\b\EOT\DC2\ETX\ESC\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\b\ENQ\DC2\ETX\ESC\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\b\SOH\DC2\ETX\ESC\DC2\"\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\b\ETX\DC2\ETX\ESC%&\n\
    \\v\n\
    \\EOT\EOT\STX\STX\t\DC2\ETX\FS\STX\FS\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\t\EOT\DC2\ETX\FS\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\t\ENQ\DC2\ETX\FS\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\t\SOH\DC2\ETX\FS\DC2\SYN\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\t\ETX\DC2\ETX\FS\EM\ESC\n\
    \\v\n\
    \\EOT\EOT\STX\STX\n\
    \\DC2\ETX\GS\STX\US\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\n\
    \\EOT\DC2\ETX\GS\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\n\
    \\ENQ\DC2\ETX\GS\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\n\
    \\SOH\DC2\ETX\GS\DC2\EM\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\n\
    \\ETX\DC2\ETX\GS\FS\RS\n\
    \\v\n\
    \\EOT\EOT\STX\STX\v\DC2\ETX\RS\STX \n\
    \\f\n\
    \\ENQ\EOT\STX\STX\v\EOT\DC2\ETX\RS\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\v\ENQ\DC2\ETX\RS\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\v\SOH\DC2\ETX\RS\DC2\SUB\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\v\ETX\DC2\ETX\RS\GS\US\n\
    \\v\n\
    \\EOT\EOT\STX\STX\f\DC2\ETX\US\STX \n\
    \\f\n\
    \\ENQ\EOT\STX\STX\f\EOT\DC2\ETX\US\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\f\ENQ\DC2\ETX\US\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\f\SOH\DC2\ETX\US\DC2\SUB\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\f\ETX\DC2\ETX\US\GS\US\n\
    \\v\n\
    \\EOT\EOT\STX\STX\r\DC2\ETX \STX%\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\r\EOT\DC2\ETX \STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\r\ENQ\DC2\ETX \v\DC1\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\r\SOH\DC2\ETX \DC2\US\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\r\ETX\DC2\ETX \"$\n\
    \\v\n\
    \\EOT\EOT\STX\STX\SO\DC2\ETX!\STX\US\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SO\EOT\DC2\ETX!\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SO\ENQ\DC2\ETX!\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SO\SOH\DC2\ETX!\DC2\EM\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SO\ETX\DC2\ETX!\FS\RS\n\
    \\v\n\
    \\EOT\EOT\STX\STX\SI\DC2\ETX\"\STX \n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SI\EOT\DC2\ETX\"\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SI\ENQ\DC2\ETX\"\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SI\SOH\DC2\ETX\"\DC2\SUB\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SI\ETX\DC2\ETX\"\GS\US\n\
    \\v\n\
    \\EOT\EOT\STX\STX\DLE\DC2\ETX#\STX\"\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\DLE\EOT\DC2\ETX#\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\DLE\ENQ\DC2\ETX#\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\DLE\SOH\DC2\ETX#\DC2\FS\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\DLE\ETX\DC2\ETX#\US!\n\
    \\v\n\
    \\EOT\EOT\STX\STX\DC1\DC2\ETX$\STX#\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\DC1\EOT\DC2\ETX$\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\DC1\ENQ\DC2\ETX$\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\DC1\SOH\DC2\ETX$\DC2\GS\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\DC1\ETX\DC2\ETX$ \"\n\
    \\v\n\
    \\EOT\EOT\STX\STX\DC2\DC2\ETX%\STX \n\
    \\f\n\
    \\ENQ\EOT\STX\STX\DC2\EOT\DC2\ETX%\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\DC2\ENQ\DC2\ETX%\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\DC2\SOH\DC2\ETX%\DC2\SUB\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\DC2\ETX\DC2\ETX%\GS\US\n\
    \\n\
    \\n\
    \\STX\EOT\ETX\DC2\EOT'\NUL)\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\ETX\SOH\DC2\ETX'\b%\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\NUL\DC2\ETX(\STX\EM\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\EOT\DC2\ETX(\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ENQ\DC2\ETX(\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\SOH\DC2\ETX(\DC1\DC4\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ETX\DC2\ETX(\ETB\CAN"