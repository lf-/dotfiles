{- This file was auto-generated from protos/perfetto/trace/ftrace/trusty.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Protos.Perfetto.Trace.Ftrace.Trusty_Fields where
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
arg1 ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "arg1" a) =>
  Lens.Family2.LensLike' f s a
arg1 = Data.ProtoLens.Field.field @"arg1"
arg2 ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "arg2" a) =>
  Lens.Family2.LensLike' f s a
arg2 = Data.ProtoLens.Field.field @"arg2"
arg3 ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "arg3" a) =>
  Lens.Family2.LensLike' f s a
arg3 = Data.ProtoLens.Field.field @"arg3"
bufId ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "bufId" a) =>
  Lens.Family2.LensLike' f s a
bufId = Data.ProtoLens.Field.field @"bufId"
chan ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "chan" a) =>
  Lens.Family2.LensLike' f s a
chan = Data.ProtoLens.Field.field @"chan"
err ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "err" a) =>
  Lens.Family2.LensLike' f s a
err = Data.ProtoLens.Field.field @"err"
eventId ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "eventId" a) =>
  Lens.Family2.LensLike' f s a
eventId = Data.ProtoLens.Field.field @"eventId"
handle ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "handle" a) =>
  Lens.Family2.LensLike' f s a
handle = Data.ProtoLens.Field.field @"handle"
id ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "id" a) =>
  Lens.Family2.LensLike' f s a
id = Data.ProtoLens.Field.field @"id"
irq ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "irq" a) =>
  Lens.Family2.LensLike' f s a
irq = Data.ProtoLens.Field.field @"irq"
kindShm ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "kindShm" a) =>
  Lens.Family2.LensLike' f s a
kindShm = Data.ProtoLens.Field.field @"kindShm"
len ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "len" a) =>
  Lens.Family2.LensLike' f s a
len = Data.ProtoLens.Field.field @"len"
lenOrErr ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "lenOrErr" a) =>
  Lens.Family2.LensLike' f s a
lenOrErr = Data.ProtoLens.Field.field @"lenOrErr"
lend ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "lend" a) =>
  Lens.Family2.LensLike' f s a
lend = Data.ProtoLens.Field.field @"lend"
maybe'arg1 ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'arg1" a) =>
  Lens.Family2.LensLike' f s a
maybe'arg1 = Data.ProtoLens.Field.field @"maybe'arg1"
maybe'arg2 ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'arg2" a) =>
  Lens.Family2.LensLike' f s a
maybe'arg2 = Data.ProtoLens.Field.field @"maybe'arg2"
maybe'arg3 ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'arg3" a) =>
  Lens.Family2.LensLike' f s a
maybe'arg3 = Data.ProtoLens.Field.field @"maybe'arg3"
maybe'bufId ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'bufId" a) =>
  Lens.Family2.LensLike' f s a
maybe'bufId = Data.ProtoLens.Field.field @"maybe'bufId"
maybe'chan ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'chan" a) =>
  Lens.Family2.LensLike' f s a
maybe'chan = Data.ProtoLens.Field.field @"maybe'chan"
maybe'err ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'err" a) =>
  Lens.Family2.LensLike' f s a
maybe'err = Data.ProtoLens.Field.field @"maybe'err"
maybe'eventId ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'eventId" a) =>
  Lens.Family2.LensLike' f s a
maybe'eventId = Data.ProtoLens.Field.field @"maybe'eventId"
maybe'handle ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'handle" a) =>
  Lens.Family2.LensLike' f s a
maybe'handle = Data.ProtoLens.Field.field @"maybe'handle"
maybe'id ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'id" a) =>
  Lens.Family2.LensLike' f s a
maybe'id = Data.ProtoLens.Field.field @"maybe'id"
maybe'irq ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'irq" a) =>
  Lens.Family2.LensLike' f s a
maybe'irq = Data.ProtoLens.Field.field @"maybe'irq"
maybe'kindShm ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'kindShm" a) =>
  Lens.Family2.LensLike' f s a
maybe'kindShm = Data.ProtoLens.Field.field @"maybe'kindShm"
maybe'len ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'len" a) =>
  Lens.Family2.LensLike' f s a
maybe'len = Data.ProtoLens.Field.field @"maybe'len"
maybe'lenOrErr ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'lenOrErr" a) =>
  Lens.Family2.LensLike' f s a
maybe'lenOrErr = Data.ProtoLens.Field.field @"maybe'lenOrErr"
maybe'lend ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'lend" a) =>
  Lens.Family2.LensLike' f s a
maybe'lend = Data.ProtoLens.Field.field @"maybe'lend"
maybe'nents ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'nents" a) =>
  Lens.Family2.LensLike' f s a
maybe'nents = Data.ProtoLens.Field.field @"maybe'nents"
maybe'pollMask ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'pollMask" a) =>
  Lens.Family2.LensLike' f s a
maybe'pollMask = Data.ProtoLens.Field.field @"maybe'pollMask"
maybe'port ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'port" a) =>
  Lens.Family2.LensLike' f s a
maybe'port = Data.ProtoLens.Field.field @"maybe'port"
maybe'r0 ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'r0" a) =>
  Lens.Family2.LensLike' f s a
maybe'r0 = Data.ProtoLens.Field.field @"maybe'r0"
maybe'r1 ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'r1" a) =>
  Lens.Family2.LensLike' f s a
maybe'r1 = Data.ProtoLens.Field.field @"maybe'r1"
maybe'r2 ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'r2" a) =>
  Lens.Family2.LensLike' f s a
maybe'r2 = Data.ProtoLens.Field.field @"maybe'r2"
maybe'r3 ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'r3" a) =>
  Lens.Family2.LensLike' f s a
maybe'r3 = Data.ProtoLens.Field.field @"maybe'r3"
maybe'ret ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'ret" a) =>
  Lens.Family2.LensLike' f s a
maybe'ret = Data.ProtoLens.Field.field @"maybe'ret"
maybe'shmCnt ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'shmCnt" a) =>
  Lens.Family2.LensLike' f s a
maybe'shmCnt = Data.ProtoLens.Field.field @"maybe'shmCnt"
maybe'srvName ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'srvName" a) =>
  Lens.Family2.LensLike' f s a
maybe'srvName = Data.ProtoLens.Field.field @"maybe'srvName"
maybe'state ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'state" a) =>
  Lens.Family2.LensLike' f s a
maybe'state = Data.ProtoLens.Field.field @"maybe'state"
nents ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "nents" a) =>
  Lens.Family2.LensLike' f s a
nents = Data.ProtoLens.Field.field @"nents"
pollMask ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "pollMask" a) =>
  Lens.Family2.LensLike' f s a
pollMask = Data.ProtoLens.Field.field @"pollMask"
port ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "port" a) =>
  Lens.Family2.LensLike' f s a
port = Data.ProtoLens.Field.field @"port"
r0 ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "r0" a) =>
  Lens.Family2.LensLike' f s a
r0 = Data.ProtoLens.Field.field @"r0"
r1 ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "r1" a) =>
  Lens.Family2.LensLike' f s a
r1 = Data.ProtoLens.Field.field @"r1"
r2 ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "r2" a) =>
  Lens.Family2.LensLike' f s a
r2 = Data.ProtoLens.Field.field @"r2"
r3 ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "r3" a) =>
  Lens.Family2.LensLike' f s a
r3 = Data.ProtoLens.Field.field @"r3"
ret ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "ret" a) =>
  Lens.Family2.LensLike' f s a
ret = Data.ProtoLens.Field.field @"ret"
shmCnt ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "shmCnt" a) =>
  Lens.Family2.LensLike' f s a
shmCnt = Data.ProtoLens.Field.field @"shmCnt"
srvName ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "srvName" a) =>
  Lens.Family2.LensLike' f s a
srvName = Data.ProtoLens.Field.field @"srvName"
state ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "state" a) =>
  Lens.Family2.LensLike' f s a
state = Data.ProtoLens.Field.field @"state"