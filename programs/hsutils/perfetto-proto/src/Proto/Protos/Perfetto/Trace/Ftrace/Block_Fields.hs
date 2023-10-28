{- This file was auto-generated from protos/perfetto/trace/ftrace/block.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Protos.Perfetto.Trace.Ftrace.Block_Fields where
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
bytes ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "bytes" a) =>
  Lens.Family2.LensLike' f s a
bytes = Data.ProtoLens.Field.field @"bytes"
cmd ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "cmd" a) =>
  Lens.Family2.LensLike' f s a
cmd = Data.ProtoLens.Field.field @"cmd"
comm ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "comm" a) =>
  Lens.Family2.LensLike' f s a
comm = Data.ProtoLens.Field.field @"comm"
dev ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "dev" a) =>
  Lens.Family2.LensLike' f s a
dev = Data.ProtoLens.Field.field @"dev"
error ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "error" a) =>
  Lens.Family2.LensLike' f s a
error = Data.ProtoLens.Field.field @"error"
errors ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "errors" a) =>
  Lens.Family2.LensLike' f s a
errors = Data.ProtoLens.Field.field @"errors"
maybe'bytes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'bytes" a) =>
  Lens.Family2.LensLike' f s a
maybe'bytes = Data.ProtoLens.Field.field @"maybe'bytes"
maybe'cmd ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'cmd" a) =>
  Lens.Family2.LensLike' f s a
maybe'cmd = Data.ProtoLens.Field.field @"maybe'cmd"
maybe'comm ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'comm" a) =>
  Lens.Family2.LensLike' f s a
maybe'comm = Data.ProtoLens.Field.field @"maybe'comm"
maybe'dev ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'dev" a) =>
  Lens.Family2.LensLike' f s a
maybe'dev = Data.ProtoLens.Field.field @"maybe'dev"
maybe'error ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'error" a) =>
  Lens.Family2.LensLike' f s a
maybe'error = Data.ProtoLens.Field.field @"maybe'error"
maybe'errors ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'errors" a) =>
  Lens.Family2.LensLike' f s a
maybe'errors = Data.ProtoLens.Field.field @"maybe'errors"
maybe'newSector ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'newSector" a) =>
  Lens.Family2.LensLike' f s a
maybe'newSector = Data.ProtoLens.Field.field @"maybe'newSector"
maybe'nrBios ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'nrBios" a) =>
  Lens.Family2.LensLike' f s a
maybe'nrBios = Data.ProtoLens.Field.field @"maybe'nrBios"
maybe'nrRq ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'nrRq" a) =>
  Lens.Family2.LensLike' f s a
maybe'nrRq = Data.ProtoLens.Field.field @"maybe'nrRq"
maybe'nrSector ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'nrSector" a) =>
  Lens.Family2.LensLike' f s a
maybe'nrSector = Data.ProtoLens.Field.field @"maybe'nrSector"
maybe'oldDev ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'oldDev" a) =>
  Lens.Family2.LensLike' f s a
maybe'oldDev = Data.ProtoLens.Field.field @"maybe'oldDev"
maybe'oldSector ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'oldSector" a) =>
  Lens.Family2.LensLike' f s a
maybe'oldSector = Data.ProtoLens.Field.field @"maybe'oldSector"
maybe'rwbs ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'rwbs" a) =>
  Lens.Family2.LensLike' f s a
maybe'rwbs = Data.ProtoLens.Field.field @"maybe'rwbs"
maybe'sector ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'sector" a) =>
  Lens.Family2.LensLike' f s a
maybe'sector = Data.ProtoLens.Field.field @"maybe'sector"
maybe'size ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'size" a) =>
  Lens.Family2.LensLike' f s a
maybe'size = Data.ProtoLens.Field.field @"maybe'size"
newSector ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "newSector" a) =>
  Lens.Family2.LensLike' f s a
newSector = Data.ProtoLens.Field.field @"newSector"
nrBios ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "nrBios" a) =>
  Lens.Family2.LensLike' f s a
nrBios = Data.ProtoLens.Field.field @"nrBios"
nrRq ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "nrRq" a) =>
  Lens.Family2.LensLike' f s a
nrRq = Data.ProtoLens.Field.field @"nrRq"
nrSector ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "nrSector" a) =>
  Lens.Family2.LensLike' f s a
nrSector = Data.ProtoLens.Field.field @"nrSector"
oldDev ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "oldDev" a) =>
  Lens.Family2.LensLike' f s a
oldDev = Data.ProtoLens.Field.field @"oldDev"
oldSector ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "oldSector" a) =>
  Lens.Family2.LensLike' f s a
oldSector = Data.ProtoLens.Field.field @"oldSector"
rwbs ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "rwbs" a) =>
  Lens.Family2.LensLike' f s a
rwbs = Data.ProtoLens.Field.field @"rwbs"
sector ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "sector" a) =>
  Lens.Family2.LensLike' f s a
sector = Data.ProtoLens.Field.field @"sector"
size ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "size" a) =>
  Lens.Family2.LensLike' f s a
size = Data.ProtoLens.Field.field @"size"