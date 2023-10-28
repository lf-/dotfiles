{- This file was auto-generated from protos/perfetto/trace/ftrace/cpuhp.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Protos.Perfetto.Trace.Ftrace.Cpuhp_Fields where
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
activeCpus ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "activeCpus" a) =>
  Lens.Family2.LensLike' f s a
activeCpus = Data.ProtoLens.Field.field @"activeCpus"
cpu ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "cpu" a) =>
  Lens.Family2.LensLike' f s a
cpu = Data.ProtoLens.Field.field @"cpu"
cpus ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "cpus" a) =>
  Lens.Family2.LensLike' f s a
cpus = Data.ProtoLens.Field.field @"cpus"
fun ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "fun" a) =>
  Lens.Family2.LensLike' f s a
fun = Data.ProtoLens.Field.field @"fun"
idx ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "idx" a) =>
  Lens.Family2.LensLike' f s a
idx = Data.ProtoLens.Field.field @"idx"
maybe'activeCpus ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'activeCpus" a) =>
  Lens.Family2.LensLike' f s a
maybe'activeCpus = Data.ProtoLens.Field.field @"maybe'activeCpus"
maybe'cpu ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'cpu" a) =>
  Lens.Family2.LensLike' f s a
maybe'cpu = Data.ProtoLens.Field.field @"maybe'cpu"
maybe'cpus ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'cpus" a) =>
  Lens.Family2.LensLike' f s a
maybe'cpus = Data.ProtoLens.Field.field @"maybe'cpus"
maybe'fun ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'fun" a) =>
  Lens.Family2.LensLike' f s a
maybe'fun = Data.ProtoLens.Field.field @"maybe'fun"
maybe'idx ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'idx" a) =>
  Lens.Family2.LensLike' f s a
maybe'idx = Data.ProtoLens.Field.field @"maybe'idx"
maybe'pause ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'pause" a) =>
  Lens.Family2.LensLike' f s a
maybe'pause = Data.ProtoLens.Field.field @"maybe'pause"
maybe'ret ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'ret" a) =>
  Lens.Family2.LensLike' f s a
maybe'ret = Data.ProtoLens.Field.field @"maybe'ret"
maybe'state ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'state" a) =>
  Lens.Family2.LensLike' f s a
maybe'state = Data.ProtoLens.Field.field @"maybe'state"
maybe'target ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'target" a) =>
  Lens.Family2.LensLike' f s a
maybe'target = Data.ProtoLens.Field.field @"maybe'target"
maybe'time ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'time" a) =>
  Lens.Family2.LensLike' f s a
maybe'time = Data.ProtoLens.Field.field @"maybe'time"
pause ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "pause" a) =>
  Lens.Family2.LensLike' f s a
pause = Data.ProtoLens.Field.field @"pause"
ret ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "ret" a) =>
  Lens.Family2.LensLike' f s a
ret = Data.ProtoLens.Field.field @"ret"
state ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "state" a) =>
  Lens.Family2.LensLike' f s a
state = Data.ProtoLens.Field.field @"state"
target ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "target" a) =>
  Lens.Family2.LensLike' f s a
target = Data.ProtoLens.Field.field @"target"
time ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "time" a) =>
  Lens.Family2.LensLike' f s a
time = Data.ProtoLens.Field.field @"time"