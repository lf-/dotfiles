{- This file was auto-generated from protos/perfetto/trace/ftrace/cgroup.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Protos.Perfetto.Trace.Ftrace.Cgroup_Fields where
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
cname ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "cname" a) =>
  Lens.Family2.LensLike' f s a
cname = Data.ProtoLens.Field.field @"cname"
comm ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "comm" a) =>
  Lens.Family2.LensLike' f s a
comm = Data.ProtoLens.Field.field @"comm"
dstId ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "dstId" a) =>
  Lens.Family2.LensLike' f s a
dstId = Data.ProtoLens.Field.field @"dstId"
dstLevel ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "dstLevel" a) =>
  Lens.Family2.LensLike' f s a
dstLevel = Data.ProtoLens.Field.field @"dstLevel"
dstPath ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "dstPath" a) =>
  Lens.Family2.LensLike' f s a
dstPath = Data.ProtoLens.Field.field @"dstPath"
dstRoot ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "dstRoot" a) =>
  Lens.Family2.LensLike' f s a
dstRoot = Data.ProtoLens.Field.field @"dstRoot"
id ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "id" a) =>
  Lens.Family2.LensLike' f s a
id = Data.ProtoLens.Field.field @"id"
level ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "level" a) =>
  Lens.Family2.LensLike' f s a
level = Data.ProtoLens.Field.field @"level"
maybe'cname ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'cname" a) =>
  Lens.Family2.LensLike' f s a
maybe'cname = Data.ProtoLens.Field.field @"maybe'cname"
maybe'comm ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'comm" a) =>
  Lens.Family2.LensLike' f s a
maybe'comm = Data.ProtoLens.Field.field @"maybe'comm"
maybe'dstId ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'dstId" a) =>
  Lens.Family2.LensLike' f s a
maybe'dstId = Data.ProtoLens.Field.field @"maybe'dstId"
maybe'dstLevel ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'dstLevel" a) =>
  Lens.Family2.LensLike' f s a
maybe'dstLevel = Data.ProtoLens.Field.field @"maybe'dstLevel"
maybe'dstPath ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'dstPath" a) =>
  Lens.Family2.LensLike' f s a
maybe'dstPath = Data.ProtoLens.Field.field @"maybe'dstPath"
maybe'dstRoot ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'dstRoot" a) =>
  Lens.Family2.LensLike' f s a
maybe'dstRoot = Data.ProtoLens.Field.field @"maybe'dstRoot"
maybe'id ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'id" a) =>
  Lens.Family2.LensLike' f s a
maybe'id = Data.ProtoLens.Field.field @"maybe'id"
maybe'level ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'level" a) =>
  Lens.Family2.LensLike' f s a
maybe'level = Data.ProtoLens.Field.field @"maybe'level"
maybe'name ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'name" a) =>
  Lens.Family2.LensLike' f s a
maybe'name = Data.ProtoLens.Field.field @"maybe'name"
maybe'path ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'path" a) =>
  Lens.Family2.LensLike' f s a
maybe'path = Data.ProtoLens.Field.field @"maybe'path"
maybe'pid ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'pid" a) =>
  Lens.Family2.LensLike' f s a
maybe'pid = Data.ProtoLens.Field.field @"maybe'pid"
maybe'root ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'root" a) =>
  Lens.Family2.LensLike' f s a
maybe'root = Data.ProtoLens.Field.field @"maybe'root"
maybe'ssMask ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'ssMask" a) =>
  Lens.Family2.LensLike' f s a
maybe'ssMask = Data.ProtoLens.Field.field @"maybe'ssMask"
name ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "name" a) =>
  Lens.Family2.LensLike' f s a
name = Data.ProtoLens.Field.field @"name"
path ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "path" a) =>
  Lens.Family2.LensLike' f s a
path = Data.ProtoLens.Field.field @"path"
pid ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "pid" a) =>
  Lens.Family2.LensLike' f s a
pid = Data.ProtoLens.Field.field @"pid"
root ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "root" a) =>
  Lens.Family2.LensLike' f s a
root = Data.ProtoLens.Field.field @"root"
ssMask ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "ssMask" a) =>
  Lens.Family2.LensLike' f s a
ssMask = Data.ProtoLens.Field.field @"ssMask"