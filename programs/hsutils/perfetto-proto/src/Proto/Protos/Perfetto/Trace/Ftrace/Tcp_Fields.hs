{- This file was auto-generated from protos/perfetto/trace/ftrace/tcp.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Protos.Perfetto.Trace.Ftrace.Tcp_Fields where
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
daddr ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "daddr" a) =>
  Lens.Family2.LensLike' f s a
daddr = Data.ProtoLens.Field.field @"daddr"
dport ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "dport" a) =>
  Lens.Family2.LensLike' f s a
dport = Data.ProtoLens.Field.field @"dport"
maybe'daddr ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'daddr" a) =>
  Lens.Family2.LensLike' f s a
maybe'daddr = Data.ProtoLens.Field.field @"maybe'daddr"
maybe'dport ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'dport" a) =>
  Lens.Family2.LensLike' f s a
maybe'dport = Data.ProtoLens.Field.field @"maybe'dport"
maybe'saddr ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'saddr" a) =>
  Lens.Family2.LensLike' f s a
maybe'saddr = Data.ProtoLens.Field.field @"maybe'saddr"
maybe'skaddr ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'skaddr" a) =>
  Lens.Family2.LensLike' f s a
maybe'skaddr = Data.ProtoLens.Field.field @"maybe'skaddr"
maybe'skbaddr ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'skbaddr" a) =>
  Lens.Family2.LensLike' f s a
maybe'skbaddr = Data.ProtoLens.Field.field @"maybe'skbaddr"
maybe'sport ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'sport" a) =>
  Lens.Family2.LensLike' f s a
maybe'sport = Data.ProtoLens.Field.field @"maybe'sport"
maybe'state ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'state" a) =>
  Lens.Family2.LensLike' f s a
maybe'state = Data.ProtoLens.Field.field @"maybe'state"
saddr ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "saddr" a) =>
  Lens.Family2.LensLike' f s a
saddr = Data.ProtoLens.Field.field @"saddr"
skaddr ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "skaddr" a) =>
  Lens.Family2.LensLike' f s a
skaddr = Data.ProtoLens.Field.field @"skaddr"
skbaddr ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "skbaddr" a) =>
  Lens.Family2.LensLike' f s a
skbaddr = Data.ProtoLens.Field.field @"skbaddr"
sport ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "sport" a) =>
  Lens.Family2.LensLike' f s a
sport = Data.ProtoLens.Field.field @"sport"
state ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "state" a) =>
  Lens.Family2.LensLike' f s a
state = Data.ProtoLens.Field.field @"state"