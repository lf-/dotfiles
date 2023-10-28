{- This file was auto-generated from protos/perfetto/trace/ftrace/v4l2.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Protos.Perfetto.Trace.Ftrace.V4l2_Fields where
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
bytesused ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "bytesused" a) =>
  Lens.Family2.LensLike' f s a
bytesused = Data.ProtoLens.Field.field @"bytesused"
field ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "field" a) =>
  Lens.Family2.LensLike' f s a
field = Data.ProtoLens.Field.field @"field"
flags ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "flags" a) =>
  Lens.Family2.LensLike' f s a
flags = Data.ProtoLens.Field.field @"flags"
index ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "index" a) =>
  Lens.Family2.LensLike' f s a
index = Data.ProtoLens.Field.field @"index"
maybe'bytesused ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'bytesused" a) =>
  Lens.Family2.LensLike' f s a
maybe'bytesused = Data.ProtoLens.Field.field @"maybe'bytesused"
maybe'field ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'field" a) =>
  Lens.Family2.LensLike' f s a
maybe'field = Data.ProtoLens.Field.field @"maybe'field"
maybe'flags ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'flags" a) =>
  Lens.Family2.LensLike' f s a
maybe'flags = Data.ProtoLens.Field.field @"maybe'flags"
maybe'index ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'index" a) =>
  Lens.Family2.LensLike' f s a
maybe'index = Data.ProtoLens.Field.field @"maybe'index"
maybe'minor ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'minor" a) =>
  Lens.Family2.LensLike' f s a
maybe'minor = Data.ProtoLens.Field.field @"maybe'minor"
maybe'sequence ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'sequence" a) =>
  Lens.Family2.LensLike' f s a
maybe'sequence = Data.ProtoLens.Field.field @"maybe'sequence"
maybe'timecodeFlags ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'timecodeFlags" a) =>
  Lens.Family2.LensLike' f s a
maybe'timecodeFlags
  = Data.ProtoLens.Field.field @"maybe'timecodeFlags"
maybe'timecodeFrames ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'timecodeFrames" a) =>
  Lens.Family2.LensLike' f s a
maybe'timecodeFrames
  = Data.ProtoLens.Field.field @"maybe'timecodeFrames"
maybe'timecodeHours ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'timecodeHours" a) =>
  Lens.Family2.LensLike' f s a
maybe'timecodeHours
  = Data.ProtoLens.Field.field @"maybe'timecodeHours"
maybe'timecodeMinutes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'timecodeMinutes" a) =>
  Lens.Family2.LensLike' f s a
maybe'timecodeMinutes
  = Data.ProtoLens.Field.field @"maybe'timecodeMinutes"
maybe'timecodeSeconds ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'timecodeSeconds" a) =>
  Lens.Family2.LensLike' f s a
maybe'timecodeSeconds
  = Data.ProtoLens.Field.field @"maybe'timecodeSeconds"
maybe'timecodeType ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'timecodeType" a) =>
  Lens.Family2.LensLike' f s a
maybe'timecodeType
  = Data.ProtoLens.Field.field @"maybe'timecodeType"
maybe'timecodeUserbits0 ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'timecodeUserbits0" a) =>
  Lens.Family2.LensLike' f s a
maybe'timecodeUserbits0
  = Data.ProtoLens.Field.field @"maybe'timecodeUserbits0"
maybe'timecodeUserbits1 ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'timecodeUserbits1" a) =>
  Lens.Family2.LensLike' f s a
maybe'timecodeUserbits1
  = Data.ProtoLens.Field.field @"maybe'timecodeUserbits1"
maybe'timecodeUserbits2 ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'timecodeUserbits2" a) =>
  Lens.Family2.LensLike' f s a
maybe'timecodeUserbits2
  = Data.ProtoLens.Field.field @"maybe'timecodeUserbits2"
maybe'timecodeUserbits3 ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'timecodeUserbits3" a) =>
  Lens.Family2.LensLike' f s a
maybe'timecodeUserbits3
  = Data.ProtoLens.Field.field @"maybe'timecodeUserbits3"
maybe'timestamp ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'timestamp" a) =>
  Lens.Family2.LensLike' f s a
maybe'timestamp = Data.ProtoLens.Field.field @"maybe'timestamp"
maybe'type' ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'type'" a) =>
  Lens.Family2.LensLike' f s a
maybe'type' = Data.ProtoLens.Field.field @"maybe'type'"
minor ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "minor" a) =>
  Lens.Family2.LensLike' f s a
minor = Data.ProtoLens.Field.field @"minor"
sequence ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "sequence" a) =>
  Lens.Family2.LensLike' f s a
sequence = Data.ProtoLens.Field.field @"sequence"
timecodeFlags ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "timecodeFlags" a) =>
  Lens.Family2.LensLike' f s a
timecodeFlags = Data.ProtoLens.Field.field @"timecodeFlags"
timecodeFrames ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "timecodeFrames" a) =>
  Lens.Family2.LensLike' f s a
timecodeFrames = Data.ProtoLens.Field.field @"timecodeFrames"
timecodeHours ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "timecodeHours" a) =>
  Lens.Family2.LensLike' f s a
timecodeHours = Data.ProtoLens.Field.field @"timecodeHours"
timecodeMinutes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "timecodeMinutes" a) =>
  Lens.Family2.LensLike' f s a
timecodeMinutes = Data.ProtoLens.Field.field @"timecodeMinutes"
timecodeSeconds ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "timecodeSeconds" a) =>
  Lens.Family2.LensLike' f s a
timecodeSeconds = Data.ProtoLens.Field.field @"timecodeSeconds"
timecodeType ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "timecodeType" a) =>
  Lens.Family2.LensLike' f s a
timecodeType = Data.ProtoLens.Field.field @"timecodeType"
timecodeUserbits0 ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "timecodeUserbits0" a) =>
  Lens.Family2.LensLike' f s a
timecodeUserbits0 = Data.ProtoLens.Field.field @"timecodeUserbits0"
timecodeUserbits1 ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "timecodeUserbits1" a) =>
  Lens.Family2.LensLike' f s a
timecodeUserbits1 = Data.ProtoLens.Field.field @"timecodeUserbits1"
timecodeUserbits2 ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "timecodeUserbits2" a) =>
  Lens.Family2.LensLike' f s a
timecodeUserbits2 = Data.ProtoLens.Field.field @"timecodeUserbits2"
timecodeUserbits3 ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "timecodeUserbits3" a) =>
  Lens.Family2.LensLike' f s a
timecodeUserbits3 = Data.ProtoLens.Field.field @"timecodeUserbits3"
timestamp ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "timestamp" a) =>
  Lens.Family2.LensLike' f s a
timestamp = Data.ProtoLens.Field.field @"timestamp"
type' ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "type'" a) =>
  Lens.Family2.LensLike' f s a
type' = Data.ProtoLens.Field.field @"type'"