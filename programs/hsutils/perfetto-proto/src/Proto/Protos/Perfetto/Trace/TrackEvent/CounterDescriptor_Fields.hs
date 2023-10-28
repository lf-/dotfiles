{- This file was auto-generated from protos/perfetto/trace/track_event/counter_descriptor.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Protos.Perfetto.Trace.TrackEvent.CounterDescriptor_Fields where
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
categories ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "categories" a) =>
  Lens.Family2.LensLike' f s a
categories = Data.ProtoLens.Field.field @"categories"
isIncremental ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "isIncremental" a) =>
  Lens.Family2.LensLike' f s a
isIncremental = Data.ProtoLens.Field.field @"isIncremental"
maybe'isIncremental ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'isIncremental" a) =>
  Lens.Family2.LensLike' f s a
maybe'isIncremental
  = Data.ProtoLens.Field.field @"maybe'isIncremental"
maybe'type' ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'type'" a) =>
  Lens.Family2.LensLike' f s a
maybe'type' = Data.ProtoLens.Field.field @"maybe'type'"
maybe'unit ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'unit" a) =>
  Lens.Family2.LensLike' f s a
maybe'unit = Data.ProtoLens.Field.field @"maybe'unit"
maybe'unitMultiplier ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'unitMultiplier" a) =>
  Lens.Family2.LensLike' f s a
maybe'unitMultiplier
  = Data.ProtoLens.Field.field @"maybe'unitMultiplier"
maybe'unitName ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'unitName" a) =>
  Lens.Family2.LensLike' f s a
maybe'unitName = Data.ProtoLens.Field.field @"maybe'unitName"
type' ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "type'" a) =>
  Lens.Family2.LensLike' f s a
type' = Data.ProtoLens.Field.field @"type'"
unit ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "unit" a) =>
  Lens.Family2.LensLike' f s a
unit = Data.ProtoLens.Field.field @"unit"
unitMultiplier ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "unitMultiplier" a) =>
  Lens.Family2.LensLike' f s a
unitMultiplier = Data.ProtoLens.Field.field @"unitMultiplier"
unitName ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "unitName" a) =>
  Lens.Family2.LensLike' f s a
unitName = Data.ProtoLens.Field.field @"unitName"
vec'categories ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'categories" a) =>
  Lens.Family2.LensLike' f s a
vec'categories = Data.ProtoLens.Field.field @"vec'categories"