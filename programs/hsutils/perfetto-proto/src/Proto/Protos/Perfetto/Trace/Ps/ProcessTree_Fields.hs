{- This file was auto-generated from protos/perfetto/trace/ps/process_tree.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Protos.Perfetto.Trace.Ps.ProcessTree_Fields where
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
cmdline ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "cmdline" a) =>
  Lens.Family2.LensLike' f s a
cmdline = Data.ProtoLens.Field.field @"cmdline"
collectionEndTimestamp ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "collectionEndTimestamp" a) =>
  Lens.Family2.LensLike' f s a
collectionEndTimestamp
  = Data.ProtoLens.Field.field @"collectionEndTimestamp"
maybe'collectionEndTimestamp ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'collectionEndTimestamp" a) =>
  Lens.Family2.LensLike' f s a
maybe'collectionEndTimestamp
  = Data.ProtoLens.Field.field @"maybe'collectionEndTimestamp"
maybe'name ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'name" a) =>
  Lens.Family2.LensLike' f s a
maybe'name = Data.ProtoLens.Field.field @"maybe'name"
maybe'pid ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'pid" a) =>
  Lens.Family2.LensLike' f s a
maybe'pid = Data.ProtoLens.Field.field @"maybe'pid"
maybe'ppid ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'ppid" a) =>
  Lens.Family2.LensLike' f s a
maybe'ppid = Data.ProtoLens.Field.field @"maybe'ppid"
maybe'tgid ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'tgid" a) =>
  Lens.Family2.LensLike' f s a
maybe'tgid = Data.ProtoLens.Field.field @"maybe'tgid"
maybe'tid ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'tid" a) =>
  Lens.Family2.LensLike' f s a
maybe'tid = Data.ProtoLens.Field.field @"maybe'tid"
maybe'uid ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'uid" a) =>
  Lens.Family2.LensLike' f s a
maybe'uid = Data.ProtoLens.Field.field @"maybe'uid"
name ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "name" a) =>
  Lens.Family2.LensLike' f s a
name = Data.ProtoLens.Field.field @"name"
nspid ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "nspid" a) =>
  Lens.Family2.LensLike' f s a
nspid = Data.ProtoLens.Field.field @"nspid"
nstid ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "nstid" a) =>
  Lens.Family2.LensLike' f s a
nstid = Data.ProtoLens.Field.field @"nstid"
pid ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "pid" a) =>
  Lens.Family2.LensLike' f s a
pid = Data.ProtoLens.Field.field @"pid"
ppid ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "ppid" a) =>
  Lens.Family2.LensLike' f s a
ppid = Data.ProtoLens.Field.field @"ppid"
processes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "processes" a) =>
  Lens.Family2.LensLike' f s a
processes = Data.ProtoLens.Field.field @"processes"
tgid ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "tgid" a) =>
  Lens.Family2.LensLike' f s a
tgid = Data.ProtoLens.Field.field @"tgid"
threads ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "threads" a) =>
  Lens.Family2.LensLike' f s a
threads = Data.ProtoLens.Field.field @"threads"
threadsDeprecated ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "threadsDeprecated" a) =>
  Lens.Family2.LensLike' f s a
threadsDeprecated = Data.ProtoLens.Field.field @"threadsDeprecated"
tid ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "tid" a) =>
  Lens.Family2.LensLike' f s a
tid = Data.ProtoLens.Field.field @"tid"
uid ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "uid" a) =>
  Lens.Family2.LensLike' f s a
uid = Data.ProtoLens.Field.field @"uid"
vec'cmdline ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'cmdline" a) =>
  Lens.Family2.LensLike' f s a
vec'cmdline = Data.ProtoLens.Field.field @"vec'cmdline"
vec'nspid ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'nspid" a) =>
  Lens.Family2.LensLike' f s a
vec'nspid = Data.ProtoLens.Field.field @"vec'nspid"
vec'nstid ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'nstid" a) =>
  Lens.Family2.LensLike' f s a
vec'nstid = Data.ProtoLens.Field.field @"vec'nstid"
vec'processes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'processes" a) =>
  Lens.Family2.LensLike' f s a
vec'processes = Data.ProtoLens.Field.field @"vec'processes"
vec'threads ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'threads" a) =>
  Lens.Family2.LensLike' f s a
vec'threads = Data.ProtoLens.Field.field @"vec'threads"
vec'threadsDeprecated ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'threadsDeprecated" a) =>
  Lens.Family2.LensLike' f s a
vec'threadsDeprecated
  = Data.ProtoLens.Field.field @"vec'threadsDeprecated"