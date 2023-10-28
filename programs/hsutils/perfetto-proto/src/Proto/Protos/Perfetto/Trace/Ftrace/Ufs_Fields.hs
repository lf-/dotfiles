{- This file was auto-generated from protos/perfetto/trace/ftrace/ufs.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Protos.Perfetto.Trace.Ftrace.Ufs_Fields where
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
devName ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "devName" a) =>
  Lens.Family2.LensLike' f s a
devName = Data.ProtoLens.Field.field @"devName"
doorbell ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "doorbell" a) =>
  Lens.Family2.LensLike' f s a
doorbell = Data.ProtoLens.Field.field @"doorbell"
groupId ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "groupId" a) =>
  Lens.Family2.LensLike' f s a
groupId = Data.ProtoLens.Field.field @"groupId"
intr ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "intr" a) =>
  Lens.Family2.LensLike' f s a
intr = Data.ProtoLens.Field.field @"intr"
lba ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "lba" a) =>
  Lens.Family2.LensLike' f s a
lba = Data.ProtoLens.Field.field @"lba"
maybe'devName ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'devName" a) =>
  Lens.Family2.LensLike' f s a
maybe'devName = Data.ProtoLens.Field.field @"maybe'devName"
maybe'doorbell ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'doorbell" a) =>
  Lens.Family2.LensLike' f s a
maybe'doorbell = Data.ProtoLens.Field.field @"maybe'doorbell"
maybe'groupId ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'groupId" a) =>
  Lens.Family2.LensLike' f s a
maybe'groupId = Data.ProtoLens.Field.field @"maybe'groupId"
maybe'intr ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'intr" a) =>
  Lens.Family2.LensLike' f s a
maybe'intr = Data.ProtoLens.Field.field @"maybe'intr"
maybe'lba ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'lba" a) =>
  Lens.Family2.LensLike' f s a
maybe'lba = Data.ProtoLens.Field.field @"maybe'lba"
maybe'opcode ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'opcode" a) =>
  Lens.Family2.LensLike' f s a
maybe'opcode = Data.ProtoLens.Field.field @"maybe'opcode"
maybe'state ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'state" a) =>
  Lens.Family2.LensLike' f s a
maybe'state = Data.ProtoLens.Field.field @"maybe'state"
maybe'str ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'str" a) =>
  Lens.Family2.LensLike' f s a
maybe'str = Data.ProtoLens.Field.field @"maybe'str"
maybe'strT ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'strT" a) =>
  Lens.Family2.LensLike' f s a
maybe'strT = Data.ProtoLens.Field.field @"maybe'strT"
maybe'tag ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'tag" a) =>
  Lens.Family2.LensLike' f s a
maybe'tag = Data.ProtoLens.Field.field @"maybe'tag"
maybe'transferLen ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'transferLen" a) =>
  Lens.Family2.LensLike' f s a
maybe'transferLen = Data.ProtoLens.Field.field @"maybe'transferLen"
opcode ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "opcode" a) =>
  Lens.Family2.LensLike' f s a
opcode = Data.ProtoLens.Field.field @"opcode"
state ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "state" a) =>
  Lens.Family2.LensLike' f s a
state = Data.ProtoLens.Field.field @"state"
str ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "str" a) =>
  Lens.Family2.LensLike' f s a
str = Data.ProtoLens.Field.field @"str"
strT ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "strT" a) =>
  Lens.Family2.LensLike' f s a
strT = Data.ProtoLens.Field.field @"strT"
tag ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "tag" a) =>
  Lens.Family2.LensLike' f s a
tag = Data.ProtoLens.Field.field @"tag"
transferLen ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "transferLen" a) =>
  Lens.Family2.LensLike' f s a
transferLen = Data.ProtoLens.Field.field @"transferLen"