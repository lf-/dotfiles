{- This file was auto-generated from protos/perfetto/trace/ftrace/sde.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Protos.Perfetto.Trace.Ftrace.Sde_Fields where
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
abQuota ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "abQuota" a) =>
  Lens.Family2.LensLike' f s a
abQuota = Data.ProtoLens.Field.field @"abQuota"
busId ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "busId" a) =>
  Lens.Family2.LensLike' f s a
busId = Data.ProtoLens.Field.field @"busId"
bwCtlEbi ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "bwCtlEbi" a) =>
  Lens.Family2.LensLike' f s a
bwCtlEbi = Data.ProtoLens.Field.field @"bwCtlEbi"
bwCtlLlcc ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "bwCtlLlcc" a) =>
  Lens.Family2.LensLike' f s a
bwCtlLlcc = Data.ProtoLens.Field.field @"bwCtlLlcc"
bwCtlMnoc ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "bwCtlMnoc" a) =>
  Lens.Family2.LensLike' f s a
bwCtlMnoc = Data.ProtoLens.Field.field @"bwCtlMnoc"
client ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "client" a) =>
  Lens.Family2.LensLike' f s a
client = Data.ProtoLens.Field.field @"client"
coreClkRate ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "coreClkRate" a) =>
  Lens.Family2.LensLike' f s a
coreClkRate = Data.ProtoLens.Field.field @"coreClkRate"
crtc ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "crtc" a) =>
  Lens.Family2.LensLike' f s a
crtc = Data.ProtoLens.Field.field @"crtc"
evtlogTag ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "evtlogTag" a) =>
  Lens.Family2.LensLike' f s a
evtlogTag = Data.ProtoLens.Field.field @"evtlogTag"
fl ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "fl" a) =>
  Lens.Family2.LensLike' f s a
fl = Data.ProtoLens.Field.field @"fl"
fmt ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "fmt" a) =>
  Lens.Family2.LensLike' f s a
fmt = Data.ProtoLens.Field.field @"fmt"
ibEbi ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "ibEbi" a) =>
  Lens.Family2.LensLike' f s a
ibEbi = Data.ProtoLens.Field.field @"ibEbi"
ibLlcc ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "ibLlcc" a) =>
  Lens.Family2.LensLike' f s a
ibLlcc = Data.ProtoLens.Field.field @"ibLlcc"
ibMnoc ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "ibMnoc" a) =>
  Lens.Family2.LensLike' f s a
ibMnoc = Data.ProtoLens.Field.field @"ibMnoc"
ibQuota ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "ibQuota" a) =>
  Lens.Family2.LensLike' f s a
ibQuota = Data.ProtoLens.Field.field @"ibQuota"
lut ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "lut" a) =>
  Lens.Family2.LensLike' f s a
lut = Data.ProtoLens.Field.field @"lut"
lutUsage ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "lutUsage" a) =>
  Lens.Family2.LensLike' f s a
lutUsage = Data.ProtoLens.Field.field @"lutUsage"
maybe'abQuota ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'abQuota" a) =>
  Lens.Family2.LensLike' f s a
maybe'abQuota = Data.ProtoLens.Field.field @"maybe'abQuota"
maybe'busId ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'busId" a) =>
  Lens.Family2.LensLike' f s a
maybe'busId = Data.ProtoLens.Field.field @"maybe'busId"
maybe'bwCtlEbi ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'bwCtlEbi" a) =>
  Lens.Family2.LensLike' f s a
maybe'bwCtlEbi = Data.ProtoLens.Field.field @"maybe'bwCtlEbi"
maybe'bwCtlLlcc ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'bwCtlLlcc" a) =>
  Lens.Family2.LensLike' f s a
maybe'bwCtlLlcc = Data.ProtoLens.Field.field @"maybe'bwCtlLlcc"
maybe'bwCtlMnoc ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'bwCtlMnoc" a) =>
  Lens.Family2.LensLike' f s a
maybe'bwCtlMnoc = Data.ProtoLens.Field.field @"maybe'bwCtlMnoc"
maybe'client ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'client" a) =>
  Lens.Family2.LensLike' f s a
maybe'client = Data.ProtoLens.Field.field @"maybe'client"
maybe'coreClkRate ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'coreClkRate" a) =>
  Lens.Family2.LensLike' f s a
maybe'coreClkRate = Data.ProtoLens.Field.field @"maybe'coreClkRate"
maybe'crtc ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'crtc" a) =>
  Lens.Family2.LensLike' f s a
maybe'crtc = Data.ProtoLens.Field.field @"maybe'crtc"
maybe'evtlogTag ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'evtlogTag" a) =>
  Lens.Family2.LensLike' f s a
maybe'evtlogTag = Data.ProtoLens.Field.field @"maybe'evtlogTag"
maybe'fl ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'fl" a) =>
  Lens.Family2.LensLike' f s a
maybe'fl = Data.ProtoLens.Field.field @"maybe'fl"
maybe'fmt ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'fmt" a) =>
  Lens.Family2.LensLike' f s a
maybe'fmt = Data.ProtoLens.Field.field @"maybe'fmt"
maybe'ibEbi ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'ibEbi" a) =>
  Lens.Family2.LensLike' f s a
maybe'ibEbi = Data.ProtoLens.Field.field @"maybe'ibEbi"
maybe'ibLlcc ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'ibLlcc" a) =>
  Lens.Family2.LensLike' f s a
maybe'ibLlcc = Data.ProtoLens.Field.field @"maybe'ibLlcc"
maybe'ibMnoc ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'ibMnoc" a) =>
  Lens.Family2.LensLike' f s a
maybe'ibMnoc = Data.ProtoLens.Field.field @"maybe'ibMnoc"
maybe'ibQuota ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'ibQuota" a) =>
  Lens.Family2.LensLike' f s a
maybe'ibQuota = Data.ProtoLens.Field.field @"maybe'ibQuota"
maybe'lut ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'lut" a) =>
  Lens.Family2.LensLike' f s a
maybe'lut = Data.ProtoLens.Field.field @"maybe'lut"
maybe'lutUsage ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'lutUsage" a) =>
  Lens.Family2.LensLike' f s a
maybe'lutUsage = Data.ProtoLens.Field.field @"maybe'lutUsage"
maybe'params ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'params" a) =>
  Lens.Family2.LensLike' f s a
maybe'params = Data.ProtoLens.Field.field @"maybe'params"
maybe'perPipeIbEbi ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'perPipeIbEbi" a) =>
  Lens.Family2.LensLike' f s a
maybe'perPipeIbEbi
  = Data.ProtoLens.Field.field @"maybe'perPipeIbEbi"
maybe'perPipeIbLlcc ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'perPipeIbLlcc" a) =>
  Lens.Family2.LensLike' f s a
maybe'perPipeIbLlcc
  = Data.ProtoLens.Field.field @"maybe'perPipeIbLlcc"
maybe'perPipeIbMnoc ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'perPipeIbMnoc" a) =>
  Lens.Family2.LensLike' f s a
maybe'perPipeIbMnoc
  = Data.ProtoLens.Field.field @"maybe'perPipeIbMnoc"
maybe'pid ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'pid" a) =>
  Lens.Family2.LensLike' f s a
maybe'pid = Data.ProtoLens.Field.field @"maybe'pid"
maybe'pnum ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'pnum" a) =>
  Lens.Family2.LensLike' f s a
maybe'pnum = Data.ProtoLens.Field.field @"maybe'pnum"
maybe'rt ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'rt" a) =>
  Lens.Family2.LensLike' f s a
maybe'rt = Data.ProtoLens.Field.field @"maybe'rt"
maybe'stopReq ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'stopReq" a) =>
  Lens.Family2.LensLike' f s a
maybe'stopReq = Data.ProtoLens.Field.field @"maybe'stopReq"
maybe'tagId ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'tagId" a) =>
  Lens.Family2.LensLike' f s a
maybe'tagId = Data.ProtoLens.Field.field @"maybe'tagId"
maybe'traceBegin ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'traceBegin" a) =>
  Lens.Family2.LensLike' f s a
maybe'traceBegin = Data.ProtoLens.Field.field @"maybe'traceBegin"
maybe'traceName ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'traceName" a) =>
  Lens.Family2.LensLike' f s a
maybe'traceName = Data.ProtoLens.Field.field @"maybe'traceName"
maybe'traceType ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'traceType" a) =>
  Lens.Family2.LensLike' f s a
maybe'traceType = Data.ProtoLens.Field.field @"maybe'traceType"
maybe'updateBus ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'updateBus" a) =>
  Lens.Family2.LensLike' f s a
maybe'updateBus = Data.ProtoLens.Field.field @"maybe'updateBus"
maybe'updateClk ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'updateClk" a) =>
  Lens.Family2.LensLike' f s a
maybe'updateClk = Data.ProtoLens.Field.field @"maybe'updateClk"
maybe'value ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'value" a) =>
  Lens.Family2.LensLike' f s a
maybe'value = Data.ProtoLens.Field.field @"maybe'value"
params ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "params" a) =>
  Lens.Family2.LensLike' f s a
params = Data.ProtoLens.Field.field @"params"
perPipeIbEbi ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "perPipeIbEbi" a) =>
  Lens.Family2.LensLike' f s a
perPipeIbEbi = Data.ProtoLens.Field.field @"perPipeIbEbi"
perPipeIbLlcc ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "perPipeIbLlcc" a) =>
  Lens.Family2.LensLike' f s a
perPipeIbLlcc = Data.ProtoLens.Field.field @"perPipeIbLlcc"
perPipeIbMnoc ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "perPipeIbMnoc" a) =>
  Lens.Family2.LensLike' f s a
perPipeIbMnoc = Data.ProtoLens.Field.field @"perPipeIbMnoc"
pid ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "pid" a) =>
  Lens.Family2.LensLike' f s a
pid = Data.ProtoLens.Field.field @"pid"
pnum ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "pnum" a) =>
  Lens.Family2.LensLike' f s a
pnum = Data.ProtoLens.Field.field @"pnum"
rt ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "rt" a) =>
  Lens.Family2.LensLike' f s a
rt = Data.ProtoLens.Field.field @"rt"
stopReq ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "stopReq" a) =>
  Lens.Family2.LensLike' f s a
stopReq = Data.ProtoLens.Field.field @"stopReq"
tagId ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "tagId" a) =>
  Lens.Family2.LensLike' f s a
tagId = Data.ProtoLens.Field.field @"tagId"
traceBegin ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "traceBegin" a) =>
  Lens.Family2.LensLike' f s a
traceBegin = Data.ProtoLens.Field.field @"traceBegin"
traceName ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "traceName" a) =>
  Lens.Family2.LensLike' f s a
traceName = Data.ProtoLens.Field.field @"traceName"
traceType ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "traceType" a) =>
  Lens.Family2.LensLike' f s a
traceType = Data.ProtoLens.Field.field @"traceType"
updateBus ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "updateBus" a) =>
  Lens.Family2.LensLike' f s a
updateBus = Data.ProtoLens.Field.field @"updateBus"
updateClk ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "updateClk" a) =>
  Lens.Family2.LensLike' f s a
updateClk = Data.ProtoLens.Field.field @"updateClk"
value ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "value" a) =>
  Lens.Family2.LensLike' f s a
value = Data.ProtoLens.Field.field @"value"