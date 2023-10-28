{- This file was auto-generated from protos/perfetto/trace/ftrace/i2c.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Protos.Perfetto.Trace.Ftrace.I2c_Fields where
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
adapterNr ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "adapterNr" a) =>
  Lens.Family2.LensLike' f s a
adapterNr = Data.ProtoLens.Field.field @"adapterNr"
addr ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "addr" a) =>
  Lens.Family2.LensLike' f s a
addr = Data.ProtoLens.Field.field @"addr"
buf ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "buf" a) =>
  Lens.Family2.LensLike' f s a
buf = Data.ProtoLens.Field.field @"buf"
command ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "command" a) =>
  Lens.Family2.LensLike' f s a
command = Data.ProtoLens.Field.field @"command"
flags ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "flags" a) =>
  Lens.Family2.LensLike' f s a
flags = Data.ProtoLens.Field.field @"flags"
len ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "len" a) =>
  Lens.Family2.LensLike' f s a
len = Data.ProtoLens.Field.field @"len"
maybe'adapterNr ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'adapterNr" a) =>
  Lens.Family2.LensLike' f s a
maybe'adapterNr = Data.ProtoLens.Field.field @"maybe'adapterNr"
maybe'addr ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'addr" a) =>
  Lens.Family2.LensLike' f s a
maybe'addr = Data.ProtoLens.Field.field @"maybe'addr"
maybe'buf ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'buf" a) =>
  Lens.Family2.LensLike' f s a
maybe'buf = Data.ProtoLens.Field.field @"maybe'buf"
maybe'command ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'command" a) =>
  Lens.Family2.LensLike' f s a
maybe'command = Data.ProtoLens.Field.field @"maybe'command"
maybe'flags ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'flags" a) =>
  Lens.Family2.LensLike' f s a
maybe'flags = Data.ProtoLens.Field.field @"maybe'flags"
maybe'len ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'len" a) =>
  Lens.Family2.LensLike' f s a
maybe'len = Data.ProtoLens.Field.field @"maybe'len"
maybe'msgNr ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'msgNr" a) =>
  Lens.Family2.LensLike' f s a
maybe'msgNr = Data.ProtoLens.Field.field @"maybe'msgNr"
maybe'nrMsgs ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'nrMsgs" a) =>
  Lens.Family2.LensLike' f s a
maybe'nrMsgs = Data.ProtoLens.Field.field @"maybe'nrMsgs"
maybe'protocol ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'protocol" a) =>
  Lens.Family2.LensLike' f s a
maybe'protocol = Data.ProtoLens.Field.field @"maybe'protocol"
maybe'readWrite ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'readWrite" a) =>
  Lens.Family2.LensLike' f s a
maybe'readWrite = Data.ProtoLens.Field.field @"maybe'readWrite"
maybe'res ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'res" a) =>
  Lens.Family2.LensLike' f s a
maybe'res = Data.ProtoLens.Field.field @"maybe'res"
maybe'ret ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'ret" a) =>
  Lens.Family2.LensLike' f s a
maybe'ret = Data.ProtoLens.Field.field @"maybe'ret"
msgNr ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "msgNr" a) =>
  Lens.Family2.LensLike' f s a
msgNr = Data.ProtoLens.Field.field @"msgNr"
nrMsgs ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "nrMsgs" a) =>
  Lens.Family2.LensLike' f s a
nrMsgs = Data.ProtoLens.Field.field @"nrMsgs"
protocol ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "protocol" a) =>
  Lens.Family2.LensLike' f s a
protocol = Data.ProtoLens.Field.field @"protocol"
readWrite ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "readWrite" a) =>
  Lens.Family2.LensLike' f s a
readWrite = Data.ProtoLens.Field.field @"readWrite"
res ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "res" a) =>
  Lens.Family2.LensLike' f s a
res = Data.ProtoLens.Field.field @"res"
ret ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "ret" a) =>
  Lens.Family2.LensLike' f s a
ret = Data.ProtoLens.Field.field @"ret"