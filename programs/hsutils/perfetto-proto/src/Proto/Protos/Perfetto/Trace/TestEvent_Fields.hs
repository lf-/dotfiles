{- This file was auto-generated from protos/perfetto/trace/test_event.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Protos.Perfetto.Trace.TestEvent_Fields where
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
import qualified Proto.Protos.Perfetto.Trace.TrackEvent.DebugAnnotation
counter ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "counter" a) =>
  Lens.Family2.LensLike' f s a
counter = Data.ProtoLens.Field.field @"counter"
debugAnnotations ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "debugAnnotations" a) =>
  Lens.Family2.LensLike' f s a
debugAnnotations = Data.ProtoLens.Field.field @"debugAnnotations"
isLast ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "isLast" a) =>
  Lens.Family2.LensLike' f s a
isLast = Data.ProtoLens.Field.field @"isLast"
maybe'counter ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'counter" a) =>
  Lens.Family2.LensLike' f s a
maybe'counter = Data.ProtoLens.Field.field @"maybe'counter"
maybe'isLast ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'isLast" a) =>
  Lens.Family2.LensLike' f s a
maybe'isLast = Data.ProtoLens.Field.field @"maybe'isLast"
maybe'payload ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'payload" a) =>
  Lens.Family2.LensLike' f s a
maybe'payload = Data.ProtoLens.Field.field @"maybe'payload"
maybe'remainingNestingDepth ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'remainingNestingDepth" a) =>
  Lens.Family2.LensLike' f s a
maybe'remainingNestingDepth
  = Data.ProtoLens.Field.field @"maybe'remainingNestingDepth"
maybe'seqValue ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'seqValue" a) =>
  Lens.Family2.LensLike' f s a
maybe'seqValue = Data.ProtoLens.Field.field @"maybe'seqValue"
maybe'singleInt ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'singleInt" a) =>
  Lens.Family2.LensLike' f s a
maybe'singleInt = Data.ProtoLens.Field.field @"maybe'singleInt"
maybe'singleString ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'singleString" a) =>
  Lens.Family2.LensLike' f s a
maybe'singleString
  = Data.ProtoLens.Field.field @"maybe'singleString"
maybe'str ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'str" a) =>
  Lens.Family2.LensLike' f s a
maybe'str = Data.ProtoLens.Field.field @"maybe'str"
nested ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "nested" a) =>
  Lens.Family2.LensLike' f s a
nested = Data.ProtoLens.Field.field @"nested"
payload ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "payload" a) =>
  Lens.Family2.LensLike' f s a
payload = Data.ProtoLens.Field.field @"payload"
remainingNestingDepth ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "remainingNestingDepth" a) =>
  Lens.Family2.LensLike' f s a
remainingNestingDepth
  = Data.ProtoLens.Field.field @"remainingNestingDepth"
repeatedInts ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "repeatedInts" a) =>
  Lens.Family2.LensLike' f s a
repeatedInts = Data.ProtoLens.Field.field @"repeatedInts"
seqValue ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "seqValue" a) =>
  Lens.Family2.LensLike' f s a
seqValue = Data.ProtoLens.Field.field @"seqValue"
singleInt ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "singleInt" a) =>
  Lens.Family2.LensLike' f s a
singleInt = Data.ProtoLens.Field.field @"singleInt"
singleString ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "singleString" a) =>
  Lens.Family2.LensLike' f s a
singleString = Data.ProtoLens.Field.field @"singleString"
str ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "str" a) =>
  Lens.Family2.LensLike' f s a
str = Data.ProtoLens.Field.field @"str"
vec'debugAnnotations ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'debugAnnotations" a) =>
  Lens.Family2.LensLike' f s a
vec'debugAnnotations
  = Data.ProtoLens.Field.field @"vec'debugAnnotations"
vec'nested ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'nested" a) =>
  Lens.Family2.LensLike' f s a
vec'nested = Data.ProtoLens.Field.field @"vec'nested"
vec'repeatedInts ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'repeatedInts" a) =>
  Lens.Family2.LensLike' f s a
vec'repeatedInts = Data.ProtoLens.Field.field @"vec'repeatedInts"
vec'str ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "vec'str" a) =>
  Lens.Family2.LensLike' f s a
vec'str = Data.ProtoLens.Field.field @"vec'str"