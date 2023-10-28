{- This file was auto-generated from protos/perfetto/trace/ftrace/compaction.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Protos.Perfetto.Trace.Ftrace.Compaction_Fields where
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
classzoneIdx ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "classzoneIdx" a) =>
  Lens.Family2.LensLike' f s a
classzoneIdx = Data.ProtoLens.Field.field @"classzoneIdx"
considered ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "considered" a) =>
  Lens.Family2.LensLike' f s a
considered = Data.ProtoLens.Field.field @"considered"
deferShift ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "deferShift" a) =>
  Lens.Family2.LensLike' f s a
deferShift = Data.ProtoLens.Field.field @"deferShift"
endPfn ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "endPfn" a) =>
  Lens.Family2.LensLike' f s a
endPfn = Data.ProtoLens.Field.field @"endPfn"
freePfn ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "freePfn" a) =>
  Lens.Family2.LensLike' f s a
freePfn = Data.ProtoLens.Field.field @"freePfn"
gfpMask ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "gfpMask" a) =>
  Lens.Family2.LensLike' f s a
gfpMask = Data.ProtoLens.Field.field @"gfpMask"
highestZoneidx ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "highestZoneidx" a) =>
  Lens.Family2.LensLike' f s a
highestZoneidx = Data.ProtoLens.Field.field @"highestZoneidx"
idx ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "idx" a) =>
  Lens.Family2.LensLike' f s a
idx = Data.ProtoLens.Field.field @"idx"
maybe'classzoneIdx ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'classzoneIdx" a) =>
  Lens.Family2.LensLike' f s a
maybe'classzoneIdx
  = Data.ProtoLens.Field.field @"maybe'classzoneIdx"
maybe'considered ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'considered" a) =>
  Lens.Family2.LensLike' f s a
maybe'considered = Data.ProtoLens.Field.field @"maybe'considered"
maybe'deferShift ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'deferShift" a) =>
  Lens.Family2.LensLike' f s a
maybe'deferShift = Data.ProtoLens.Field.field @"maybe'deferShift"
maybe'endPfn ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'endPfn" a) =>
  Lens.Family2.LensLike' f s a
maybe'endPfn = Data.ProtoLens.Field.field @"maybe'endPfn"
maybe'freePfn ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'freePfn" a) =>
  Lens.Family2.LensLike' f s a
maybe'freePfn = Data.ProtoLens.Field.field @"maybe'freePfn"
maybe'gfpMask ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'gfpMask" a) =>
  Lens.Family2.LensLike' f s a
maybe'gfpMask = Data.ProtoLens.Field.field @"maybe'gfpMask"
maybe'highestZoneidx ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'highestZoneidx" a) =>
  Lens.Family2.LensLike' f s a
maybe'highestZoneidx
  = Data.ProtoLens.Field.field @"maybe'highestZoneidx"
maybe'idx ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'idx" a) =>
  Lens.Family2.LensLike' f s a
maybe'idx = Data.ProtoLens.Field.field @"maybe'idx"
maybe'migratePfn ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'migratePfn" a) =>
  Lens.Family2.LensLike' f s a
maybe'migratePfn = Data.ProtoLens.Field.field @"maybe'migratePfn"
maybe'mode ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'mode" a) =>
  Lens.Family2.LensLike' f s a
maybe'mode = Data.ProtoLens.Field.field @"maybe'mode"
maybe'nid ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'nid" a) =>
  Lens.Family2.LensLike' f s a
maybe'nid = Data.ProtoLens.Field.field @"maybe'nid"
maybe'nrFailed ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'nrFailed" a) =>
  Lens.Family2.LensLike' f s a
maybe'nrFailed = Data.ProtoLens.Field.field @"maybe'nrFailed"
maybe'nrMigrated ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'nrMigrated" a) =>
  Lens.Family2.LensLike' f s a
maybe'nrMigrated = Data.ProtoLens.Field.field @"maybe'nrMigrated"
maybe'nrScanned ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'nrScanned" a) =>
  Lens.Family2.LensLike' f s a
maybe'nrScanned = Data.ProtoLens.Field.field @"maybe'nrScanned"
maybe'nrTaken ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'nrTaken" a) =>
  Lens.Family2.LensLike' f s a
maybe'nrTaken = Data.ProtoLens.Field.field @"maybe'nrTaken"
maybe'order ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'order" a) =>
  Lens.Family2.LensLike' f s a
maybe'order = Data.ProtoLens.Field.field @"maybe'order"
maybe'orderFailed ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'orderFailed" a) =>
  Lens.Family2.LensLike' f s a
maybe'orderFailed = Data.ProtoLens.Field.field @"maybe'orderFailed"
maybe'prio ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'prio" a) =>
  Lens.Family2.LensLike' f s a
maybe'prio = Data.ProtoLens.Field.field @"maybe'prio"
maybe'ret ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'ret" a) =>
  Lens.Family2.LensLike' f s a
maybe'ret = Data.ProtoLens.Field.field @"maybe'ret"
maybe'startPfn ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'startPfn" a) =>
  Lens.Family2.LensLike' f s a
maybe'startPfn = Data.ProtoLens.Field.field @"maybe'startPfn"
maybe'status ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'status" a) =>
  Lens.Family2.LensLike' f s a
maybe'status = Data.ProtoLens.Field.field @"maybe'status"
maybe'sync ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'sync" a) =>
  Lens.Family2.LensLike' f s a
maybe'sync = Data.ProtoLens.Field.field @"maybe'sync"
maybe'zoneEnd ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'zoneEnd" a) =>
  Lens.Family2.LensLike' f s a
maybe'zoneEnd = Data.ProtoLens.Field.field @"maybe'zoneEnd"
maybe'zoneStart ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'zoneStart" a) =>
  Lens.Family2.LensLike' f s a
maybe'zoneStart = Data.ProtoLens.Field.field @"maybe'zoneStart"
migratePfn ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "migratePfn" a) =>
  Lens.Family2.LensLike' f s a
migratePfn = Data.ProtoLens.Field.field @"migratePfn"
mode ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "mode" a) =>
  Lens.Family2.LensLike' f s a
mode = Data.ProtoLens.Field.field @"mode"
nid ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "nid" a) =>
  Lens.Family2.LensLike' f s a
nid = Data.ProtoLens.Field.field @"nid"
nrFailed ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "nrFailed" a) =>
  Lens.Family2.LensLike' f s a
nrFailed = Data.ProtoLens.Field.field @"nrFailed"
nrMigrated ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "nrMigrated" a) =>
  Lens.Family2.LensLike' f s a
nrMigrated = Data.ProtoLens.Field.field @"nrMigrated"
nrScanned ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "nrScanned" a) =>
  Lens.Family2.LensLike' f s a
nrScanned = Data.ProtoLens.Field.field @"nrScanned"
nrTaken ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "nrTaken" a) =>
  Lens.Family2.LensLike' f s a
nrTaken = Data.ProtoLens.Field.field @"nrTaken"
order ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "order" a) =>
  Lens.Family2.LensLike' f s a
order = Data.ProtoLens.Field.field @"order"
orderFailed ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "orderFailed" a) =>
  Lens.Family2.LensLike' f s a
orderFailed = Data.ProtoLens.Field.field @"orderFailed"
prio ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "prio" a) =>
  Lens.Family2.LensLike' f s a
prio = Data.ProtoLens.Field.field @"prio"
ret ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "ret" a) =>
  Lens.Family2.LensLike' f s a
ret = Data.ProtoLens.Field.field @"ret"
startPfn ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "startPfn" a) =>
  Lens.Family2.LensLike' f s a
startPfn = Data.ProtoLens.Field.field @"startPfn"
status ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "status" a) =>
  Lens.Family2.LensLike' f s a
status = Data.ProtoLens.Field.field @"status"
sync ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "sync" a) =>
  Lens.Family2.LensLike' f s a
sync = Data.ProtoLens.Field.field @"sync"
zoneEnd ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "zoneEnd" a) =>
  Lens.Family2.LensLike' f s a
zoneEnd = Data.ProtoLens.Field.field @"zoneEnd"
zoneStart ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "zoneStart" a) =>
  Lens.Family2.LensLike' f s a
zoneStart = Data.ProtoLens.Field.field @"zoneStart"