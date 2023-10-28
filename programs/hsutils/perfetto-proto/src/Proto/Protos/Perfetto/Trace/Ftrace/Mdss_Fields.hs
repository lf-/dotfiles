{- This file was auto-generated from protos/perfetto/trace/ftrace/mdss.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Protos.Perfetto.Trace.Ftrace.Mdss_Fields where
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
bandwidth ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "bandwidth" a) =>
  Lens.Family2.LensLike' f s a
bandwidth = Data.ProtoLens.Field.field @"bandwidth"
blockId ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "blockId" a) =>
  Lens.Family2.LensLike' f s a
blockId = Data.ProtoLens.Field.field @"blockId"
client ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "client" a) =>
  Lens.Family2.LensLike' f s a
client = Data.ProtoLens.Field.field @"client"
clkRate ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "clkRate" a) =>
  Lens.Family2.LensLike' f s a
clkRate = Data.ProtoLens.Field.field @"clkRate"
counterName ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "counterName" a) =>
  Lens.Family2.LensLike' f s a
counterName = Data.ProtoLens.Field.field @"counterName"
crc ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "crc" a) =>
  Lens.Family2.LensLike' f s a
crc = Data.ProtoLens.Field.field @"crc"
ctlNum ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "ctlNum" a) =>
  Lens.Family2.LensLike' f s a
ctlNum = Data.ProtoLens.Field.field @"ctlNum"
dstH ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "dstH" a) =>
  Lens.Family2.LensLike' f s a
dstH = Data.ProtoLens.Field.field @"dstH"
dstW ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "dstW" a) =>
  Lens.Family2.LensLike' f s a
dstW = Data.ProtoLens.Field.field @"dstW"
dstX ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "dstX" a) =>
  Lens.Family2.LensLike' f s a
dstX = Data.ProtoLens.Field.field @"dstX"
dstY ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "dstY" a) =>
  Lens.Family2.LensLike' f s a
dstY = Data.ProtoLens.Field.field @"dstY"
fbcBytes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "fbcBytes" a) =>
  Lens.Family2.LensLike' f s a
fbcBytes = Data.ProtoLens.Field.field @"fbcBytes"
fl ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "fl" a) =>
  Lens.Family2.LensLike' f s a
fl = Data.ProtoLens.Field.field @"fl"
flags ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "flags" a) =>
  Lens.Family2.LensLike' f s a
flags = Data.ProtoLens.Field.field @"flags"
fmt ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "fmt" a) =>
  Lens.Family2.LensLike' f s a
fmt = Data.ProtoLens.Field.field @"fmt"
format ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "format" a) =>
  Lens.Family2.LensLike' f s a
format = Data.ProtoLens.Field.field @"format"
ibQuota ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "ibQuota" a) =>
  Lens.Family2.LensLike' f s a
ibQuota = Data.ProtoLens.Field.field @"ibQuota"
imgH ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "imgH" a) =>
  Lens.Family2.LensLike' f s a
imgH = Data.ProtoLens.Field.field @"imgH"
imgW ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "imgW" a) =>
  Lens.Family2.LensLike' f s a
imgW = Data.ProtoLens.Field.field @"imgW"
intf ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "intf" a) =>
  Lens.Family2.LensLike' f s a
intf = Data.ProtoLens.Field.field @"intf"
intfNum ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "intfNum" a) =>
  Lens.Family2.LensLike' f s a
intfNum = Data.ProtoLens.Field.field @"intfNum"
isVbifRt ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "isVbifRt" a) =>
  Lens.Family2.LensLike' f s a
isVbifRt = Data.ProtoLens.Field.field @"isVbifRt"
kickoffCnt ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "kickoffCnt" a) =>
  Lens.Family2.LensLike' f s a
kickoffCnt = Data.ProtoLens.Field.field @"kickoffCnt"
koffCnt ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "koffCnt" a) =>
  Lens.Family2.LensLike' f s a
koffCnt = Data.ProtoLens.Field.field @"koffCnt"
latencyBuf ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "latencyBuf" a) =>
  Lens.Family2.LensLike' f s a
latencyBuf = Data.ProtoLens.Field.field @"latencyBuf"
linear ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "linear" a) =>
  Lens.Family2.LensLike' f s a
linear = Data.ProtoLens.Field.field @"linear"
lut ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "lut" a) =>
  Lens.Family2.LensLike' f s a
lut = Data.ProtoLens.Field.field @"lut"
maybe'abQuota ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'abQuota" a) =>
  Lens.Family2.LensLike' f s a
maybe'abQuota = Data.ProtoLens.Field.field @"maybe'abQuota"
maybe'bandwidth ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'bandwidth" a) =>
  Lens.Family2.LensLike' f s a
maybe'bandwidth = Data.ProtoLens.Field.field @"maybe'bandwidth"
maybe'blockId ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'blockId" a) =>
  Lens.Family2.LensLike' f s a
maybe'blockId = Data.ProtoLens.Field.field @"maybe'blockId"
maybe'client ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'client" a) =>
  Lens.Family2.LensLike' f s a
maybe'client = Data.ProtoLens.Field.field @"maybe'client"
maybe'clkRate ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'clkRate" a) =>
  Lens.Family2.LensLike' f s a
maybe'clkRate = Data.ProtoLens.Field.field @"maybe'clkRate"
maybe'counterName ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'counterName" a) =>
  Lens.Family2.LensLike' f s a
maybe'counterName = Data.ProtoLens.Field.field @"maybe'counterName"
maybe'crc ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'crc" a) =>
  Lens.Family2.LensLike' f s a
maybe'crc = Data.ProtoLens.Field.field @"maybe'crc"
maybe'ctlNum ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'ctlNum" a) =>
  Lens.Family2.LensLike' f s a
maybe'ctlNum = Data.ProtoLens.Field.field @"maybe'ctlNum"
maybe'dstH ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'dstH" a) =>
  Lens.Family2.LensLike' f s a
maybe'dstH = Data.ProtoLens.Field.field @"maybe'dstH"
maybe'dstW ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'dstW" a) =>
  Lens.Family2.LensLike' f s a
maybe'dstW = Data.ProtoLens.Field.field @"maybe'dstW"
maybe'dstX ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'dstX" a) =>
  Lens.Family2.LensLike' f s a
maybe'dstX = Data.ProtoLens.Field.field @"maybe'dstX"
maybe'dstY ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'dstY" a) =>
  Lens.Family2.LensLike' f s a
maybe'dstY = Data.ProtoLens.Field.field @"maybe'dstY"
maybe'fbcBytes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'fbcBytes" a) =>
  Lens.Family2.LensLike' f s a
maybe'fbcBytes = Data.ProtoLens.Field.field @"maybe'fbcBytes"
maybe'fl ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'fl" a) =>
  Lens.Family2.LensLike' f s a
maybe'fl = Data.ProtoLens.Field.field @"maybe'fl"
maybe'flags ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'flags" a) =>
  Lens.Family2.LensLike' f s a
maybe'flags = Data.ProtoLens.Field.field @"maybe'flags"
maybe'fmt ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'fmt" a) =>
  Lens.Family2.LensLike' f s a
maybe'fmt = Data.ProtoLens.Field.field @"maybe'fmt"
maybe'format ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'format" a) =>
  Lens.Family2.LensLike' f s a
maybe'format = Data.ProtoLens.Field.field @"maybe'format"
maybe'ibQuota ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'ibQuota" a) =>
  Lens.Family2.LensLike' f s a
maybe'ibQuota = Data.ProtoLens.Field.field @"maybe'ibQuota"
maybe'imgH ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'imgH" a) =>
  Lens.Family2.LensLike' f s a
maybe'imgH = Data.ProtoLens.Field.field @"maybe'imgH"
maybe'imgW ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'imgW" a) =>
  Lens.Family2.LensLike' f s a
maybe'imgW = Data.ProtoLens.Field.field @"maybe'imgW"
maybe'intf ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'intf" a) =>
  Lens.Family2.LensLike' f s a
maybe'intf = Data.ProtoLens.Field.field @"maybe'intf"
maybe'intfNum ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'intfNum" a) =>
  Lens.Family2.LensLike' f s a
maybe'intfNum = Data.ProtoLens.Field.field @"maybe'intfNum"
maybe'isVbifRt ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'isVbifRt" a) =>
  Lens.Family2.LensLike' f s a
maybe'isVbifRt = Data.ProtoLens.Field.field @"maybe'isVbifRt"
maybe'kickoffCnt ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'kickoffCnt" a) =>
  Lens.Family2.LensLike' f s a
maybe'kickoffCnt = Data.ProtoLens.Field.field @"maybe'kickoffCnt"
maybe'koffCnt ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'koffCnt" a) =>
  Lens.Family2.LensLike' f s a
maybe'koffCnt = Data.ProtoLens.Field.field @"maybe'koffCnt"
maybe'latencyBuf ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'latencyBuf" a) =>
  Lens.Family2.LensLike' f s a
maybe'latencyBuf = Data.ProtoLens.Field.field @"maybe'latencyBuf"
maybe'linear ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'linear" a) =>
  Lens.Family2.LensLike' f s a
maybe'linear = Data.ProtoLens.Field.field @"maybe'linear"
maybe'lut ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'lut" a) =>
  Lens.Family2.LensLike' f s a
maybe'lut = Data.ProtoLens.Field.field @"maybe'lut"
maybe'mbCnt ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'mbCnt" a) =>
  Lens.Family2.LensLike' f s a
maybe'mbCnt = Data.ProtoLens.Field.field @"maybe'mbCnt"
maybe'mbSize ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'mbSize" a) =>
  Lens.Family2.LensLike' f s a
maybe'mbSize = Data.ProtoLens.Field.field @"maybe'mbSize"
maybe'mixer ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'mixer" a) =>
  Lens.Family2.LensLike' f s a
maybe'mixer = Data.ProtoLens.Field.field @"maybe'mixer"
maybe'mixerNum ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'mixerNum" a) =>
  Lens.Family2.LensLike' f s a
maybe'mixerNum = Data.ProtoLens.Field.field @"maybe'mixerNum"
maybe'mode ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'mode" a) =>
  Lens.Family2.LensLike' f s a
maybe'mode = Data.ProtoLens.Field.field @"maybe'mode"
maybe'newAb ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'newAb" a) =>
  Lens.Family2.LensLike' f s a
maybe'newAb = Data.ProtoLens.Field.field @"maybe'newAb"
maybe'newIb ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'newIb" a) =>
  Lens.Family2.LensLike' f s a
maybe'newIb = Data.ProtoLens.Field.field @"maybe'newIb"
maybe'newWb ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'newWb" a) =>
  Lens.Family2.LensLike' f s a
maybe'newWb = Data.ProtoLens.Field.field @"maybe'newWb"
maybe'num ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'num" a) =>
  Lens.Family2.LensLike' f s a
maybe'num = Data.ProtoLens.Field.field @"maybe'num"
maybe'oldAb ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'oldAb" a) =>
  Lens.Family2.LensLike' f s a
maybe'oldAb = Data.ProtoLens.Field.field @"maybe'oldAb"
maybe'oldIb ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'oldIb" a) =>
  Lens.Family2.LensLike' f s a
maybe'oldIb = Data.ProtoLens.Field.field @"maybe'oldIb"
maybe'oldWb ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'oldWb" a) =>
  Lens.Family2.LensLike' f s a
maybe'oldWb = Data.ProtoLens.Field.field @"maybe'oldWb"
maybe'ot ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'ot" a) =>
  Lens.Family2.LensLike' f s a
maybe'ot = Data.ProtoLens.Field.field @"maybe'ot"
maybe'panicLut ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'panicLut" a) =>
  Lens.Family2.LensLike' f s a
maybe'panicLut = Data.ProtoLens.Field.field @"maybe'panicLut"
maybe'paramsChanged ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'paramsChanged" a) =>
  Lens.Family2.LensLike' f s a
maybe'paramsChanged
  = Data.ProtoLens.Field.field @"maybe'paramsChanged"
maybe'pid ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'pid" a) =>
  Lens.Family2.LensLike' f s a
maybe'pid = Data.ProtoLens.Field.field @"maybe'pid"
maybe'playCnt ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'playCnt" a) =>
  Lens.Family2.LensLike' f s a
maybe'playCnt = Data.ProtoLens.Field.field @"maybe'playCnt"
maybe'pnum ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'pnum" a) =>
  Lens.Family2.LensLike' f s a
maybe'pnum = Data.ProtoLens.Field.field @"maybe'pnum"
maybe'postSc ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'postSc" a) =>
  Lens.Family2.LensLike' f s a
maybe'postSc = Data.ProtoLens.Field.field @"maybe'postSc"
maybe'ppBytes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'ppBytes" a) =>
  Lens.Family2.LensLike' f s a
maybe'ppBytes = Data.ProtoLens.Field.field @"maybe'ppBytes"
maybe'ppLines ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'ppLines" a) =>
  Lens.Family2.LensLike' f s a
maybe'ppLines = Data.ProtoLens.Field.field @"maybe'ppLines"
maybe'ppNum ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'ppNum" a) =>
  Lens.Family2.LensLike' f s a
maybe'ppNum = Data.ProtoLens.Field.field @"maybe'ppNum"
maybe'prefillBytes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'prefillBytes" a) =>
  Lens.Family2.LensLike' f s a
maybe'prefillBytes
  = Data.ProtoLens.Field.field @"maybe'prefillBytes"
maybe'priorityBytes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'priorityBytes" a) =>
  Lens.Family2.LensLike' f s a
maybe'priorityBytes
  = Data.ProtoLens.Field.field @"maybe'priorityBytes"
maybe'rdLim ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'rdLim" a) =>
  Lens.Family2.LensLike' f s a
maybe'rdLim = Data.ProtoLens.Field.field @"maybe'rdLim"
maybe'robustLut ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'robustLut" a) =>
  Lens.Family2.LensLike' f s a
maybe'robustLut = Data.ProtoLens.Field.field @"maybe'robustLut"
maybe'rot ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'rot" a) =>
  Lens.Family2.LensLike' f s a
maybe'rot = Data.ProtoLens.Field.field @"maybe'rot"
maybe'srcH ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'srcH" a) =>
  Lens.Family2.LensLike' f s a
maybe'srcH = Data.ProtoLens.Field.field @"maybe'srcH"
maybe'srcW ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'srcW" a) =>
  Lens.Family2.LensLike' f s a
maybe'srcW = Data.ProtoLens.Field.field @"maybe'srcW"
maybe'srcX ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'srcX" a) =>
  Lens.Family2.LensLike' f s a
maybe'srcX = Data.ProtoLens.Field.field @"maybe'srcX"
maybe'srcY ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'srcY" a) =>
  Lens.Family2.LensLike' f s a
maybe'srcY = Data.ProtoLens.Field.field @"maybe'srcY"
maybe'stage ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'stage" a) =>
  Lens.Family2.LensLike' f s a
maybe'stage = Data.ProtoLens.Field.field @"maybe'stage"
maybe'state ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'state" a) =>
  Lens.Family2.LensLike' f s a
maybe'state = Data.ProtoLens.Field.field @"maybe'state"
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
maybe'underrunCnt ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'underrunCnt" a) =>
  Lens.Family2.LensLike' f s a
maybe'underrunCnt = Data.ProtoLens.Field.field @"maybe'underrunCnt"
maybe'updateBw ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'updateBw" a) =>
  Lens.Family2.LensLike' f s a
maybe'updateBw = Data.ProtoLens.Field.field @"maybe'updateBw"
maybe'useSpace ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'useSpace" a) =>
  Lens.Family2.LensLike' f s a
maybe'useSpace = Data.ProtoLens.Field.field @"maybe'useSpace"
maybe'value ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'value" a) =>
  Lens.Family2.LensLike' f s a
maybe'value = Data.ProtoLens.Field.field @"maybe'value"
maybe'vsyncCnt ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'vsyncCnt" a) =>
  Lens.Family2.LensLike' f s a
maybe'vsyncCnt = Data.ProtoLens.Field.field @"maybe'vsyncCnt"
maybe'wm0 ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'wm0" a) =>
  Lens.Family2.LensLike' f s a
maybe'wm0 = Data.ProtoLens.Field.field @"maybe'wm0"
maybe'wm1 ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'wm1" a) =>
  Lens.Family2.LensLike' f s a
maybe'wm1 = Data.ProtoLens.Field.field @"maybe'wm1"
maybe'wm2 ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'wm2" a) =>
  Lens.Family2.LensLike' f s a
maybe'wm2 = Data.ProtoLens.Field.field @"maybe'wm2"
maybe'xinId ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'xinId" a) =>
  Lens.Family2.LensLike' f s a
maybe'xinId = Data.ProtoLens.Field.field @"maybe'xinId"
maybe'yBuf ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'yBuf" a) =>
  Lens.Family2.LensLike' f s a
maybe'yBuf = Data.ProtoLens.Field.field @"maybe'yBuf"
maybe'yScaler ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'yScaler" a) =>
  Lens.Family2.LensLike' f s a
maybe'yScaler = Data.ProtoLens.Field.field @"maybe'yScaler"
mbCnt ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "mbCnt" a) =>
  Lens.Family2.LensLike' f s a
mbCnt = Data.ProtoLens.Field.field @"mbCnt"
mbSize ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "mbSize" a) =>
  Lens.Family2.LensLike' f s a
mbSize = Data.ProtoLens.Field.field @"mbSize"
mixer ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "mixer" a) =>
  Lens.Family2.LensLike' f s a
mixer = Data.ProtoLens.Field.field @"mixer"
mixerNum ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "mixerNum" a) =>
  Lens.Family2.LensLike' f s a
mixerNum = Data.ProtoLens.Field.field @"mixerNum"
mode ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "mode" a) =>
  Lens.Family2.LensLike' f s a
mode = Data.ProtoLens.Field.field @"mode"
newAb ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "newAb" a) =>
  Lens.Family2.LensLike' f s a
newAb = Data.ProtoLens.Field.field @"newAb"
newIb ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "newIb" a) =>
  Lens.Family2.LensLike' f s a
newIb = Data.ProtoLens.Field.field @"newIb"
newWb ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "newWb" a) =>
  Lens.Family2.LensLike' f s a
newWb = Data.ProtoLens.Field.field @"newWb"
num ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "num" a) =>
  Lens.Family2.LensLike' f s a
num = Data.ProtoLens.Field.field @"num"
oldAb ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "oldAb" a) =>
  Lens.Family2.LensLike' f s a
oldAb = Data.ProtoLens.Field.field @"oldAb"
oldIb ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "oldIb" a) =>
  Lens.Family2.LensLike' f s a
oldIb = Data.ProtoLens.Field.field @"oldIb"
oldWb ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "oldWb" a) =>
  Lens.Family2.LensLike' f s a
oldWb = Data.ProtoLens.Field.field @"oldWb"
ot ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "ot" a) =>
  Lens.Family2.LensLike' f s a
ot = Data.ProtoLens.Field.field @"ot"
panicLut ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "panicLut" a) =>
  Lens.Family2.LensLike' f s a
panicLut = Data.ProtoLens.Field.field @"panicLut"
paramsChanged ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "paramsChanged" a) =>
  Lens.Family2.LensLike' f s a
paramsChanged = Data.ProtoLens.Field.field @"paramsChanged"
pid ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "pid" a) =>
  Lens.Family2.LensLike' f s a
pid = Data.ProtoLens.Field.field @"pid"
playCnt ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "playCnt" a) =>
  Lens.Family2.LensLike' f s a
playCnt = Data.ProtoLens.Field.field @"playCnt"
pnum ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "pnum" a) =>
  Lens.Family2.LensLike' f s a
pnum = Data.ProtoLens.Field.field @"pnum"
postSc ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "postSc" a) =>
  Lens.Family2.LensLike' f s a
postSc = Data.ProtoLens.Field.field @"postSc"
ppBytes ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "ppBytes" a) =>
  Lens.Family2.LensLike' f s a
ppBytes = Data.ProtoLens.Field.field @"ppBytes"
ppLines ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "ppLines" a) =>
  Lens.Family2.LensLike' f s a
ppLines = Data.ProtoLens.Field.field @"ppLines"
ppNum ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "ppNum" a) =>
  Lens.Family2.LensLike' f s a
ppNum = Data.ProtoLens.Field.field @"ppNum"
prefillBytes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "prefillBytes" a) =>
  Lens.Family2.LensLike' f s a
prefillBytes = Data.ProtoLens.Field.field @"prefillBytes"
priorityBytes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "priorityBytes" a) =>
  Lens.Family2.LensLike' f s a
priorityBytes = Data.ProtoLens.Field.field @"priorityBytes"
rdLim ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "rdLim" a) =>
  Lens.Family2.LensLike' f s a
rdLim = Data.ProtoLens.Field.field @"rdLim"
robustLut ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "robustLut" a) =>
  Lens.Family2.LensLike' f s a
robustLut = Data.ProtoLens.Field.field @"robustLut"
rot ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "rot" a) =>
  Lens.Family2.LensLike' f s a
rot = Data.ProtoLens.Field.field @"rot"
srcH ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "srcH" a) =>
  Lens.Family2.LensLike' f s a
srcH = Data.ProtoLens.Field.field @"srcH"
srcW ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "srcW" a) =>
  Lens.Family2.LensLike' f s a
srcW = Data.ProtoLens.Field.field @"srcW"
srcX ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "srcX" a) =>
  Lens.Family2.LensLike' f s a
srcX = Data.ProtoLens.Field.field @"srcX"
srcY ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "srcY" a) =>
  Lens.Family2.LensLike' f s a
srcY = Data.ProtoLens.Field.field @"srcY"
stage ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "stage" a) =>
  Lens.Family2.LensLike' f s a
stage = Data.ProtoLens.Field.field @"stage"
state ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "state" a) =>
  Lens.Family2.LensLike' f s a
state = Data.ProtoLens.Field.field @"state"
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
underrunCnt ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "underrunCnt" a) =>
  Lens.Family2.LensLike' f s a
underrunCnt = Data.ProtoLens.Field.field @"underrunCnt"
updateBw ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "updateBw" a) =>
  Lens.Family2.LensLike' f s a
updateBw = Data.ProtoLens.Field.field @"updateBw"
useSpace ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "useSpace" a) =>
  Lens.Family2.LensLike' f s a
useSpace = Data.ProtoLens.Field.field @"useSpace"
value ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "value" a) =>
  Lens.Family2.LensLike' f s a
value = Data.ProtoLens.Field.field @"value"
vsyncCnt ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vsyncCnt" a) =>
  Lens.Family2.LensLike' f s a
vsyncCnt = Data.ProtoLens.Field.field @"vsyncCnt"
wm0 ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "wm0" a) =>
  Lens.Family2.LensLike' f s a
wm0 = Data.ProtoLens.Field.field @"wm0"
wm1 ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "wm1" a) =>
  Lens.Family2.LensLike' f s a
wm1 = Data.ProtoLens.Field.field @"wm1"
wm2 ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "wm2" a) =>
  Lens.Family2.LensLike' f s a
wm2 = Data.ProtoLens.Field.field @"wm2"
xinId ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "xinId" a) =>
  Lens.Family2.LensLike' f s a
xinId = Data.ProtoLens.Field.field @"xinId"
yBuf ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "yBuf" a) =>
  Lens.Family2.LensLike' f s a
yBuf = Data.ProtoLens.Field.field @"yBuf"
yScaler ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "yScaler" a) =>
  Lens.Family2.LensLike' f s a
yScaler = Data.ProtoLens.Field.field @"yScaler"