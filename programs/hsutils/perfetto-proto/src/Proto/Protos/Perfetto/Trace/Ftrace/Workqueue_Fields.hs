{- This file was auto-generated from protos/perfetto/trace/ftrace/workqueue.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Protos.Perfetto.Trace.Ftrace.Workqueue_Fields where
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
cpu ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "cpu" a) =>
  Lens.Family2.LensLike' f s a
cpu = Data.ProtoLens.Field.field @"cpu"
function ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "function" a) =>
  Lens.Family2.LensLike' f s a
function = Data.ProtoLens.Field.field @"function"
maybe'cpu ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'cpu" a) =>
  Lens.Family2.LensLike' f s a
maybe'cpu = Data.ProtoLens.Field.field @"maybe'cpu"
maybe'function ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'function" a) =>
  Lens.Family2.LensLike' f s a
maybe'function = Data.ProtoLens.Field.field @"maybe'function"
maybe'reqCpu ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'reqCpu" a) =>
  Lens.Family2.LensLike' f s a
maybe'reqCpu = Data.ProtoLens.Field.field @"maybe'reqCpu"
maybe'work ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'work" a) =>
  Lens.Family2.LensLike' f s a
maybe'work = Data.ProtoLens.Field.field @"maybe'work"
maybe'workqueue ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'workqueue" a) =>
  Lens.Family2.LensLike' f s a
maybe'workqueue = Data.ProtoLens.Field.field @"maybe'workqueue"
reqCpu ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "reqCpu" a) =>
  Lens.Family2.LensLike' f s a
reqCpu = Data.ProtoLens.Field.field @"reqCpu"
work ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "work" a) =>
  Lens.Family2.LensLike' f s a
work = Data.ProtoLens.Field.field @"work"
workqueue ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "workqueue" a) =>
  Lens.Family2.LensLike' f s a
workqueue = Data.ProtoLens.Field.field @"workqueue"