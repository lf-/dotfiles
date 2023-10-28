{- This file was auto-generated from protos/perfetto/trace/ftrace/binder.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Protos.Perfetto.Trace.Ftrace.Binder_Fields where
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
code ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "code" a) =>
  Lens.Family2.LensLike' f s a
code = Data.ProtoLens.Field.field @"code"
dataSize ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "dataSize" a) =>
  Lens.Family2.LensLike' f s a
dataSize = Data.ProtoLens.Field.field @"dataSize"
debugId ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "debugId" a) =>
  Lens.Family2.LensLike' f s a
debugId = Data.ProtoLens.Field.field @"debugId"
desiredPrio ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "desiredPrio" a) =>
  Lens.Family2.LensLike' f s a
desiredPrio = Data.ProtoLens.Field.field @"desiredPrio"
extraBuffersSize ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "extraBuffersSize" a) =>
  Lens.Family2.LensLike' f s a
extraBuffersSize = Data.ProtoLens.Field.field @"extraBuffersSize"
flags ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "flags" a) =>
  Lens.Family2.LensLike' f s a
flags = Data.ProtoLens.Field.field @"flags"
maybe'cmd ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'cmd" a) =>
  Lens.Family2.LensLike' f s a
maybe'cmd = Data.ProtoLens.Field.field @"maybe'cmd"
maybe'code ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'code" a) =>
  Lens.Family2.LensLike' f s a
maybe'code = Data.ProtoLens.Field.field @"maybe'code"
maybe'dataSize ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'dataSize" a) =>
  Lens.Family2.LensLike' f s a
maybe'dataSize = Data.ProtoLens.Field.field @"maybe'dataSize"
maybe'debugId ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'debugId" a) =>
  Lens.Family2.LensLike' f s a
maybe'debugId = Data.ProtoLens.Field.field @"maybe'debugId"
maybe'desiredPrio ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'desiredPrio" a) =>
  Lens.Family2.LensLike' f s a
maybe'desiredPrio = Data.ProtoLens.Field.field @"maybe'desiredPrio"
maybe'extraBuffersSize ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'extraBuffersSize" a) =>
  Lens.Family2.LensLike' f s a
maybe'extraBuffersSize
  = Data.ProtoLens.Field.field @"maybe'extraBuffersSize"
maybe'flags ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'flags" a) =>
  Lens.Family2.LensLike' f s a
maybe'flags = Data.ProtoLens.Field.field @"maybe'flags"
maybe'newPrio ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'newPrio" a) =>
  Lens.Family2.LensLike' f s a
maybe'newPrio = Data.ProtoLens.Field.field @"maybe'newPrio"
maybe'offsetsSize ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'offsetsSize" a) =>
  Lens.Family2.LensLike' f s a
maybe'offsetsSize = Data.ProtoLens.Field.field @"maybe'offsetsSize"
maybe'oldPrio ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'oldPrio" a) =>
  Lens.Family2.LensLike' f s a
maybe'oldPrio = Data.ProtoLens.Field.field @"maybe'oldPrio"
maybe'proc' ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'proc'" a) =>
  Lens.Family2.LensLike' f s a
maybe'proc' = Data.ProtoLens.Field.field @"maybe'proc'"
maybe'reply ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'reply" a) =>
  Lens.Family2.LensLike' f s a
maybe'reply = Data.ProtoLens.Field.field @"maybe'reply"
maybe'tag ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'tag" a) =>
  Lens.Family2.LensLike' f s a
maybe'tag = Data.ProtoLens.Field.field @"maybe'tag"
maybe'targetNode ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'targetNode" a) =>
  Lens.Family2.LensLike' f s a
maybe'targetNode = Data.ProtoLens.Field.field @"maybe'targetNode"
maybe'thread ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'thread" a) =>
  Lens.Family2.LensLike' f s a
maybe'thread = Data.ProtoLens.Field.field @"maybe'thread"
maybe'toProc ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'toProc" a) =>
  Lens.Family2.LensLike' f s a
maybe'toProc = Data.ProtoLens.Field.field @"maybe'toProc"
maybe'toThread ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'toThread" a) =>
  Lens.Family2.LensLike' f s a
maybe'toThread = Data.ProtoLens.Field.field @"maybe'toThread"
newPrio ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "newPrio" a) =>
  Lens.Family2.LensLike' f s a
newPrio = Data.ProtoLens.Field.field @"newPrio"
offsetsSize ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "offsetsSize" a) =>
  Lens.Family2.LensLike' f s a
offsetsSize = Data.ProtoLens.Field.field @"offsetsSize"
oldPrio ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "oldPrio" a) =>
  Lens.Family2.LensLike' f s a
oldPrio = Data.ProtoLens.Field.field @"oldPrio"
proc' ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "proc'" a) =>
  Lens.Family2.LensLike' f s a
proc' = Data.ProtoLens.Field.field @"proc'"
reply ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "reply" a) =>
  Lens.Family2.LensLike' f s a
reply = Data.ProtoLens.Field.field @"reply"
tag ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "tag" a) =>
  Lens.Family2.LensLike' f s a
tag = Data.ProtoLens.Field.field @"tag"
targetNode ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "targetNode" a) =>
  Lens.Family2.LensLike' f s a
targetNode = Data.ProtoLens.Field.field @"targetNode"
thread ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "thread" a) =>
  Lens.Family2.LensLike' f s a
thread = Data.ProtoLens.Field.field @"thread"
toProc ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "toProc" a) =>
  Lens.Family2.LensLike' f s a
toProc = Data.ProtoLens.Field.field @"toProc"
toThread ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "toThread" a) =>
  Lens.Family2.LensLike' f s a
toThread = Data.ProtoLens.Field.field @"toThread"