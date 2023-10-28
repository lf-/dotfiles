{- This file was auto-generated from protos/perfetto/trace/ftrace/power.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Protos.Perfetto.Trace.Ftrace.Power_Fields where
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
action ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "action" a) =>
  Lens.Family2.LensLike' f s a
action = Data.ProtoLens.Field.field @"action"
cpuId ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "cpuId" a) =>
  Lens.Family2.LensLike' f s a
cpuId = Data.ProtoLens.Field.field @"cpuId"
gpuId ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "gpuId" a) =>
  Lens.Family2.LensLike' f s a
gpuId = Data.ProtoLens.Field.field @"gpuId"
maxFreq ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "maxFreq" a) =>
  Lens.Family2.LensLike' f s a
maxFreq = Data.ProtoLens.Field.field @"maxFreq"
maybe'action ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'action" a) =>
  Lens.Family2.LensLike' f s a
maybe'action = Data.ProtoLens.Field.field @"maybe'action"
maybe'cpuId ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'cpuId" a) =>
  Lens.Family2.LensLike' f s a
maybe'cpuId = Data.ProtoLens.Field.field @"maybe'cpuId"
maybe'gpuId ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'gpuId" a) =>
  Lens.Family2.LensLike' f s a
maybe'gpuId = Data.ProtoLens.Field.field @"maybe'gpuId"
maybe'maxFreq ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'maxFreq" a) =>
  Lens.Family2.LensLike' f s a
maybe'maxFreq = Data.ProtoLens.Field.field @"maybe'maxFreq"
maybe'minFreq ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'minFreq" a) =>
  Lens.Family2.LensLike' f s a
maybe'minFreq = Data.ProtoLens.Field.field @"maybe'minFreq"
maybe'name ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'name" a) =>
  Lens.Family2.LensLike' f s a
maybe'name = Data.ProtoLens.Field.field @"maybe'name"
maybe'start ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'start" a) =>
  Lens.Family2.LensLike' f s a
maybe'start = Data.ProtoLens.Field.field @"maybe'start"
maybe'state ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'state" a) =>
  Lens.Family2.LensLike' f s a
maybe'state = Data.ProtoLens.Field.field @"maybe'state"
maybe'val ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'val" a) =>
  Lens.Family2.LensLike' f s a
maybe'val = Data.ProtoLens.Field.field @"maybe'val"
minFreq ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "minFreq" a) =>
  Lens.Family2.LensLike' f s a
minFreq = Data.ProtoLens.Field.field @"minFreq"
name ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "name" a) =>
  Lens.Family2.LensLike' f s a
name = Data.ProtoLens.Field.field @"name"
start ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "start" a) =>
  Lens.Family2.LensLike' f s a
start = Data.ProtoLens.Field.field @"start"
state ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "state" a) =>
  Lens.Family2.LensLike' f s a
state = Data.ProtoLens.Field.field @"state"
val ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "val" a) =>
  Lens.Family2.LensLike' f s a
val = Data.ProtoLens.Field.field @"val"