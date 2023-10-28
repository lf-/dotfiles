{- This file was auto-generated from protos/perfetto/trace/ftrace/filemap.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Protos.Perfetto.Trace.Ftrace.Filemap_Fields where
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
iIno ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "iIno" a) =>
  Lens.Family2.LensLike' f s a
iIno = Data.ProtoLens.Field.field @"iIno"
index ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "index" a) =>
  Lens.Family2.LensLike' f s a
index = Data.ProtoLens.Field.field @"index"
maybe'iIno ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'iIno" a) =>
  Lens.Family2.LensLike' f s a
maybe'iIno = Data.ProtoLens.Field.field @"maybe'iIno"
maybe'index ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'index" a) =>
  Lens.Family2.LensLike' f s a
maybe'index = Data.ProtoLens.Field.field @"maybe'index"
maybe'page ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'page" a) =>
  Lens.Family2.LensLike' f s a
maybe'page = Data.ProtoLens.Field.field @"maybe'page"
maybe'pfn ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'pfn" a) =>
  Lens.Family2.LensLike' f s a
maybe'pfn = Data.ProtoLens.Field.field @"maybe'pfn"
maybe'sDev ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'sDev" a) =>
  Lens.Family2.LensLike' f s a
maybe'sDev = Data.ProtoLens.Field.field @"maybe'sDev"
page ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "page" a) =>
  Lens.Family2.LensLike' f s a
page = Data.ProtoLens.Field.field @"page"
pfn ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "pfn" a) =>
  Lens.Family2.LensLike' f s a
pfn = Data.ProtoLens.Field.field @"pfn"
sDev ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "sDev" a) =>
  Lens.Family2.LensLike' f s a
sDev = Data.ProtoLens.Field.field @"sDev"