{- This file was auto-generated from protos/perfetto/trace/track_event/log_message.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Protos.Perfetto.Trace.TrackEvent.LogMessage_Fields where
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
body ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "body" a) =>
  Lens.Family2.LensLike' f s a
body = Data.ProtoLens.Field.field @"body"
bodyIid ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "bodyIid" a) =>
  Lens.Family2.LensLike' f s a
bodyIid = Data.ProtoLens.Field.field @"bodyIid"
iid ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "iid" a) =>
  Lens.Family2.LensLike' f s a
iid = Data.ProtoLens.Field.field @"iid"
maybe'body ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'body" a) =>
  Lens.Family2.LensLike' f s a
maybe'body = Data.ProtoLens.Field.field @"maybe'body"
maybe'bodyIid ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'bodyIid" a) =>
  Lens.Family2.LensLike' f s a
maybe'bodyIid = Data.ProtoLens.Field.field @"maybe'bodyIid"
maybe'iid ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'iid" a) =>
  Lens.Family2.LensLike' f s a
maybe'iid = Data.ProtoLens.Field.field @"maybe'iid"
maybe'prio ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'prio" a) =>
  Lens.Family2.LensLike' f s a
maybe'prio = Data.ProtoLens.Field.field @"maybe'prio"
maybe'sourceLocationIid ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'sourceLocationIid" a) =>
  Lens.Family2.LensLike' f s a
maybe'sourceLocationIid
  = Data.ProtoLens.Field.field @"maybe'sourceLocationIid"
prio ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "prio" a) =>
  Lens.Family2.LensLike' f s a
prio = Data.ProtoLens.Field.field @"prio"
sourceLocationIid ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "sourceLocationIid" a) =>
  Lens.Family2.LensLike' f s a
sourceLocationIid = Data.ProtoLens.Field.field @"sourceLocationIid"