{- This file was auto-generated from protos/perfetto/trace/track_event/thread_descriptor.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Protos.Perfetto.Trace.TrackEvent.ThreadDescriptor_Fields where
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
chromeThreadType ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "chromeThreadType" a) =>
  Lens.Family2.LensLike' f s a
chromeThreadType = Data.ProtoLens.Field.field @"chromeThreadType"
legacySortIndex ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "legacySortIndex" a) =>
  Lens.Family2.LensLike' f s a
legacySortIndex = Data.ProtoLens.Field.field @"legacySortIndex"
maybe'chromeThreadType ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'chromeThreadType" a) =>
  Lens.Family2.LensLike' f s a
maybe'chromeThreadType
  = Data.ProtoLens.Field.field @"maybe'chromeThreadType"
maybe'legacySortIndex ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'legacySortIndex" a) =>
  Lens.Family2.LensLike' f s a
maybe'legacySortIndex
  = Data.ProtoLens.Field.field @"maybe'legacySortIndex"
maybe'pid ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'pid" a) =>
  Lens.Family2.LensLike' f s a
maybe'pid = Data.ProtoLens.Field.field @"maybe'pid"
maybe'referenceThreadInstructionCount ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'referenceThreadInstructionCount" a) =>
  Lens.Family2.LensLike' f s a
maybe'referenceThreadInstructionCount
  = Data.ProtoLens.Field.field
      @"maybe'referenceThreadInstructionCount"
maybe'referenceThreadTimeUs ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'referenceThreadTimeUs" a) =>
  Lens.Family2.LensLike' f s a
maybe'referenceThreadTimeUs
  = Data.ProtoLens.Field.field @"maybe'referenceThreadTimeUs"
maybe'referenceTimestampUs ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'referenceTimestampUs" a) =>
  Lens.Family2.LensLike' f s a
maybe'referenceTimestampUs
  = Data.ProtoLens.Field.field @"maybe'referenceTimestampUs"
maybe'threadName ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'threadName" a) =>
  Lens.Family2.LensLike' f s a
maybe'threadName = Data.ProtoLens.Field.field @"maybe'threadName"
maybe'tid ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'tid" a) =>
  Lens.Family2.LensLike' f s a
maybe'tid = Data.ProtoLens.Field.field @"maybe'tid"
pid ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "pid" a) =>
  Lens.Family2.LensLike' f s a
pid = Data.ProtoLens.Field.field @"pid"
referenceThreadInstructionCount ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "referenceThreadInstructionCount" a) =>
  Lens.Family2.LensLike' f s a
referenceThreadInstructionCount
  = Data.ProtoLens.Field.field @"referenceThreadInstructionCount"
referenceThreadTimeUs ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "referenceThreadTimeUs" a) =>
  Lens.Family2.LensLike' f s a
referenceThreadTimeUs
  = Data.ProtoLens.Field.field @"referenceThreadTimeUs"
referenceTimestampUs ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "referenceTimestampUs" a) =>
  Lens.Family2.LensLike' f s a
referenceTimestampUs
  = Data.ProtoLens.Field.field @"referenceTimestampUs"
threadName ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "threadName" a) =>
  Lens.Family2.LensLike' f s a
threadName = Data.ProtoLens.Field.field @"threadName"
tid ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "tid" a) =>
  Lens.Family2.LensLike' f s a
tid = Data.ProtoLens.Field.field @"tid"