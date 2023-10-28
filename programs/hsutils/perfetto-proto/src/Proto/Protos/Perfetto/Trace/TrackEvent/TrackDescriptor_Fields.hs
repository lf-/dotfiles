{- This file was auto-generated from protos/perfetto/trace/track_event/track_descriptor.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Protos.Perfetto.Trace.TrackEvent.TrackDescriptor_Fields where
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
import qualified Proto.Protos.Perfetto.Trace.TrackEvent.CounterDescriptor
import qualified Proto.Protos.Perfetto.Trace.TrackEvent.ProcessDescriptor
import qualified Proto.Protos.Perfetto.Trace.TrackEvent.ThreadDescriptor
counter ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "counter" a) =>
  Lens.Family2.LensLike' f s a
counter = Data.ProtoLens.Field.field @"counter"
disallowMergingWithSystemTracks ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "disallowMergingWithSystemTracks" a) =>
  Lens.Family2.LensLike' f s a
disallowMergingWithSystemTracks
  = Data.ProtoLens.Field.field @"disallowMergingWithSystemTracks"
maybe'counter ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'counter" a) =>
  Lens.Family2.LensLike' f s a
maybe'counter = Data.ProtoLens.Field.field @"maybe'counter"
maybe'disallowMergingWithSystemTracks ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'disallowMergingWithSystemTracks" a) =>
  Lens.Family2.LensLike' f s a
maybe'disallowMergingWithSystemTracks
  = Data.ProtoLens.Field.field
      @"maybe'disallowMergingWithSystemTracks"
maybe'name ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'name" a) =>
  Lens.Family2.LensLike' f s a
maybe'name = Data.ProtoLens.Field.field @"maybe'name"
maybe'parentUuid ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'parentUuid" a) =>
  Lens.Family2.LensLike' f s a
maybe'parentUuid = Data.ProtoLens.Field.field @"maybe'parentUuid"
maybe'process ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'process" a) =>
  Lens.Family2.LensLike' f s a
maybe'process = Data.ProtoLens.Field.field @"maybe'process"
maybe'thread ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'thread" a) =>
  Lens.Family2.LensLike' f s a
maybe'thread = Data.ProtoLens.Field.field @"maybe'thread"
maybe'uuid ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'uuid" a) =>
  Lens.Family2.LensLike' f s a
maybe'uuid = Data.ProtoLens.Field.field @"maybe'uuid"
name ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "name" a) =>
  Lens.Family2.LensLike' f s a
name = Data.ProtoLens.Field.field @"name"
parentUuid ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "parentUuid" a) =>
  Lens.Family2.LensLike' f s a
parentUuid = Data.ProtoLens.Field.field @"parentUuid"
process ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "process" a) =>
  Lens.Family2.LensLike' f s a
process = Data.ProtoLens.Field.field @"process"
thread ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "thread" a) =>
  Lens.Family2.LensLike' f s a
thread = Data.ProtoLens.Field.field @"thread"
uuid ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "uuid" a) =>
  Lens.Family2.LensLike' f s a
uuid = Data.ProtoLens.Field.field @"uuid"