{- This file was auto-generated from protos/perfetto/trace/ftrace/cma.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Protos.Perfetto.Trace.Ftrace.Cma_Fields where
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
align ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "align" a) =>
  Lens.Family2.LensLike' f s a
align = Data.ProtoLens.Field.field @"align"
count ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "count" a) =>
  Lens.Family2.LensLike' f s a
count = Data.ProtoLens.Field.field @"count"
errIso ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "errIso" a) =>
  Lens.Family2.LensLike' f s a
errIso = Data.ProtoLens.Field.field @"errIso"
errMig ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "errMig" a) =>
  Lens.Family2.LensLike' f s a
errMig = Data.ProtoLens.Field.field @"errMig"
errTest ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "errTest" a) =>
  Lens.Family2.LensLike' f s a
errTest = Data.ProtoLens.Field.field @"errTest"
maybe'align ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'align" a) =>
  Lens.Family2.LensLike' f s a
maybe'align = Data.ProtoLens.Field.field @"maybe'align"
maybe'count ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'count" a) =>
  Lens.Family2.LensLike' f s a
maybe'count = Data.ProtoLens.Field.field @"maybe'count"
maybe'errIso ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'errIso" a) =>
  Lens.Family2.LensLike' f s a
maybe'errIso = Data.ProtoLens.Field.field @"maybe'errIso"
maybe'errMig ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'errMig" a) =>
  Lens.Family2.LensLike' f s a
maybe'errMig = Data.ProtoLens.Field.field @"maybe'errMig"
maybe'errTest ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'errTest" a) =>
  Lens.Family2.LensLike' f s a
maybe'errTest = Data.ProtoLens.Field.field @"maybe'errTest"
maybe'name ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'name" a) =>
  Lens.Family2.LensLike' f s a
maybe'name = Data.ProtoLens.Field.field @"maybe'name"
maybe'nrMapped ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'nrMapped" a) =>
  Lens.Family2.LensLike' f s a
maybe'nrMapped = Data.ProtoLens.Field.field @"maybe'nrMapped"
maybe'nrMigrated ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'nrMigrated" a) =>
  Lens.Family2.LensLike' f s a
maybe'nrMigrated = Data.ProtoLens.Field.field @"maybe'nrMigrated"
maybe'nrReclaimed ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'nrReclaimed" a) =>
  Lens.Family2.LensLike' f s a
maybe'nrReclaimed = Data.ProtoLens.Field.field @"maybe'nrReclaimed"
maybe'pfn ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'pfn" a) =>
  Lens.Family2.LensLike' f s a
maybe'pfn = Data.ProtoLens.Field.field @"maybe'pfn"
name ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "name" a) =>
  Lens.Family2.LensLike' f s a
name = Data.ProtoLens.Field.field @"name"
nrMapped ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "nrMapped" a) =>
  Lens.Family2.LensLike' f s a
nrMapped = Data.ProtoLens.Field.field @"nrMapped"
nrMigrated ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "nrMigrated" a) =>
  Lens.Family2.LensLike' f s a
nrMigrated = Data.ProtoLens.Field.field @"nrMigrated"
nrReclaimed ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "nrReclaimed" a) =>
  Lens.Family2.LensLike' f s a
nrReclaimed = Data.ProtoLens.Field.field @"nrReclaimed"
pfn ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "pfn" a) =>
  Lens.Family2.LensLike' f s a
pfn = Data.ProtoLens.Field.field @"pfn"