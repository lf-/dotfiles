{- This file was auto-generated from protos/perfetto/trace/ftrace/task.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Protos.Perfetto.Trace.Ftrace.Task_Fields where
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
cloneFlags ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "cloneFlags" a) =>
  Lens.Family2.LensLike' f s a
cloneFlags = Data.ProtoLens.Field.field @"cloneFlags"
comm ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "comm" a) =>
  Lens.Family2.LensLike' f s a
comm = Data.ProtoLens.Field.field @"comm"
maybe'cloneFlags ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'cloneFlags" a) =>
  Lens.Family2.LensLike' f s a
maybe'cloneFlags = Data.ProtoLens.Field.field @"maybe'cloneFlags"
maybe'comm ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'comm" a) =>
  Lens.Family2.LensLike' f s a
maybe'comm = Data.ProtoLens.Field.field @"maybe'comm"
maybe'newcomm ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'newcomm" a) =>
  Lens.Family2.LensLike' f s a
maybe'newcomm = Data.ProtoLens.Field.field @"maybe'newcomm"
maybe'oldcomm ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'oldcomm" a) =>
  Lens.Family2.LensLike' f s a
maybe'oldcomm = Data.ProtoLens.Field.field @"maybe'oldcomm"
maybe'oomScoreAdj ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'oomScoreAdj" a) =>
  Lens.Family2.LensLike' f s a
maybe'oomScoreAdj = Data.ProtoLens.Field.field @"maybe'oomScoreAdj"
maybe'pid ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'pid" a) =>
  Lens.Family2.LensLike' f s a
maybe'pid = Data.ProtoLens.Field.field @"maybe'pid"
newcomm ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "newcomm" a) =>
  Lens.Family2.LensLike' f s a
newcomm = Data.ProtoLens.Field.field @"newcomm"
oldcomm ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "oldcomm" a) =>
  Lens.Family2.LensLike' f s a
oldcomm = Data.ProtoLens.Field.field @"oldcomm"
oomScoreAdj ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "oomScoreAdj" a) =>
  Lens.Family2.LensLike' f s a
oomScoreAdj = Data.ProtoLens.Field.field @"oomScoreAdj"
pid ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "pid" a) =>
  Lens.Family2.LensLike' f s a
pid = Data.ProtoLens.Field.field @"pid"