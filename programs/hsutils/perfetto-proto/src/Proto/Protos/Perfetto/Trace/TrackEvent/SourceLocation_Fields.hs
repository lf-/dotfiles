{- This file was auto-generated from protos/perfetto/trace/track_event/source_location.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Protos.Perfetto.Trace.TrackEvent.SourceLocation_Fields where
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
fileName ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "fileName" a) =>
  Lens.Family2.LensLike' f s a
fileName = Data.ProtoLens.Field.field @"fileName"
functionName ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "functionName" a) =>
  Lens.Family2.LensLike' f s a
functionName = Data.ProtoLens.Field.field @"functionName"
iid ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "iid" a) =>
  Lens.Family2.LensLike' f s a
iid = Data.ProtoLens.Field.field @"iid"
lineNumber ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "lineNumber" a) =>
  Lens.Family2.LensLike' f s a
lineNumber = Data.ProtoLens.Field.field @"lineNumber"
mappingId ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "mappingId" a) =>
  Lens.Family2.LensLike' f s a
mappingId = Data.ProtoLens.Field.field @"mappingId"
maybe'fileName ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'fileName" a) =>
  Lens.Family2.LensLike' f s a
maybe'fileName = Data.ProtoLens.Field.field @"maybe'fileName"
maybe'functionName ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'functionName" a) =>
  Lens.Family2.LensLike' f s a
maybe'functionName
  = Data.ProtoLens.Field.field @"maybe'functionName"
maybe'iid ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'iid" a) =>
  Lens.Family2.LensLike' f s a
maybe'iid = Data.ProtoLens.Field.field @"maybe'iid"
maybe'lineNumber ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'lineNumber" a) =>
  Lens.Family2.LensLike' f s a
maybe'lineNumber = Data.ProtoLens.Field.field @"maybe'lineNumber"
maybe'mappingId ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'mappingId" a) =>
  Lens.Family2.LensLike' f s a
maybe'mappingId = Data.ProtoLens.Field.field @"maybe'mappingId"
maybe'relPc ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'relPc" a) =>
  Lens.Family2.LensLike' f s a
maybe'relPc = Data.ProtoLens.Field.field @"maybe'relPc"
relPc ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "relPc" a) =>
  Lens.Family2.LensLike' f s a
relPc = Data.ProtoLens.Field.field @"relPc"