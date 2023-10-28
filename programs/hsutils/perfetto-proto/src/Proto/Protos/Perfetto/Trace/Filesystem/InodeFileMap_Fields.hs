{- This file was auto-generated from protos/perfetto/trace/filesystem/inode_file_map.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Protos.Perfetto.Trace.Filesystem.InodeFileMap_Fields where
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
blockDeviceId ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "blockDeviceId" a) =>
  Lens.Family2.LensLike' f s a
blockDeviceId = Data.ProtoLens.Field.field @"blockDeviceId"
entries ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "entries" a) =>
  Lens.Family2.LensLike' f s a
entries = Data.ProtoLens.Field.field @"entries"
inodeNumber ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "inodeNumber" a) =>
  Lens.Family2.LensLike' f s a
inodeNumber = Data.ProtoLens.Field.field @"inodeNumber"
maybe'blockDeviceId ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'blockDeviceId" a) =>
  Lens.Family2.LensLike' f s a
maybe'blockDeviceId
  = Data.ProtoLens.Field.field @"maybe'blockDeviceId"
maybe'inodeNumber ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'inodeNumber" a) =>
  Lens.Family2.LensLike' f s a
maybe'inodeNumber = Data.ProtoLens.Field.field @"maybe'inodeNumber"
maybe'type' ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'type'" a) =>
  Lens.Family2.LensLike' f s a
maybe'type' = Data.ProtoLens.Field.field @"maybe'type'"
mountPoints ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "mountPoints" a) =>
  Lens.Family2.LensLike' f s a
mountPoints = Data.ProtoLens.Field.field @"mountPoints"
paths ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "paths" a) =>
  Lens.Family2.LensLike' f s a
paths = Data.ProtoLens.Field.field @"paths"
type' ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "type'" a) =>
  Lens.Family2.LensLike' f s a
type' = Data.ProtoLens.Field.field @"type'"
vec'entries ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'entries" a) =>
  Lens.Family2.LensLike' f s a
vec'entries = Data.ProtoLens.Field.field @"vec'entries"
vec'mountPoints ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'mountPoints" a) =>
  Lens.Family2.LensLike' f s a
vec'mountPoints = Data.ProtoLens.Field.field @"vec'mountPoints"
vec'paths ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'paths" a) =>
  Lens.Family2.LensLike' f s a
vec'paths = Data.ProtoLens.Field.field @"vec'paths"