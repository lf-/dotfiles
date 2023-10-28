{- This file was auto-generated from protos/perfetto/trace/profiling/profile_common.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Protos.Perfetto.Trace.Profiling.ProfileCommon_Fields where
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
address ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "address" a) =>
  Lens.Family2.LensLike' f s a
address = Data.ProtoLens.Field.field @"address"
addressSymbols ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "addressSymbols" a) =>
  Lens.Family2.LensLike' f s a
addressSymbols = Data.ProtoLens.Field.field @"addressSymbols"
buildId ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "buildId" a) =>
  Lens.Family2.LensLike' f s a
buildId = Data.ProtoLens.Field.field @"buildId"
end ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "end" a) =>
  Lens.Family2.LensLike' f s a
end = Data.ProtoLens.Field.field @"end"
exactOffset ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "exactOffset" a) =>
  Lens.Family2.LensLike' f s a
exactOffset = Data.ProtoLens.Field.field @"exactOffset"
fileNameId ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "fileNameId" a) =>
  Lens.Family2.LensLike' f s a
fileNameId = Data.ProtoLens.Field.field @"fileNameId"
frameIds ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "frameIds" a) =>
  Lens.Family2.LensLike' f s a
frameIds = Data.ProtoLens.Field.field @"frameIds"
frameIid ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "frameIid" a) =>
  Lens.Family2.LensLike' f s a
frameIid = Data.ProtoLens.Field.field @"frameIid"
functionName ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "functionName" a) =>
  Lens.Family2.LensLike' f s a
functionName = Data.ProtoLens.Field.field @"functionName"
functionNameId ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "functionNameId" a) =>
  Lens.Family2.LensLike' f s a
functionNameId = Data.ProtoLens.Field.field @"functionNameId"
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
lines ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "lines" a) =>
  Lens.Family2.LensLike' f s a
lines = Data.ProtoLens.Field.field @"lines"
loadBias ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "loadBias" a) =>
  Lens.Family2.LensLike' f s a
loadBias = Data.ProtoLens.Field.field @"loadBias"
mappingId ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "mappingId" a) =>
  Lens.Family2.LensLike' f s a
mappingId = Data.ProtoLens.Field.field @"mappingId"
maybe'address ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'address" a) =>
  Lens.Family2.LensLike' f s a
maybe'address = Data.ProtoLens.Field.field @"maybe'address"
maybe'buildId ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'buildId" a) =>
  Lens.Family2.LensLike' f s a
maybe'buildId = Data.ProtoLens.Field.field @"maybe'buildId"
maybe'end ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'end" a) =>
  Lens.Family2.LensLike' f s a
maybe'end = Data.ProtoLens.Field.field @"maybe'end"
maybe'exactOffset ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'exactOffset" a) =>
  Lens.Family2.LensLike' f s a
maybe'exactOffset = Data.ProtoLens.Field.field @"maybe'exactOffset"
maybe'frameIid ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'frameIid" a) =>
  Lens.Family2.LensLike' f s a
maybe'frameIid = Data.ProtoLens.Field.field @"maybe'frameIid"
maybe'functionName ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'functionName" a) =>
  Lens.Family2.LensLike' f s a
maybe'functionName
  = Data.ProtoLens.Field.field @"maybe'functionName"
maybe'functionNameId ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'functionNameId" a) =>
  Lens.Family2.LensLike' f s a
maybe'functionNameId
  = Data.ProtoLens.Field.field @"maybe'functionNameId"
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
maybe'loadBias ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'loadBias" a) =>
  Lens.Family2.LensLike' f s a
maybe'loadBias = Data.ProtoLens.Field.field @"maybe'loadBias"
maybe'mappingId ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'mappingId" a) =>
  Lens.Family2.LensLike' f s a
maybe'mappingId = Data.ProtoLens.Field.field @"maybe'mappingId"
maybe'path ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'path" a) =>
  Lens.Family2.LensLike' f s a
maybe'path = Data.ProtoLens.Field.field @"maybe'path"
maybe'relPc ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'relPc" a) =>
  Lens.Family2.LensLike' f s a
maybe'relPc = Data.ProtoLens.Field.field @"maybe'relPc"
maybe'sourceFileName ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'sourceFileName" a) =>
  Lens.Family2.LensLike' f s a
maybe'sourceFileName
  = Data.ProtoLens.Field.field @"maybe'sourceFileName"
maybe'start ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'start" a) =>
  Lens.Family2.LensLike' f s a
maybe'start = Data.ProtoLens.Field.field @"maybe'start"
maybe'startOffset ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'startOffset" a) =>
  Lens.Family2.LensLike' f s a
maybe'startOffset = Data.ProtoLens.Field.field @"maybe'startOffset"
maybe'str ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'str" a) =>
  Lens.Family2.LensLike' f s a
maybe'str = Data.ProtoLens.Field.field @"maybe'str"
path ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "path" a) =>
  Lens.Family2.LensLike' f s a
path = Data.ProtoLens.Field.field @"path"
pathStringIds ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "pathStringIds" a) =>
  Lens.Family2.LensLike' f s a
pathStringIds = Data.ProtoLens.Field.field @"pathStringIds"
relPc ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "relPc" a) =>
  Lens.Family2.LensLike' f s a
relPc = Data.ProtoLens.Field.field @"relPc"
sourceFileName ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "sourceFileName" a) =>
  Lens.Family2.LensLike' f s a
sourceFileName = Data.ProtoLens.Field.field @"sourceFileName"
start ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "start" a) =>
  Lens.Family2.LensLike' f s a
start = Data.ProtoLens.Field.field @"start"
startOffset ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "startOffset" a) =>
  Lens.Family2.LensLike' f s a
startOffset = Data.ProtoLens.Field.field @"startOffset"
str ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "str" a) =>
  Lens.Family2.LensLike' f s a
str = Data.ProtoLens.Field.field @"str"
vec'addressSymbols ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'addressSymbols" a) =>
  Lens.Family2.LensLike' f s a
vec'addressSymbols
  = Data.ProtoLens.Field.field @"vec'addressSymbols"
vec'fileNameId ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'fileNameId" a) =>
  Lens.Family2.LensLike' f s a
vec'fileNameId = Data.ProtoLens.Field.field @"vec'fileNameId"
vec'frameIds ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'frameIds" a) =>
  Lens.Family2.LensLike' f s a
vec'frameIds = Data.ProtoLens.Field.field @"vec'frameIds"
vec'functionNameId ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'functionNameId" a) =>
  Lens.Family2.LensLike' f s a
vec'functionNameId
  = Data.ProtoLens.Field.field @"vec'functionNameId"
vec'lineNumber ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'lineNumber" a) =>
  Lens.Family2.LensLike' f s a
vec'lineNumber = Data.ProtoLens.Field.field @"vec'lineNumber"
vec'lines ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'lines" a) =>
  Lens.Family2.LensLike' f s a
vec'lines = Data.ProtoLens.Field.field @"vec'lines"
vec'pathStringIds ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'pathStringIds" a) =>
  Lens.Family2.LensLike' f s a
vec'pathStringIds = Data.ProtoLens.Field.field @"vec'pathStringIds"