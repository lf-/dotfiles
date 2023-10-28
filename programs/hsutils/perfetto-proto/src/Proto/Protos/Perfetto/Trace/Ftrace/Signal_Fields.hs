{- This file was auto-generated from protos/perfetto/trace/ftrace/signal.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Protos.Perfetto.Trace.Ftrace.Signal_Fields where
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
code ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "code" a) =>
  Lens.Family2.LensLike' f s a
code = Data.ProtoLens.Field.field @"code"
comm ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "comm" a) =>
  Lens.Family2.LensLike' f s a
comm = Data.ProtoLens.Field.field @"comm"
group ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "group" a) =>
  Lens.Family2.LensLike' f s a
group = Data.ProtoLens.Field.field @"group"
maybe'code ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'code" a) =>
  Lens.Family2.LensLike' f s a
maybe'code = Data.ProtoLens.Field.field @"maybe'code"
maybe'comm ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'comm" a) =>
  Lens.Family2.LensLike' f s a
maybe'comm = Data.ProtoLens.Field.field @"maybe'comm"
maybe'group ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'group" a) =>
  Lens.Family2.LensLike' f s a
maybe'group = Data.ProtoLens.Field.field @"maybe'group"
maybe'pid ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'pid" a) =>
  Lens.Family2.LensLike' f s a
maybe'pid = Data.ProtoLens.Field.field @"maybe'pid"
maybe'result ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'result" a) =>
  Lens.Family2.LensLike' f s a
maybe'result = Data.ProtoLens.Field.field @"maybe'result"
maybe'saFlags ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'saFlags" a) =>
  Lens.Family2.LensLike' f s a
maybe'saFlags = Data.ProtoLens.Field.field @"maybe'saFlags"
maybe'sig ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'sig" a) =>
  Lens.Family2.LensLike' f s a
maybe'sig = Data.ProtoLens.Field.field @"maybe'sig"
pid ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "pid" a) =>
  Lens.Family2.LensLike' f s a
pid = Data.ProtoLens.Field.field @"pid"
result ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "result" a) =>
  Lens.Family2.LensLike' f s a
result = Data.ProtoLens.Field.field @"result"
saFlags ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "saFlags" a) =>
  Lens.Family2.LensLike' f s a
saFlags = Data.ProtoLens.Field.field @"saFlags"
sig ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "sig" a) =>
  Lens.Family2.LensLike' f s a
sig = Data.ProtoLens.Field.field @"sig"