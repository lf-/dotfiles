{- This file was auto-generated from protos/perfetto/trace/ftrace/ftrace.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Protos.Perfetto.Trace.Ftrace.Ftrace_Fields where
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
buf ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "buf" a) =>
  Lens.Family2.LensLike' f s a
buf = Data.ProtoLens.Field.field @"buf"
calltime ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "calltime" a) =>
  Lens.Family2.LensLike' f s a
calltime = Data.ProtoLens.Field.field @"calltime"
depth ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "depth" a) =>
  Lens.Family2.LensLike' f s a
depth = Data.ProtoLens.Field.field @"depth"
func ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "func" a) =>
  Lens.Family2.LensLike' f s a
func = Data.ProtoLens.Field.field @"func"
ip ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "ip" a) =>
  Lens.Family2.LensLike' f s a
ip = Data.ProtoLens.Field.field @"ip"
maybe'buf ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'buf" a) =>
  Lens.Family2.LensLike' f s a
maybe'buf = Data.ProtoLens.Field.field @"maybe'buf"
maybe'calltime ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'calltime" a) =>
  Lens.Family2.LensLike' f s a
maybe'calltime = Data.ProtoLens.Field.field @"maybe'calltime"
maybe'depth ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'depth" a) =>
  Lens.Family2.LensLike' f s a
maybe'depth = Data.ProtoLens.Field.field @"maybe'depth"
maybe'func ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'func" a) =>
  Lens.Family2.LensLike' f s a
maybe'func = Data.ProtoLens.Field.field @"maybe'func"
maybe'ip ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'ip" a) =>
  Lens.Family2.LensLike' f s a
maybe'ip = Data.ProtoLens.Field.field @"maybe'ip"
maybe'overrun ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'overrun" a) =>
  Lens.Family2.LensLike' f s a
maybe'overrun = Data.ProtoLens.Field.field @"maybe'overrun"
maybe'rettime ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'rettime" a) =>
  Lens.Family2.LensLike' f s a
maybe'rettime = Data.ProtoLens.Field.field @"maybe'rettime"
overrun ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "overrun" a) =>
  Lens.Family2.LensLike' f s a
overrun = Data.ProtoLens.Field.field @"overrun"
rettime ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "rettime" a) =>
  Lens.Family2.LensLike' f s a
rettime = Data.ProtoLens.Field.field @"rettime"