{- This file was auto-generated from protos/perfetto/trace/clock_snapshot.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Protos.Perfetto.Trace.ClockSnapshot_Fields where
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
import qualified Proto.Protos.Perfetto.Common.BuiltinClock
clockId ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "clockId" a) =>
  Lens.Family2.LensLike' f s a
clockId = Data.ProtoLens.Field.field @"clockId"
clocks ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "clocks" a) =>
  Lens.Family2.LensLike' f s a
clocks = Data.ProtoLens.Field.field @"clocks"
isIncremental ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "isIncremental" a) =>
  Lens.Family2.LensLike' f s a
isIncremental = Data.ProtoLens.Field.field @"isIncremental"
maybe'clockId ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'clockId" a) =>
  Lens.Family2.LensLike' f s a
maybe'clockId = Data.ProtoLens.Field.field @"maybe'clockId"
maybe'isIncremental ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'isIncremental" a) =>
  Lens.Family2.LensLike' f s a
maybe'isIncremental
  = Data.ProtoLens.Field.field @"maybe'isIncremental"
maybe'primaryTraceClock ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'primaryTraceClock" a) =>
  Lens.Family2.LensLike' f s a
maybe'primaryTraceClock
  = Data.ProtoLens.Field.field @"maybe'primaryTraceClock"
maybe'timestamp ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'timestamp" a) =>
  Lens.Family2.LensLike' f s a
maybe'timestamp = Data.ProtoLens.Field.field @"maybe'timestamp"
maybe'unitMultiplierNs ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'unitMultiplierNs" a) =>
  Lens.Family2.LensLike' f s a
maybe'unitMultiplierNs
  = Data.ProtoLens.Field.field @"maybe'unitMultiplierNs"
primaryTraceClock ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "primaryTraceClock" a) =>
  Lens.Family2.LensLike' f s a
primaryTraceClock = Data.ProtoLens.Field.field @"primaryTraceClock"
timestamp ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "timestamp" a) =>
  Lens.Family2.LensLike' f s a
timestamp = Data.ProtoLens.Field.field @"timestamp"
unitMultiplierNs ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "unitMultiplierNs" a) =>
  Lens.Family2.LensLike' f s a
unitMultiplierNs = Data.ProtoLens.Field.field @"unitMultiplierNs"
vec'clocks ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'clocks" a) =>
  Lens.Family2.LensLike' f s a
vec'clocks = Data.ProtoLens.Field.field @"vec'clocks"