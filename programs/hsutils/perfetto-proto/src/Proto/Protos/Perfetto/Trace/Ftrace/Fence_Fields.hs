{- This file was auto-generated from protos/perfetto/trace/ftrace/fence.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Protos.Perfetto.Trace.Ftrace.Fence_Fields where
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
context ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "context" a) =>
  Lens.Family2.LensLike' f s a
context = Data.ProtoLens.Field.field @"context"
driver ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "driver" a) =>
  Lens.Family2.LensLike' f s a
driver = Data.ProtoLens.Field.field @"driver"
maybe'context ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'context" a) =>
  Lens.Family2.LensLike' f s a
maybe'context = Data.ProtoLens.Field.field @"maybe'context"
maybe'driver ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'driver" a) =>
  Lens.Family2.LensLike' f s a
maybe'driver = Data.ProtoLens.Field.field @"maybe'driver"
maybe'seqno ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'seqno" a) =>
  Lens.Family2.LensLike' f s a
maybe'seqno = Data.ProtoLens.Field.field @"maybe'seqno"
maybe'timeline ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'timeline" a) =>
  Lens.Family2.LensLike' f s a
maybe'timeline = Data.ProtoLens.Field.field @"maybe'timeline"
seqno ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "seqno" a) =>
  Lens.Family2.LensLike' f s a
seqno = Data.ProtoLens.Field.field @"seqno"
timeline ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "timeline" a) =>
  Lens.Family2.LensLike' f s a
timeline = Data.ProtoLens.Field.field @"timeline"