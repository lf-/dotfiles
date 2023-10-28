{- This file was auto-generated from protos/perfetto/trace/ftrace/kmem.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Protos.Perfetto.Trace.Ftrace.Kmem_Fields where
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
addr ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "addr" a) =>
  Lens.Family2.LensLike' f s a
addr = Data.ProtoLens.Field.field @"addr"
align ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "align" a) =>
  Lens.Family2.LensLike' f s a
align = Data.ProtoLens.Field.field @"align"
allocMigratetype ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "allocMigratetype" a) =>
  Lens.Family2.LensLike' f s a
allocMigratetype = Data.ProtoLens.Field.field @"allocMigratetype"
allocOrder ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "allocOrder" a) =>
  Lens.Family2.LensLike' f s a
allocOrder = Data.ProtoLens.Field.field @"allocOrder"
bytesAlloc ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "bytesAlloc" a) =>
  Lens.Family2.LensLike' f s a
bytesAlloc = Data.ProtoLens.Field.field @"bytesAlloc"
bytesReq ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "bytesReq" a) =>
  Lens.Family2.LensLike' f s a
bytesReq = Data.ProtoLens.Field.field @"bytesReq"
callSite ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "callSite" a) =>
  Lens.Family2.LensLike' f s a
callSite = Data.ProtoLens.Field.field @"callSite"
changeOwnership ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "changeOwnership" a) =>
  Lens.Family2.LensLike' f s a
changeOwnership = Data.ProtoLens.Field.field @"changeOwnership"
chunkSize ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "chunkSize" a) =>
  Lens.Family2.LensLike' f s a
chunkSize = Data.ProtoLens.Field.field @"chunkSize"
clientName ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "clientName" a) =>
  Lens.Family2.LensLike' f s a
clientName = Data.ProtoLens.Field.field @"clientName"
cold ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "cold" a) =>
  Lens.Family2.LensLike' f s a
cold = Data.ProtoLens.Field.field @"cold"
curr ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "curr" a) =>
  Lens.Family2.LensLike' f s a
curr = Data.ProtoLens.Field.field @"curr"
drainedSize ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "drainedSize" a) =>
  Lens.Family2.LensLike' f s a
drainedSize = Data.ProtoLens.Field.field @"drainedSize"
error ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "error" a) =>
  Lens.Family2.LensLike' f s a
error = Data.ProtoLens.Field.field @"error"
fallbackMigratetype ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "fallbackMigratetype" a) =>
  Lens.Family2.LensLike' f s a
fallbackMigratetype
  = Data.ProtoLens.Field.field @"fallbackMigratetype"
fallbackOrder ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "fallbackOrder" a) =>
  Lens.Family2.LensLike' f s a
fallbackOrder = Data.ProtoLens.Field.field @"fallbackOrder"
flags ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "flags" a) =>
  Lens.Family2.LensLike' f s a
flags = Data.ProtoLens.Field.field @"flags"
gfpFlags ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "gfpFlags" a) =>
  Lens.Family2.LensLike' f s a
gfpFlags = Data.ProtoLens.Field.field @"gfpFlags"
heapName ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "heapName" a) =>
  Lens.Family2.LensLike' f s a
heapName = Data.ProtoLens.Field.field @"heapName"
isPrefetch ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "isPrefetch" a) =>
  Lens.Family2.LensLike' f s a
isPrefetch = Data.ProtoLens.Field.field @"isPrefetch"
len ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "len" a) =>
  Lens.Family2.LensLike' f s a
len = Data.ProtoLens.Field.field @"len"
mask ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "mask" a) =>
  Lens.Family2.LensLike' f s a
mask = Data.ProtoLens.Field.field @"mask"
maybe'addr ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'addr" a) =>
  Lens.Family2.LensLike' f s a
maybe'addr = Data.ProtoLens.Field.field @"maybe'addr"
maybe'align ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'align" a) =>
  Lens.Family2.LensLike' f s a
maybe'align = Data.ProtoLens.Field.field @"maybe'align"
maybe'allocMigratetype ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'allocMigratetype" a) =>
  Lens.Family2.LensLike' f s a
maybe'allocMigratetype
  = Data.ProtoLens.Field.field @"maybe'allocMigratetype"
maybe'allocOrder ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'allocOrder" a) =>
  Lens.Family2.LensLike' f s a
maybe'allocOrder = Data.ProtoLens.Field.field @"maybe'allocOrder"
maybe'bytesAlloc ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'bytesAlloc" a) =>
  Lens.Family2.LensLike' f s a
maybe'bytesAlloc = Data.ProtoLens.Field.field @"maybe'bytesAlloc"
maybe'bytesReq ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'bytesReq" a) =>
  Lens.Family2.LensLike' f s a
maybe'bytesReq = Data.ProtoLens.Field.field @"maybe'bytesReq"
maybe'callSite ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'callSite" a) =>
  Lens.Family2.LensLike' f s a
maybe'callSite = Data.ProtoLens.Field.field @"maybe'callSite"
maybe'changeOwnership ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'changeOwnership" a) =>
  Lens.Family2.LensLike' f s a
maybe'changeOwnership
  = Data.ProtoLens.Field.field @"maybe'changeOwnership"
maybe'chunkSize ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'chunkSize" a) =>
  Lens.Family2.LensLike' f s a
maybe'chunkSize = Data.ProtoLens.Field.field @"maybe'chunkSize"
maybe'clientName ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'clientName" a) =>
  Lens.Family2.LensLike' f s a
maybe'clientName = Data.ProtoLens.Field.field @"maybe'clientName"
maybe'cold ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'cold" a) =>
  Lens.Family2.LensLike' f s a
maybe'cold = Data.ProtoLens.Field.field @"maybe'cold"
maybe'curr ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'curr" a) =>
  Lens.Family2.LensLike' f s a
maybe'curr = Data.ProtoLens.Field.field @"maybe'curr"
maybe'drainedSize ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'drainedSize" a) =>
  Lens.Family2.LensLike' f s a
maybe'drainedSize = Data.ProtoLens.Field.field @"maybe'drainedSize"
maybe'error ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'error" a) =>
  Lens.Family2.LensLike' f s a
maybe'error = Data.ProtoLens.Field.field @"maybe'error"
maybe'fallbackMigratetype ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'fallbackMigratetype" a) =>
  Lens.Family2.LensLike' f s a
maybe'fallbackMigratetype
  = Data.ProtoLens.Field.field @"maybe'fallbackMigratetype"
maybe'fallbackOrder ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'fallbackOrder" a) =>
  Lens.Family2.LensLike' f s a
maybe'fallbackOrder
  = Data.ProtoLens.Field.field @"maybe'fallbackOrder"
maybe'flags ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'flags" a) =>
  Lens.Family2.LensLike' f s a
maybe'flags = Data.ProtoLens.Field.field @"maybe'flags"
maybe'gfpFlags ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'gfpFlags" a) =>
  Lens.Family2.LensLike' f s a
maybe'gfpFlags = Data.ProtoLens.Field.field @"maybe'gfpFlags"
maybe'heapName ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'heapName" a) =>
  Lens.Family2.LensLike' f s a
maybe'heapName = Data.ProtoLens.Field.field @"maybe'heapName"
maybe'isPrefetch ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'isPrefetch" a) =>
  Lens.Family2.LensLike' f s a
maybe'isPrefetch = Data.ProtoLens.Field.field @"maybe'isPrefetch"
maybe'len ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'len" a) =>
  Lens.Family2.LensLike' f s a
maybe'len = Data.ProtoLens.Field.field @"maybe'len"
maybe'mask ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'mask" a) =>
  Lens.Family2.LensLike' f s a
maybe'mask = Data.ProtoLens.Field.field @"maybe'mask"
maybe'member ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'member" a) =>
  Lens.Family2.LensLike' f s a
maybe'member = Data.ProtoLens.Field.field @"maybe'member"
maybe'migratetype ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'migratetype" a) =>
  Lens.Family2.LensLike' f s a
maybe'migratetype = Data.ProtoLens.Field.field @"maybe'migratetype"
maybe'mmId ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'mmId" a) =>
  Lens.Family2.LensLike' f s a
maybe'mmId = Data.ProtoLens.Field.field @"maybe'mmId"
maybe'mode ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'mode" a) =>
  Lens.Family2.LensLike' f s a
maybe'mode = Data.ProtoLens.Field.field @"maybe'mode"
maybe'node ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'node" a) =>
  Lens.Family2.LensLike' f s a
maybe'node = Data.ProtoLens.Field.field @"maybe'node"
maybe'num ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'num" a) =>
  Lens.Family2.LensLike' f s a
maybe'num = Data.ProtoLens.Field.field @"maybe'num"
maybe'order ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'order" a) =>
  Lens.Family2.LensLike' f s a
maybe'order = Data.ProtoLens.Field.field @"maybe'order"
maybe'pa ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'pa" a) =>
  Lens.Family2.LensLike' f s a
maybe'pa = Data.ProtoLens.Field.field @"maybe'pa"
maybe'page ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'page" a) =>
  Lens.Family2.LensLike' f s a
maybe'page = Data.ProtoLens.Field.field @"maybe'page"
maybe'pfn ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'pfn" a) =>
  Lens.Family2.LensLike' f s a
maybe'pfn = Data.ProtoLens.Field.field @"maybe'pfn"
maybe'poolTotal ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'poolTotal" a) =>
  Lens.Family2.LensLike' f s a
maybe'poolTotal = Data.ProtoLens.Field.field @"maybe'poolTotal"
maybe'ptr ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'ptr" a) =>
  Lens.Family2.LensLike' f s a
maybe'ptr = Data.ProtoLens.Field.field @"maybe'ptr"
maybe'secId ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'secId" a) =>
  Lens.Family2.LensLike' f s a
maybe'secId = Data.ProtoLens.Field.field @"maybe'secId"
maybe'size ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'size" a) =>
  Lens.Family2.LensLike' f s a
maybe'size = Data.ProtoLens.Field.field @"maybe'size"
maybe'skippedSize ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'skippedSize" a) =>
  Lens.Family2.LensLike' f s a
maybe'skippedSize = Data.ProtoLens.Field.field @"maybe'skippedSize"
maybe'totalAllocated ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'totalAllocated" a) =>
  Lens.Family2.LensLike' f s a
maybe'totalAllocated
  = Data.ProtoLens.Field.field @"maybe'totalAllocated"
maybe'tries ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'tries" a) =>
  Lens.Family2.LensLike' f s a
maybe'tries = Data.ProtoLens.Field.field @"maybe'tries"
maybe'va ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'va" a) =>
  Lens.Family2.LensLike' f s a
maybe'va = Data.ProtoLens.Field.field @"maybe'va"
member ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "member" a) =>
  Lens.Family2.LensLike' f s a
member = Data.ProtoLens.Field.field @"member"
migratetype ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "migratetype" a) =>
  Lens.Family2.LensLike' f s a
migratetype = Data.ProtoLens.Field.field @"migratetype"
mmId ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "mmId" a) =>
  Lens.Family2.LensLike' f s a
mmId = Data.ProtoLens.Field.field @"mmId"
mode ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "mode" a) =>
  Lens.Family2.LensLike' f s a
mode = Data.ProtoLens.Field.field @"mode"
node ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "node" a) =>
  Lens.Family2.LensLike' f s a
node = Data.ProtoLens.Field.field @"node"
num ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "num" a) =>
  Lens.Family2.LensLike' f s a
num = Data.ProtoLens.Field.field @"num"
order ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "order" a) =>
  Lens.Family2.LensLike' f s a
order = Data.ProtoLens.Field.field @"order"
pa ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "pa" a) =>
  Lens.Family2.LensLike' f s a
pa = Data.ProtoLens.Field.field @"pa"
page ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "page" a) =>
  Lens.Family2.LensLike' f s a
page = Data.ProtoLens.Field.field @"page"
pfn ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "pfn" a) =>
  Lens.Family2.LensLike' f s a
pfn = Data.ProtoLens.Field.field @"pfn"
poolTotal ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "poolTotal" a) =>
  Lens.Family2.LensLike' f s a
poolTotal = Data.ProtoLens.Field.field @"poolTotal"
ptr ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "ptr" a) =>
  Lens.Family2.LensLike' f s a
ptr = Data.ProtoLens.Field.field @"ptr"
secId ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "secId" a) =>
  Lens.Family2.LensLike' f s a
secId = Data.ProtoLens.Field.field @"secId"
size ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "size" a) =>
  Lens.Family2.LensLike' f s a
size = Data.ProtoLens.Field.field @"size"
skippedSize ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "skippedSize" a) =>
  Lens.Family2.LensLike' f s a
skippedSize = Data.ProtoLens.Field.field @"skippedSize"
totalAllocated ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "totalAllocated" a) =>
  Lens.Family2.LensLike' f s a
totalAllocated = Data.ProtoLens.Field.field @"totalAllocated"
tries ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "tries" a) =>
  Lens.Family2.LensLike' f s a
tries = Data.ProtoLens.Field.field @"tries"
va ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "va" a) =>
  Lens.Family2.LensLike' f s a
va = Data.ProtoLens.Field.field @"va"