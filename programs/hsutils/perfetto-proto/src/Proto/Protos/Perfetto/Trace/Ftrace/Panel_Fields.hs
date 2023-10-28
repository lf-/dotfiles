{- This file was auto-generated from protos/perfetto/trace/ftrace/panel.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Protos.Perfetto.Trace.Ftrace.Panel_Fields where
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
cmd ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "cmd" a) =>
  Lens.Family2.LensLike' f s a
cmd = Data.ProtoLens.Field.field @"cmd"
header ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "header" a) =>
  Lens.Family2.LensLike' f s a
header = Data.ProtoLens.Field.field @"header"
last ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "last" a) =>
  Lens.Family2.LensLike' f s a
last = Data.ProtoLens.Field.field @"last"
maybe'cmd ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'cmd" a) =>
  Lens.Family2.LensLike' f s a
maybe'cmd = Data.ProtoLens.Field.field @"maybe'cmd"
maybe'header ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'header" a) =>
  Lens.Family2.LensLike' f s a
maybe'header = Data.ProtoLens.Field.field @"maybe'header"
maybe'last ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'last" a) =>
  Lens.Family2.LensLike' f s a
maybe'last = Data.ProtoLens.Field.field @"maybe'last"
maybe'payload ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'payload" a) =>
  Lens.Family2.LensLike' f s a
maybe'payload = Data.ProtoLens.Field.field @"maybe'payload"
maybe'rxBuf ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'rxBuf" a) =>
  Lens.Family2.LensLike' f s a
maybe'rxBuf = Data.ProtoLens.Field.field @"maybe'rxBuf"
maybe'txBuf ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'txBuf" a) =>
  Lens.Family2.LensLike' f s a
maybe'txBuf = Data.ProtoLens.Field.field @"maybe'txBuf"
maybe'type' ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'type'" a) =>
  Lens.Family2.LensLike' f s a
maybe'type' = Data.ProtoLens.Field.field @"maybe'type'"
payload ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "payload" a) =>
  Lens.Family2.LensLike' f s a
payload = Data.ProtoLens.Field.field @"payload"
rxBuf ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "rxBuf" a) =>
  Lens.Family2.LensLike' f s a
rxBuf = Data.ProtoLens.Field.field @"rxBuf"
txBuf ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "txBuf" a) =>
  Lens.Family2.LensLike' f s a
txBuf = Data.ProtoLens.Field.field @"txBuf"
type' ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "type'" a) =>
  Lens.Family2.LensLike' f s a
type' = Data.ProtoLens.Field.field @"type'"