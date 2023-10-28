{- This file was auto-generated from protos/perfetto/trace/ftrace/net.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Protos.Perfetto.Trace.Ftrace.Net_Fields where
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
dataLen ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "dataLen" a) =>
  Lens.Family2.LensLike' f s a
dataLen = Data.ProtoLens.Field.field @"dataLen"
gsoSize ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "gsoSize" a) =>
  Lens.Family2.LensLike' f s a
gsoSize = Data.ProtoLens.Field.field @"gsoSize"
gsoType ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "gsoType" a) =>
  Lens.Family2.LensLike' f s a
gsoType = Data.ProtoLens.Field.field @"gsoType"
hash ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "hash" a) =>
  Lens.Family2.LensLike' f s a
hash = Data.ProtoLens.Field.field @"hash"
ipSummed ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "ipSummed" a) =>
  Lens.Family2.LensLike' f s a
ipSummed = Data.ProtoLens.Field.field @"ipSummed"
l4Hash ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "l4Hash" a) =>
  Lens.Family2.LensLike' f s a
l4Hash = Data.ProtoLens.Field.field @"l4Hash"
len ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "len" a) =>
  Lens.Family2.LensLike' f s a
len = Data.ProtoLens.Field.field @"len"
macHeader ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "macHeader" a) =>
  Lens.Family2.LensLike' f s a
macHeader = Data.ProtoLens.Field.field @"macHeader"
macHeaderValid ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "macHeaderValid" a) =>
  Lens.Family2.LensLike' f s a
macHeaderValid = Data.ProtoLens.Field.field @"macHeaderValid"
maybe'dataLen ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'dataLen" a) =>
  Lens.Family2.LensLike' f s a
maybe'dataLen = Data.ProtoLens.Field.field @"maybe'dataLen"
maybe'gsoSize ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'gsoSize" a) =>
  Lens.Family2.LensLike' f s a
maybe'gsoSize = Data.ProtoLens.Field.field @"maybe'gsoSize"
maybe'gsoType ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'gsoType" a) =>
  Lens.Family2.LensLike' f s a
maybe'gsoType = Data.ProtoLens.Field.field @"maybe'gsoType"
maybe'hash ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'hash" a) =>
  Lens.Family2.LensLike' f s a
maybe'hash = Data.ProtoLens.Field.field @"maybe'hash"
maybe'ipSummed ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'ipSummed" a) =>
  Lens.Family2.LensLike' f s a
maybe'ipSummed = Data.ProtoLens.Field.field @"maybe'ipSummed"
maybe'l4Hash ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'l4Hash" a) =>
  Lens.Family2.LensLike' f s a
maybe'l4Hash = Data.ProtoLens.Field.field @"maybe'l4Hash"
maybe'len ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'len" a) =>
  Lens.Family2.LensLike' f s a
maybe'len = Data.ProtoLens.Field.field @"maybe'len"
maybe'macHeader ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'macHeader" a) =>
  Lens.Family2.LensLike' f s a
maybe'macHeader = Data.ProtoLens.Field.field @"maybe'macHeader"
maybe'macHeaderValid ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'macHeaderValid" a) =>
  Lens.Family2.LensLike' f s a
maybe'macHeaderValid
  = Data.ProtoLens.Field.field @"maybe'macHeaderValid"
maybe'name ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'name" a) =>
  Lens.Family2.LensLike' f s a
maybe'name = Data.ProtoLens.Field.field @"maybe'name"
maybe'napiId ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'napiId" a) =>
  Lens.Family2.LensLike' f s a
maybe'napiId = Data.ProtoLens.Field.field @"maybe'napiId"
maybe'nrFrags ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'nrFrags" a) =>
  Lens.Family2.LensLike' f s a
maybe'nrFrags = Data.ProtoLens.Field.field @"maybe'nrFrags"
maybe'protocol ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'protocol" a) =>
  Lens.Family2.LensLike' f s a
maybe'protocol = Data.ProtoLens.Field.field @"maybe'protocol"
maybe'queueMapping ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'queueMapping" a) =>
  Lens.Family2.LensLike' f s a
maybe'queueMapping
  = Data.ProtoLens.Field.field @"maybe'queueMapping"
maybe'rc ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'rc" a) =>
  Lens.Family2.LensLike' f s a
maybe'rc = Data.ProtoLens.Field.field @"maybe'rc"
maybe'ret ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'ret" a) =>
  Lens.Family2.LensLike' f s a
maybe'ret = Data.ProtoLens.Field.field @"maybe'ret"
maybe'skbaddr ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'skbaddr" a) =>
  Lens.Family2.LensLike' f s a
maybe'skbaddr = Data.ProtoLens.Field.field @"maybe'skbaddr"
maybe'truesize ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'truesize" a) =>
  Lens.Family2.LensLike' f s a
maybe'truesize = Data.ProtoLens.Field.field @"maybe'truesize"
maybe'vlanProto ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'vlanProto" a) =>
  Lens.Family2.LensLike' f s a
maybe'vlanProto = Data.ProtoLens.Field.field @"maybe'vlanProto"
maybe'vlanTagged ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'vlanTagged" a) =>
  Lens.Family2.LensLike' f s a
maybe'vlanTagged = Data.ProtoLens.Field.field @"maybe'vlanTagged"
maybe'vlanTci ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'vlanTci" a) =>
  Lens.Family2.LensLike' f s a
maybe'vlanTci = Data.ProtoLens.Field.field @"maybe'vlanTci"
name ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "name" a) =>
  Lens.Family2.LensLike' f s a
name = Data.ProtoLens.Field.field @"name"
napiId ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "napiId" a) =>
  Lens.Family2.LensLike' f s a
napiId = Data.ProtoLens.Field.field @"napiId"
nrFrags ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "nrFrags" a) =>
  Lens.Family2.LensLike' f s a
nrFrags = Data.ProtoLens.Field.field @"nrFrags"
protocol ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "protocol" a) =>
  Lens.Family2.LensLike' f s a
protocol = Data.ProtoLens.Field.field @"protocol"
queueMapping ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "queueMapping" a) =>
  Lens.Family2.LensLike' f s a
queueMapping = Data.ProtoLens.Field.field @"queueMapping"
rc ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "rc" a) =>
  Lens.Family2.LensLike' f s a
rc = Data.ProtoLens.Field.field @"rc"
ret ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "ret" a) =>
  Lens.Family2.LensLike' f s a
ret = Data.ProtoLens.Field.field @"ret"
skbaddr ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "skbaddr" a) =>
  Lens.Family2.LensLike' f s a
skbaddr = Data.ProtoLens.Field.field @"skbaddr"
truesize ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "truesize" a) =>
  Lens.Family2.LensLike' f s a
truesize = Data.ProtoLens.Field.field @"truesize"
vlanProto ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vlanProto" a) =>
  Lens.Family2.LensLike' f s a
vlanProto = Data.ProtoLens.Field.field @"vlanProto"
vlanTagged ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vlanTagged" a) =>
  Lens.Family2.LensLike' f s a
vlanTagged = Data.ProtoLens.Field.field @"vlanTagged"
vlanTci ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "vlanTci" a) =>
  Lens.Family2.LensLike' f s a
vlanTci = Data.ProtoLens.Field.field @"vlanTci"