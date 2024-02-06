{- This file was auto-generated from protos/perfetto/trace/android/android_log.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Protos.Perfetto.Trace.Android.AndroidLog_Fields where
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
import qualified Proto.Protos.Perfetto.Common.AndroidLogConstants
args ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "args" a) =>
  Lens.Family2.LensLike' f s a
args = Data.ProtoLens.Field.field @"args"
events ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "events" a) =>
  Lens.Family2.LensLike' f s a
events = Data.ProtoLens.Field.field @"events"
floatValue ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "floatValue" a) =>
  Lens.Family2.LensLike' f s a
floatValue = Data.ProtoLens.Field.field @"floatValue"
intValue ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "intValue" a) =>
  Lens.Family2.LensLike' f s a
intValue = Data.ProtoLens.Field.field @"intValue"
logId ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "logId" a) =>
  Lens.Family2.LensLike' f s a
logId = Data.ProtoLens.Field.field @"logId"
maybe'floatValue ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'floatValue" a) =>
  Lens.Family2.LensLike' f s a
maybe'floatValue = Data.ProtoLens.Field.field @"maybe'floatValue"
maybe'intValue ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'intValue" a) =>
  Lens.Family2.LensLike' f s a
maybe'intValue = Data.ProtoLens.Field.field @"maybe'intValue"
maybe'logId ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'logId" a) =>
  Lens.Family2.LensLike' f s a
maybe'logId = Data.ProtoLens.Field.field @"maybe'logId"
maybe'message ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'message" a) =>
  Lens.Family2.LensLike' f s a
maybe'message = Data.ProtoLens.Field.field @"maybe'message"
maybe'name ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'name" a) =>
  Lens.Family2.LensLike' f s a
maybe'name = Data.ProtoLens.Field.field @"maybe'name"
maybe'numFailed ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'numFailed" a) =>
  Lens.Family2.LensLike' f s a
maybe'numFailed = Data.ProtoLens.Field.field @"maybe'numFailed"
maybe'numSkipped ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'numSkipped" a) =>
  Lens.Family2.LensLike' f s a
maybe'numSkipped = Data.ProtoLens.Field.field @"maybe'numSkipped"
maybe'numTotal ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'numTotal" a) =>
  Lens.Family2.LensLike' f s a
maybe'numTotal = Data.ProtoLens.Field.field @"maybe'numTotal"
maybe'pid ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'pid" a) =>
  Lens.Family2.LensLike' f s a
maybe'pid = Data.ProtoLens.Field.field @"maybe'pid"
maybe'prio ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'prio" a) =>
  Lens.Family2.LensLike' f s a
maybe'prio = Data.ProtoLens.Field.field @"maybe'prio"
maybe'stats ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'stats" a) =>
  Lens.Family2.LensLike' f s a
maybe'stats = Data.ProtoLens.Field.field @"maybe'stats"
maybe'stringValue ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'stringValue" a) =>
  Lens.Family2.LensLike' f s a
maybe'stringValue = Data.ProtoLens.Field.field @"maybe'stringValue"
maybe'tag ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'tag" a) =>
  Lens.Family2.LensLike' f s a
maybe'tag = Data.ProtoLens.Field.field @"maybe'tag"
maybe'tid ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'tid" a) =>
  Lens.Family2.LensLike' f s a
maybe'tid = Data.ProtoLens.Field.field @"maybe'tid"
maybe'timestamp ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'timestamp" a) =>
  Lens.Family2.LensLike' f s a
maybe'timestamp = Data.ProtoLens.Field.field @"maybe'timestamp"
maybe'uid ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'uid" a) =>
  Lens.Family2.LensLike' f s a
maybe'uid = Data.ProtoLens.Field.field @"maybe'uid"
maybe'value ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'value" a) =>
  Lens.Family2.LensLike' f s a
maybe'value = Data.ProtoLens.Field.field @"maybe'value"
message ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "message" a) =>
  Lens.Family2.LensLike' f s a
message = Data.ProtoLens.Field.field @"message"
name ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "name" a) =>
  Lens.Family2.LensLike' f s a
name = Data.ProtoLens.Field.field @"name"
numFailed ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "numFailed" a) =>
  Lens.Family2.LensLike' f s a
numFailed = Data.ProtoLens.Field.field @"numFailed"
numSkipped ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "numSkipped" a) =>
  Lens.Family2.LensLike' f s a
numSkipped = Data.ProtoLens.Field.field @"numSkipped"
numTotal ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "numTotal" a) =>
  Lens.Family2.LensLike' f s a
numTotal = Data.ProtoLens.Field.field @"numTotal"
pid ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "pid" a) =>
  Lens.Family2.LensLike' f s a
pid = Data.ProtoLens.Field.field @"pid"
prio ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "prio" a) =>
  Lens.Family2.LensLike' f s a
prio = Data.ProtoLens.Field.field @"prio"
stats ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "stats" a) =>
  Lens.Family2.LensLike' f s a
stats = Data.ProtoLens.Field.field @"stats"
stringValue ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "stringValue" a) =>
  Lens.Family2.LensLike' f s a
stringValue = Data.ProtoLens.Field.field @"stringValue"
tag ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "tag" a) =>
  Lens.Family2.LensLike' f s a
tag = Data.ProtoLens.Field.field @"tag"
tid ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "tid" a) =>
  Lens.Family2.LensLike' f s a
tid = Data.ProtoLens.Field.field @"tid"
timestamp ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "timestamp" a) =>
  Lens.Family2.LensLike' f s a
timestamp = Data.ProtoLens.Field.field @"timestamp"
uid ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "uid" a) =>
  Lens.Family2.LensLike' f s a
uid = Data.ProtoLens.Field.field @"uid"
vec'args ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'args" a) =>
  Lens.Family2.LensLike' f s a
vec'args = Data.ProtoLens.Field.field @"vec'args"
vec'events ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'events" a) =>
  Lens.Family2.LensLike' f s a
vec'events = Data.ProtoLens.Field.field @"vec'events"