{- This file was auto-generated from protos/perfetto/trace/ftrace/cros_ec.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Protos.Perfetto.Trace.Ftrace.CrosEc_Fields where
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
currentTime ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "currentTime" a) =>
  Lens.Family2.LensLike' f s a
currentTime = Data.ProtoLens.Field.field @"currentTime"
currentTimestamp ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "currentTimestamp" a) =>
  Lens.Family2.LensLike' f s a
currentTimestamp = Data.ProtoLens.Field.field @"currentTimestamp"
delta ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "delta" a) =>
  Lens.Family2.LensLike' f s a
delta = Data.ProtoLens.Field.field @"delta"
ecFifoTimestamp ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "ecFifoTimestamp" a) =>
  Lens.Family2.LensLike' f s a
ecFifoTimestamp = Data.ProtoLens.Field.field @"ecFifoTimestamp"
ecSensorNum ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "ecSensorNum" a) =>
  Lens.Family2.LensLike' f s a
ecSensorNum = Data.ProtoLens.Field.field @"ecSensorNum"
fifoTimestamp ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "fifoTimestamp" a) =>
  Lens.Family2.LensLike' f s a
fifoTimestamp = Data.ProtoLens.Field.field @"fifoTimestamp"
maybe'currentTime ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'currentTime" a) =>
  Lens.Family2.LensLike' f s a
maybe'currentTime = Data.ProtoLens.Field.field @"maybe'currentTime"
maybe'currentTimestamp ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'currentTimestamp" a) =>
  Lens.Family2.LensLike' f s a
maybe'currentTimestamp
  = Data.ProtoLens.Field.field @"maybe'currentTimestamp"
maybe'delta ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'delta" a) =>
  Lens.Family2.LensLike' f s a
maybe'delta = Data.ProtoLens.Field.field @"maybe'delta"
maybe'ecFifoTimestamp ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'ecFifoTimestamp" a) =>
  Lens.Family2.LensLike' f s a
maybe'ecFifoTimestamp
  = Data.ProtoLens.Field.field @"maybe'ecFifoTimestamp"
maybe'ecSensorNum ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'ecSensorNum" a) =>
  Lens.Family2.LensLike' f s a
maybe'ecSensorNum = Data.ProtoLens.Field.field @"maybe'ecSensorNum"
maybe'fifoTimestamp ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'fifoTimestamp" a) =>
  Lens.Family2.LensLike' f s a
maybe'fifoTimestamp
  = Data.ProtoLens.Field.field @"maybe'fifoTimestamp"