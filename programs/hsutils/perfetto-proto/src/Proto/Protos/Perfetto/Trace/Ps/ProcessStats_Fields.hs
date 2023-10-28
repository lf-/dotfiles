{- This file was auto-generated from protos/perfetto/trace/ps/process_stats.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Protos.Perfetto.Trace.Ps.ProcessStats_Fields where
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
chromePeakResidentSetKb ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "chromePeakResidentSetKb" a) =>
  Lens.Family2.LensLike' f s a
chromePeakResidentSetKb
  = Data.ProtoLens.Field.field @"chromePeakResidentSetKb"
chromePrivateFootprintKb ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "chromePrivateFootprintKb" a) =>
  Lens.Family2.LensLike' f s a
chromePrivateFootprintKb
  = Data.ProtoLens.Field.field @"chromePrivateFootprintKb"
collectionEndTimestamp ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "collectionEndTimestamp" a) =>
  Lens.Family2.LensLike' f s a
collectionEndTimestamp
  = Data.ProtoLens.Field.field @"collectionEndTimestamp"
fd ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "fd" a) =>
  Lens.Family2.LensLike' f s a
fd = Data.ProtoLens.Field.field @"fd"
fds ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "fds" a) =>
  Lens.Family2.LensLike' f s a
fds = Data.ProtoLens.Field.field @"fds"
isPeakRssResettable ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "isPeakRssResettable" a) =>
  Lens.Family2.LensLike' f s a
isPeakRssResettable
  = Data.ProtoLens.Field.field @"isPeakRssResettable"
maybe'chromePeakResidentSetKb ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'chromePeakResidentSetKb" a) =>
  Lens.Family2.LensLike' f s a
maybe'chromePeakResidentSetKb
  = Data.ProtoLens.Field.field @"maybe'chromePeakResidentSetKb"
maybe'chromePrivateFootprintKb ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'chromePrivateFootprintKb" a) =>
  Lens.Family2.LensLike' f s a
maybe'chromePrivateFootprintKb
  = Data.ProtoLens.Field.field @"maybe'chromePrivateFootprintKb"
maybe'collectionEndTimestamp ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'collectionEndTimestamp" a) =>
  Lens.Family2.LensLike' f s a
maybe'collectionEndTimestamp
  = Data.ProtoLens.Field.field @"maybe'collectionEndTimestamp"
maybe'fd ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'fd" a) =>
  Lens.Family2.LensLike' f s a
maybe'fd = Data.ProtoLens.Field.field @"maybe'fd"
maybe'isPeakRssResettable ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'isPeakRssResettable" a) =>
  Lens.Family2.LensLike' f s a
maybe'isPeakRssResettable
  = Data.ProtoLens.Field.field @"maybe'isPeakRssResettable"
maybe'oomScoreAdj ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'oomScoreAdj" a) =>
  Lens.Family2.LensLike' f s a
maybe'oomScoreAdj = Data.ProtoLens.Field.field @"maybe'oomScoreAdj"
maybe'path ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'path" a) =>
  Lens.Family2.LensLike' f s a
maybe'path = Data.ProtoLens.Field.field @"maybe'path"
maybe'pid ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'pid" a) =>
  Lens.Family2.LensLike' f s a
maybe'pid = Data.ProtoLens.Field.field @"maybe'pid"
maybe'rssAnonKb ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'rssAnonKb" a) =>
  Lens.Family2.LensLike' f s a
maybe'rssAnonKb = Data.ProtoLens.Field.field @"maybe'rssAnonKb"
maybe'rssFileKb ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'rssFileKb" a) =>
  Lens.Family2.LensLike' f s a
maybe'rssFileKb = Data.ProtoLens.Field.field @"maybe'rssFileKb"
maybe'rssShmemKb ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'rssShmemKb" a) =>
  Lens.Family2.LensLike' f s a
maybe'rssShmemKb = Data.ProtoLens.Field.field @"maybe'rssShmemKb"
maybe'smrPssAnonKb ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'smrPssAnonKb" a) =>
  Lens.Family2.LensLike' f s a
maybe'smrPssAnonKb
  = Data.ProtoLens.Field.field @"maybe'smrPssAnonKb"
maybe'smrPssFileKb ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'smrPssFileKb" a) =>
  Lens.Family2.LensLike' f s a
maybe'smrPssFileKb
  = Data.ProtoLens.Field.field @"maybe'smrPssFileKb"
maybe'smrPssKb ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'smrPssKb" a) =>
  Lens.Family2.LensLike' f s a
maybe'smrPssKb = Data.ProtoLens.Field.field @"maybe'smrPssKb"
maybe'smrPssShmemKb ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'smrPssShmemKb" a) =>
  Lens.Family2.LensLike' f s a
maybe'smrPssShmemKb
  = Data.ProtoLens.Field.field @"maybe'smrPssShmemKb"
maybe'smrRssKb ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'smrRssKb" a) =>
  Lens.Family2.LensLike' f s a
maybe'smrRssKb = Data.ProtoLens.Field.field @"maybe'smrRssKb"
maybe'tid ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'tid" a) =>
  Lens.Family2.LensLike' f s a
maybe'tid = Data.ProtoLens.Field.field @"maybe'tid"
maybe'vmHwmKb ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'vmHwmKb" a) =>
  Lens.Family2.LensLike' f s a
maybe'vmHwmKb = Data.ProtoLens.Field.field @"maybe'vmHwmKb"
maybe'vmLockedKb ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'vmLockedKb" a) =>
  Lens.Family2.LensLike' f s a
maybe'vmLockedKb = Data.ProtoLens.Field.field @"maybe'vmLockedKb"
maybe'vmRssKb ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'vmRssKb" a) =>
  Lens.Family2.LensLike' f s a
maybe'vmRssKb = Data.ProtoLens.Field.field @"maybe'vmRssKb"
maybe'vmSizeKb ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'vmSizeKb" a) =>
  Lens.Family2.LensLike' f s a
maybe'vmSizeKb = Data.ProtoLens.Field.field @"maybe'vmSizeKb"
maybe'vmSwapKb ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'vmSwapKb" a) =>
  Lens.Family2.LensLike' f s a
maybe'vmSwapKb = Data.ProtoLens.Field.field @"maybe'vmSwapKb"
oomScoreAdj ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "oomScoreAdj" a) =>
  Lens.Family2.LensLike' f s a
oomScoreAdj = Data.ProtoLens.Field.field @"oomScoreAdj"
path ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "path" a) =>
  Lens.Family2.LensLike' f s a
path = Data.ProtoLens.Field.field @"path"
pid ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "pid" a) =>
  Lens.Family2.LensLike' f s a
pid = Data.ProtoLens.Field.field @"pid"
processes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "processes" a) =>
  Lens.Family2.LensLike' f s a
processes = Data.ProtoLens.Field.field @"processes"
rssAnonKb ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "rssAnonKb" a) =>
  Lens.Family2.LensLike' f s a
rssAnonKb = Data.ProtoLens.Field.field @"rssAnonKb"
rssFileKb ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "rssFileKb" a) =>
  Lens.Family2.LensLike' f s a
rssFileKb = Data.ProtoLens.Field.field @"rssFileKb"
rssShmemKb ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "rssShmemKb" a) =>
  Lens.Family2.LensLike' f s a
rssShmemKb = Data.ProtoLens.Field.field @"rssShmemKb"
smrPssAnonKb ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "smrPssAnonKb" a) =>
  Lens.Family2.LensLike' f s a
smrPssAnonKb = Data.ProtoLens.Field.field @"smrPssAnonKb"
smrPssFileKb ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "smrPssFileKb" a) =>
  Lens.Family2.LensLike' f s a
smrPssFileKb = Data.ProtoLens.Field.field @"smrPssFileKb"
smrPssKb ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "smrPssKb" a) =>
  Lens.Family2.LensLike' f s a
smrPssKb = Data.ProtoLens.Field.field @"smrPssKb"
smrPssShmemKb ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "smrPssShmemKb" a) =>
  Lens.Family2.LensLike' f s a
smrPssShmemKb = Data.ProtoLens.Field.field @"smrPssShmemKb"
smrRssKb ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "smrRssKb" a) =>
  Lens.Family2.LensLike' f s a
smrRssKb = Data.ProtoLens.Field.field @"smrRssKb"
threads ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "threads" a) =>
  Lens.Family2.LensLike' f s a
threads = Data.ProtoLens.Field.field @"threads"
tid ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "tid" a) =>
  Lens.Family2.LensLike' f s a
tid = Data.ProtoLens.Field.field @"tid"
vec'fds ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "vec'fds" a) =>
  Lens.Family2.LensLike' f s a
vec'fds = Data.ProtoLens.Field.field @"vec'fds"
vec'processes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'processes" a) =>
  Lens.Family2.LensLike' f s a
vec'processes = Data.ProtoLens.Field.field @"vec'processes"
vec'threads ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'threads" a) =>
  Lens.Family2.LensLike' f s a
vec'threads = Data.ProtoLens.Field.field @"vec'threads"
vmHwmKb ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "vmHwmKb" a) =>
  Lens.Family2.LensLike' f s a
vmHwmKb = Data.ProtoLens.Field.field @"vmHwmKb"
vmLockedKb ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vmLockedKb" a) =>
  Lens.Family2.LensLike' f s a
vmLockedKb = Data.ProtoLens.Field.field @"vmLockedKb"
vmRssKb ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "vmRssKb" a) =>
  Lens.Family2.LensLike' f s a
vmRssKb = Data.ProtoLens.Field.field @"vmRssKb"
vmSizeKb ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vmSizeKb" a) =>
  Lens.Family2.LensLike' f s a
vmSizeKb = Data.ProtoLens.Field.field @"vmSizeKb"
vmSwapKb ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vmSwapKb" a) =>
  Lens.Family2.LensLike' f s a
vmSwapKb = Data.ProtoLens.Field.field @"vmSwapKb"