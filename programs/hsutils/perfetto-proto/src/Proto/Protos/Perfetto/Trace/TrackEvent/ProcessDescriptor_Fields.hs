{- This file was auto-generated from protos/perfetto/trace/track_event/process_descriptor.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Protos.Perfetto.Trace.TrackEvent.ProcessDescriptor_Fields where
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
chromeProcessType ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "chromeProcessType" a) =>
  Lens.Family2.LensLike' f s a
chromeProcessType = Data.ProtoLens.Field.field @"chromeProcessType"
cmdline ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "cmdline" a) =>
  Lens.Family2.LensLike' f s a
cmdline = Data.ProtoLens.Field.field @"cmdline"
legacySortIndex ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "legacySortIndex" a) =>
  Lens.Family2.LensLike' f s a
legacySortIndex = Data.ProtoLens.Field.field @"legacySortIndex"
maybe'chromeProcessType ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'chromeProcessType" a) =>
  Lens.Family2.LensLike' f s a
maybe'chromeProcessType
  = Data.ProtoLens.Field.field @"maybe'chromeProcessType"
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
maybe'processName ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'processName" a) =>
  Lens.Family2.LensLike' f s a
maybe'processName = Data.ProtoLens.Field.field @"maybe'processName"
maybe'processPriority ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'processPriority" a) =>
  Lens.Family2.LensLike' f s a
maybe'processPriority
  = Data.ProtoLens.Field.field @"maybe'processPriority"
maybe'startTimestampNs ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'startTimestampNs" a) =>
  Lens.Family2.LensLike' f s a
maybe'startTimestampNs
  = Data.ProtoLens.Field.field @"maybe'startTimestampNs"
pid ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "pid" a) =>
  Lens.Family2.LensLike' f s a
pid = Data.ProtoLens.Field.field @"pid"
processLabels ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "processLabels" a) =>
  Lens.Family2.LensLike' f s a
processLabels = Data.ProtoLens.Field.field @"processLabels"
processName ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "processName" a) =>
  Lens.Family2.LensLike' f s a
processName = Data.ProtoLens.Field.field @"processName"
processPriority ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "processPriority" a) =>
  Lens.Family2.LensLike' f s a
processPriority = Data.ProtoLens.Field.field @"processPriority"
startTimestampNs ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "startTimestampNs" a) =>
  Lens.Family2.LensLike' f s a
startTimestampNs = Data.ProtoLens.Field.field @"startTimestampNs"
vec'cmdline ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'cmdline" a) =>
  Lens.Family2.LensLike' f s a
vec'cmdline = Data.ProtoLens.Field.field @"vec'cmdline"
vec'processLabels ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'processLabels" a) =>
  Lens.Family2.LensLike' f s a
vec'processLabels = Data.ProtoLens.Field.field @"vec'processLabels"