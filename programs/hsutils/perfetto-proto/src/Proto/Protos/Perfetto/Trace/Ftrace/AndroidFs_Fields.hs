{- This file was auto-generated from protos/perfetto/trace/ftrace/android_fs.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Protos.Perfetto.Trace.Ftrace.AndroidFs_Fields where
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
cmdline ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "cmdline" a) =>
  Lens.Family2.LensLike' f s a
cmdline = Data.ProtoLens.Field.field @"cmdline"
iSize ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "iSize" a) =>
  Lens.Family2.LensLike' f s a
iSize = Data.ProtoLens.Field.field @"iSize"
ino ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "ino" a) =>
  Lens.Family2.LensLike' f s a
ino = Data.ProtoLens.Field.field @"ino"
maybe'bytes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'bytes" a) =>
  Lens.Family2.LensLike' f s a
maybe'bytes = Data.ProtoLens.Field.field @"maybe'bytes"
maybe'cmdline ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'cmdline" a) =>
  Lens.Family2.LensLike' f s a
maybe'cmdline = Data.ProtoLens.Field.field @"maybe'cmdline"
maybe'iSize ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'iSize" a) =>
  Lens.Family2.LensLike' f s a
maybe'iSize = Data.ProtoLens.Field.field @"maybe'iSize"
maybe'ino ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'ino" a) =>
  Lens.Family2.LensLike' f s a
maybe'ino = Data.ProtoLens.Field.field @"maybe'ino"
maybe'offset ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'offset" a) =>
  Lens.Family2.LensLike' f s a
maybe'offset = Data.ProtoLens.Field.field @"maybe'offset"
maybe'pathbuf ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'pathbuf" a) =>
  Lens.Family2.LensLike' f s a
maybe'pathbuf = Data.ProtoLens.Field.field @"maybe'pathbuf"
maybe'pid ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'pid" a) =>
  Lens.Family2.LensLike' f s a
maybe'pid = Data.ProtoLens.Field.field @"maybe'pid"
offset ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "offset" a) =>
  Lens.Family2.LensLike' f s a
offset = Data.ProtoLens.Field.field @"offset"
pathbuf ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "pathbuf" a) =>
  Lens.Family2.LensLike' f s a
pathbuf = Data.ProtoLens.Field.field @"pathbuf"
pid ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "pid" a) =>
  Lens.Family2.LensLike' f s a
pid = Data.ProtoLens.Field.field @"pid"