{- This file was auto-generated from protos/perfetto/trace/ftrace/vmscan.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Protos.Perfetto.Trace.Ftrace.Vmscan_Fields where
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
cacheItems ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "cacheItems" a) =>
  Lens.Family2.LensLike' f s a
cacheItems = Data.ProtoLens.Field.field @"cacheItems"
delta ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "delta" a) =>
  Lens.Family2.LensLike' f s a
delta = Data.ProtoLens.Field.field @"delta"
gfpFlags ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "gfpFlags" a) =>
  Lens.Family2.LensLike' f s a
gfpFlags = Data.ProtoLens.Field.field @"gfpFlags"
lruPgs ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "lruPgs" a) =>
  Lens.Family2.LensLike' f s a
lruPgs = Data.ProtoLens.Field.field @"lruPgs"
mayWritepage ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "mayWritepage" a) =>
  Lens.Family2.LensLike' f s a
mayWritepage = Data.ProtoLens.Field.field @"mayWritepage"
maybe'cacheItems ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'cacheItems" a) =>
  Lens.Family2.LensLike' f s a
maybe'cacheItems = Data.ProtoLens.Field.field @"maybe'cacheItems"
maybe'delta ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'delta" a) =>
  Lens.Family2.LensLike' f s a
maybe'delta = Data.ProtoLens.Field.field @"maybe'delta"
maybe'gfpFlags ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'gfpFlags" a) =>
  Lens.Family2.LensLike' f s a
maybe'gfpFlags = Data.ProtoLens.Field.field @"maybe'gfpFlags"
maybe'lruPgs ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'lruPgs" a) =>
  Lens.Family2.LensLike' f s a
maybe'lruPgs = Data.ProtoLens.Field.field @"maybe'lruPgs"
maybe'mayWritepage ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'mayWritepage" a) =>
  Lens.Family2.LensLike' f s a
maybe'mayWritepage
  = Data.ProtoLens.Field.field @"maybe'mayWritepage"
maybe'newScan ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'newScan" a) =>
  Lens.Family2.LensLike' f s a
maybe'newScan = Data.ProtoLens.Field.field @"maybe'newScan"
maybe'nid ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'nid" a) =>
  Lens.Family2.LensLike' f s a
maybe'nid = Data.ProtoLens.Field.field @"maybe'nid"
maybe'nrObjectsToShrink ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'nrObjectsToShrink" a) =>
  Lens.Family2.LensLike' f s a
maybe'nrObjectsToShrink
  = Data.ProtoLens.Field.field @"maybe'nrObjectsToShrink"
maybe'nrReclaimed ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'nrReclaimed" a) =>
  Lens.Family2.LensLike' f s a
maybe'nrReclaimed = Data.ProtoLens.Field.field @"maybe'nrReclaimed"
maybe'order ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'order" a) =>
  Lens.Family2.LensLike' f s a
maybe'order = Data.ProtoLens.Field.field @"maybe'order"
maybe'pgsScanned ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'pgsScanned" a) =>
  Lens.Family2.LensLike' f s a
maybe'pgsScanned = Data.ProtoLens.Field.field @"maybe'pgsScanned"
maybe'priority ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'priority" a) =>
  Lens.Family2.LensLike' f s a
maybe'priority = Data.ProtoLens.Field.field @"maybe'priority"
maybe'retval ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'retval" a) =>
  Lens.Family2.LensLike' f s a
maybe'retval = Data.ProtoLens.Field.field @"maybe'retval"
maybe'shr ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'shr" a) =>
  Lens.Family2.LensLike' f s a
maybe'shr = Data.ProtoLens.Field.field @"maybe'shr"
maybe'shrink ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'shrink" a) =>
  Lens.Family2.LensLike' f s a
maybe'shrink = Data.ProtoLens.Field.field @"maybe'shrink"
maybe'totalScan ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'totalScan" a) =>
  Lens.Family2.LensLike' f s a
maybe'totalScan = Data.ProtoLens.Field.field @"maybe'totalScan"
maybe'unusedScan ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'unusedScan" a) =>
  Lens.Family2.LensLike' f s a
maybe'unusedScan = Data.ProtoLens.Field.field @"maybe'unusedScan"
maybe'zid ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'zid" a) =>
  Lens.Family2.LensLike' f s a
maybe'zid = Data.ProtoLens.Field.field @"maybe'zid"
newScan ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "newScan" a) =>
  Lens.Family2.LensLike' f s a
newScan = Data.ProtoLens.Field.field @"newScan"
nid ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "nid" a) =>
  Lens.Family2.LensLike' f s a
nid = Data.ProtoLens.Field.field @"nid"
nrObjectsToShrink ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "nrObjectsToShrink" a) =>
  Lens.Family2.LensLike' f s a
nrObjectsToShrink = Data.ProtoLens.Field.field @"nrObjectsToShrink"
nrReclaimed ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "nrReclaimed" a) =>
  Lens.Family2.LensLike' f s a
nrReclaimed = Data.ProtoLens.Field.field @"nrReclaimed"
order ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "order" a) =>
  Lens.Family2.LensLike' f s a
order = Data.ProtoLens.Field.field @"order"
pgsScanned ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "pgsScanned" a) =>
  Lens.Family2.LensLike' f s a
pgsScanned = Data.ProtoLens.Field.field @"pgsScanned"
priority ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "priority" a) =>
  Lens.Family2.LensLike' f s a
priority = Data.ProtoLens.Field.field @"priority"
retval ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "retval" a) =>
  Lens.Family2.LensLike' f s a
retval = Data.ProtoLens.Field.field @"retval"
shr ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "shr" a) =>
  Lens.Family2.LensLike' f s a
shr = Data.ProtoLens.Field.field @"shr"
shrink ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "shrink" a) =>
  Lens.Family2.LensLike' f s a
shrink = Data.ProtoLens.Field.field @"shrink"
totalScan ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "totalScan" a) =>
  Lens.Family2.LensLike' f s a
totalScan = Data.ProtoLens.Field.field @"totalScan"
unusedScan ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "unusedScan" a) =>
  Lens.Family2.LensLike' f s a
unusedScan = Data.ProtoLens.Field.field @"unusedScan"
zid ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "zid" a) =>
  Lens.Family2.LensLike' f s a
zid = Data.ProtoLens.Field.field @"zid"