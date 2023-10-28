{- This file was auto-generated from protos/perfetto/trace/ftrace/virtio_video.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Protos.Perfetto.Trace.Ftrace.VirtioVideo_Fields where
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
dataSize0 ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "dataSize0" a) =>
  Lens.Family2.LensLike' f s a
dataSize0 = Data.ProtoLens.Field.field @"dataSize0"
dataSize1 ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "dataSize1" a) =>
  Lens.Family2.LensLike' f s a
dataSize1 = Data.ProtoLens.Field.field @"dataSize1"
dataSize2 ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "dataSize2" a) =>
  Lens.Family2.LensLike' f s a
dataSize2 = Data.ProtoLens.Field.field @"dataSize2"
dataSize3 ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "dataSize3" a) =>
  Lens.Family2.LensLike' f s a
dataSize3 = Data.ProtoLens.Field.field @"dataSize3"
maybe'dataSize0 ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'dataSize0" a) =>
  Lens.Family2.LensLike' f s a
maybe'dataSize0 = Data.ProtoLens.Field.field @"maybe'dataSize0"
maybe'dataSize1 ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'dataSize1" a) =>
  Lens.Family2.LensLike' f s a
maybe'dataSize1 = Data.ProtoLens.Field.field @"maybe'dataSize1"
maybe'dataSize2 ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'dataSize2" a) =>
  Lens.Family2.LensLike' f s a
maybe'dataSize2 = Data.ProtoLens.Field.field @"maybe'dataSize2"
maybe'dataSize3 ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'dataSize3" a) =>
  Lens.Family2.LensLike' f s a
maybe'dataSize3 = Data.ProtoLens.Field.field @"maybe'dataSize3"
maybe'queueType ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'queueType" a) =>
  Lens.Family2.LensLike' f s a
maybe'queueType = Data.ProtoLens.Field.field @"maybe'queueType"
maybe'resourceId ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'resourceId" a) =>
  Lens.Family2.LensLike' f s a
maybe'resourceId = Data.ProtoLens.Field.field @"maybe'resourceId"
maybe'streamId ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'streamId" a) =>
  Lens.Family2.LensLike' f s a
maybe'streamId = Data.ProtoLens.Field.field @"maybe'streamId"
maybe'timestamp ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'timestamp" a) =>
  Lens.Family2.LensLike' f s a
maybe'timestamp = Data.ProtoLens.Field.field @"maybe'timestamp"
maybe'type' ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'type'" a) =>
  Lens.Family2.LensLike' f s a
maybe'type' = Data.ProtoLens.Field.field @"maybe'type'"
queueType ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "queueType" a) =>
  Lens.Family2.LensLike' f s a
queueType = Data.ProtoLens.Field.field @"queueType"
resourceId ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "resourceId" a) =>
  Lens.Family2.LensLike' f s a
resourceId = Data.ProtoLens.Field.field @"resourceId"
streamId ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "streamId" a) =>
  Lens.Family2.LensLike' f s a
streamId = Data.ProtoLens.Field.field @"streamId"
timestamp ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "timestamp" a) =>
  Lens.Family2.LensLike' f s a
timestamp = Data.ProtoLens.Field.field @"timestamp"
type' ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "type'" a) =>
  Lens.Family2.LensLike' f s a
type' = Data.ProtoLens.Field.field @"type'"