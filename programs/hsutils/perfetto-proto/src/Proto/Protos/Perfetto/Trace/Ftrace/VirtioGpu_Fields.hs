{- This file was auto-generated from protos/perfetto/trace/ftrace/virtio_gpu.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Protos.Perfetto.Trace.Ftrace.VirtioGpu_Fields where
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
ctxId ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "ctxId" a) =>
  Lens.Family2.LensLike' f s a
ctxId = Data.ProtoLens.Field.field @"ctxId"
dev ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "dev" a) =>
  Lens.Family2.LensLike' f s a
dev = Data.ProtoLens.Field.field @"dev"
fenceId ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "fenceId" a) =>
  Lens.Family2.LensLike' f s a
fenceId = Data.ProtoLens.Field.field @"fenceId"
flags ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "flags" a) =>
  Lens.Family2.LensLike' f s a
flags = Data.ProtoLens.Field.field @"flags"
maybe'ctxId ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'ctxId" a) =>
  Lens.Family2.LensLike' f s a
maybe'ctxId = Data.ProtoLens.Field.field @"maybe'ctxId"
maybe'dev ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'dev" a) =>
  Lens.Family2.LensLike' f s a
maybe'dev = Data.ProtoLens.Field.field @"maybe'dev"
maybe'fenceId ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'fenceId" a) =>
  Lens.Family2.LensLike' f s a
maybe'fenceId = Data.ProtoLens.Field.field @"maybe'fenceId"
maybe'flags ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'flags" a) =>
  Lens.Family2.LensLike' f s a
maybe'flags = Data.ProtoLens.Field.field @"maybe'flags"
maybe'name ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'name" a) =>
  Lens.Family2.LensLike' f s a
maybe'name = Data.ProtoLens.Field.field @"maybe'name"
maybe'numFree ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'numFree" a) =>
  Lens.Family2.LensLike' f s a
maybe'numFree = Data.ProtoLens.Field.field @"maybe'numFree"
maybe'seqno ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'seqno" a) =>
  Lens.Family2.LensLike' f s a
maybe'seqno = Data.ProtoLens.Field.field @"maybe'seqno"
maybe'type' ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'type'" a) =>
  Lens.Family2.LensLike' f s a
maybe'type' = Data.ProtoLens.Field.field @"maybe'type'"
maybe'vq ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'vq" a) =>
  Lens.Family2.LensLike' f s a
maybe'vq = Data.ProtoLens.Field.field @"maybe'vq"
name ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "name" a) =>
  Lens.Family2.LensLike' f s a
name = Data.ProtoLens.Field.field @"name"
numFree ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "numFree" a) =>
  Lens.Family2.LensLike' f s a
numFree = Data.ProtoLens.Field.field @"numFree"
seqno ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "seqno" a) =>
  Lens.Family2.LensLike' f s a
seqno = Data.ProtoLens.Field.field @"seqno"
type' ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "type'" a) =>
  Lens.Family2.LensLike' f s a
type' = Data.ProtoLens.Field.field @"type'"
vq ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "vq" a) =>
  Lens.Family2.LensLike' f s a
vq = Data.ProtoLens.Field.field @"vq"