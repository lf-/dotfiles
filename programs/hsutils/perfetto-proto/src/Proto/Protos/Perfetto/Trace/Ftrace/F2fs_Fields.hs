{- This file was auto-generated from protos/perfetto/trace/ftrace/f2fs.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Protos.Perfetto.Trace.Ftrace.F2fs_Fields where
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
advise ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "advise" a) =>
  Lens.Family2.LensLike' f s a
advise = Data.ProtoLens.Field.field @"advise"
allocMode ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "allocMode" a) =>
  Lens.Family2.LensLike' f s a
allocMode = Data.ProtoLens.Field.field @"allocMode"
appBio ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "appBio" a) =>
  Lens.Family2.LensLike' f s a
appBio = Data.ProtoLens.Field.field @"appBio"
appBrio ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "appBrio" a) =>
  Lens.Family2.LensLike' f s a
appBrio = Data.ProtoLens.Field.field @"appBrio"
appDio ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "appDio" a) =>
  Lens.Family2.LensLike' f s a
appDio = Data.ProtoLens.Field.field @"appDio"
appDrio ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "appDrio" a) =>
  Lens.Family2.LensLike' f s a
appDrio = Data.ProtoLens.Field.field @"appDrio"
appMio ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "appMio" a) =>
  Lens.Family2.LensLike' f s a
appMio = Data.ProtoLens.Field.field @"appMio"
appMrio ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "appMrio" a) =>
  Lens.Family2.LensLike' f s a
appMrio = Data.ProtoLens.Field.field @"appMrio"
appRio ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "appRio" a) =>
  Lens.Family2.LensLike' f s a
appRio = Data.ProtoLens.Field.field @"appRio"
appWio ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "appWio" a) =>
  Lens.Family2.LensLike' f s a
appWio = Data.ProtoLens.Field.field @"appWio"
bhSize ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "bhSize" a) =>
  Lens.Family2.LensLike' f s a
bhSize = Data.ProtoLens.Field.field @"bhSize"
bhStart ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "bhStart" a) =>
  Lens.Family2.LensLike' f s a
bhStart = Data.ProtoLens.Field.field @"bhStart"
blkAddr ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "blkAddr" a) =>
  Lens.Family2.LensLike' f s a
blkAddr = Data.ProtoLens.Field.field @"blkAddr"
blkaddr ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "blkaddr" a) =>
  Lens.Family2.LensLike' f s a
blkaddr = Data.ProtoLens.Field.field @"blkaddr"
block ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "block" a) =>
  Lens.Family2.LensLike' f s a
block = Data.ProtoLens.Field.field @"block"
blocks ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "blocks" a) =>
  Lens.Family2.LensLike' f s a
blocks = Data.ProtoLens.Field.field @"blocks"
btype ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "btype" a) =>
  Lens.Family2.LensLike' f s a
btype = Data.ProtoLens.Field.field @"btype"
copied ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "copied" a) =>
  Lens.Family2.LensLike' f s a
copied = Data.ProtoLens.Field.field @"copied"
cost ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "cost" a) =>
  Lens.Family2.LensLike' f s a
cost = Data.ProtoLens.Field.field @"cost"
cpReason ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "cpReason" a) =>
  Lens.Family2.LensLike' f s a
cpReason = Data.ProtoLens.Field.field @"cpReason"
dRdAvg ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "dRdAvg" a) =>
  Lens.Family2.LensLike' f s a
dRdAvg = Data.ProtoLens.Field.field @"dRdAvg"
dRdCnt ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "dRdCnt" a) =>
  Lens.Family2.LensLike' f s a
dRdCnt = Data.ProtoLens.Field.field @"dRdCnt"
dRdPeak ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "dRdPeak" a) =>
  Lens.Family2.LensLike' f s a
dRdPeak = Data.ProtoLens.Field.field @"dRdPeak"
dWrAsAvg ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "dWrAsAvg" a) =>
  Lens.Family2.LensLike' f s a
dWrAsAvg = Data.ProtoLens.Field.field @"dWrAsAvg"
dWrAsCnt ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "dWrAsCnt" a) =>
  Lens.Family2.LensLike' f s a
dWrAsCnt = Data.ProtoLens.Field.field @"dWrAsCnt"
dWrAsPeak ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "dWrAsPeak" a) =>
  Lens.Family2.LensLike' f s a
dWrAsPeak = Data.ProtoLens.Field.field @"dWrAsPeak"
dWrSAvg ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "dWrSAvg" a) =>
  Lens.Family2.LensLike' f s a
dWrSAvg = Data.ProtoLens.Field.field @"dWrSAvg"
dWrSCnt ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "dWrSCnt" a) =>
  Lens.Family2.LensLike' f s a
dWrSCnt = Data.ProtoLens.Field.field @"dWrSCnt"
dWrSPeak ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "dWrSPeak" a) =>
  Lens.Family2.LensLike' f s a
dWrSPeak = Data.ProtoLens.Field.field @"dWrSPeak"
datasync ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "datasync" a) =>
  Lens.Family2.LensLike' f s a
datasync = Data.ProtoLens.Field.field @"datasync"
depth ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "depth" a) =>
  Lens.Family2.LensLike' f s a
depth = Data.ProtoLens.Field.field @"depth"
dev ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "dev" a) =>
  Lens.Family2.LensLike' f s a
dev = Data.ProtoLens.Field.field @"dev"
dir ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "dir" a) =>
  Lens.Family2.LensLike' f s a
dir = Data.ProtoLens.Field.field @"dir"
dirty ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "dirty" a) =>
  Lens.Family2.LensLike' f s a
dirty = Data.ProtoLens.Field.field @"dirty"
err ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "err" a) =>
  Lens.Family2.LensLike' f s a
err = Data.ProtoLens.Field.field @"err"
flags ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "flags" a) =>
  Lens.Family2.LensLike' f s a
flags = Data.ProtoLens.Field.field @"flags"
free ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "free" a) =>
  Lens.Family2.LensLike' f s a
free = Data.ProtoLens.Field.field @"free"
from ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "from" a) =>
  Lens.Family2.LensLike' f s a
from = Data.ProtoLens.Field.field @"from"
fsCdrio ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "fsCdrio" a) =>
  Lens.Family2.LensLike' f s a
fsCdrio = Data.ProtoLens.Field.field @"fsCdrio"
fsCpDio ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "fsCpDio" a) =>
  Lens.Family2.LensLike' f s a
fsCpDio = Data.ProtoLens.Field.field @"fsCpDio"
fsCpMio ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "fsCpMio" a) =>
  Lens.Family2.LensLike' f s a
fsCpMio = Data.ProtoLens.Field.field @"fsCpMio"
fsCpNio ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "fsCpNio" a) =>
  Lens.Family2.LensLike' f s a
fsCpNio = Data.ProtoLens.Field.field @"fsCpNio"
fsDio ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "fsDio" a) =>
  Lens.Family2.LensLike' f s a
fsDio = Data.ProtoLens.Field.field @"fsDio"
fsDiscard ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "fsDiscard" a) =>
  Lens.Family2.LensLike' f s a
fsDiscard = Data.ProtoLens.Field.field @"fsDiscard"
fsDrio ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "fsDrio" a) =>
  Lens.Family2.LensLike' f s a
fsDrio = Data.ProtoLens.Field.field @"fsDrio"
fsGcDio ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "fsGcDio" a) =>
  Lens.Family2.LensLike' f s a
fsGcDio = Data.ProtoLens.Field.field @"fsGcDio"
fsGcNio ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "fsGcNio" a) =>
  Lens.Family2.LensLike' f s a
fsGcNio = Data.ProtoLens.Field.field @"fsGcNio"
fsGdrio ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "fsGdrio" a) =>
  Lens.Family2.LensLike' f s a
fsGdrio = Data.ProtoLens.Field.field @"fsGdrio"
fsMio ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "fsMio" a) =>
  Lens.Family2.LensLike' f s a
fsMio = Data.ProtoLens.Field.field @"fsMio"
fsMrio ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "fsMrio" a) =>
  Lens.Family2.LensLike' f s a
fsMrio = Data.ProtoLens.Field.field @"fsMrio"
fsNio ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "fsNio" a) =>
  Lens.Family2.LensLike' f s a
fsNio = Data.ProtoLens.Field.field @"fsNio"
fsNrio ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "fsNrio" a) =>
  Lens.Family2.LensLike' f s a
fsNrio = Data.ProtoLens.Field.field @"fsNrio"
gcMode ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "gcMode" a) =>
  Lens.Family2.LensLike' f s a
gcMode = Data.ProtoLens.Field.field @"gcMode"
gcType ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "gcType" a) =>
  Lens.Family2.LensLike' f s a
gcType = Data.ProtoLens.Field.field @"gcType"
iblock ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "iblock" a) =>
  Lens.Family2.LensLike' f s a
iblock = Data.ProtoLens.Field.field @"iblock"
index ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "index" a) =>
  Lens.Family2.LensLike' f s a
index = Data.ProtoLens.Field.field @"index"
ino ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "ino" a) =>
  Lens.Family2.LensLike' f s a
ino = Data.ProtoLens.Field.field @"ino"
isUmount ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "isUmount" a) =>
  Lens.Family2.LensLike' f s a
isUmount = Data.ProtoLens.Field.field @"isUmount"
len ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "len" a) =>
  Lens.Family2.LensLike' f s a
len = Data.ProtoLens.Field.field @"len"
mRdAvg ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "mRdAvg" a) =>
  Lens.Family2.LensLike' f s a
mRdAvg = Data.ProtoLens.Field.field @"mRdAvg"
mRdCnt ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "mRdCnt" a) =>
  Lens.Family2.LensLike' f s a
mRdCnt = Data.ProtoLens.Field.field @"mRdCnt"
mRdPeak ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "mRdPeak" a) =>
  Lens.Family2.LensLike' f s a
mRdPeak = Data.ProtoLens.Field.field @"mRdPeak"
mWrAsAvg ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "mWrAsAvg" a) =>
  Lens.Family2.LensLike' f s a
mWrAsAvg = Data.ProtoLens.Field.field @"mWrAsAvg"
mWrAsCnt ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "mWrAsCnt" a) =>
  Lens.Family2.LensLike' f s a
mWrAsCnt = Data.ProtoLens.Field.field @"mWrAsCnt"
mWrAsPeak ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "mWrAsPeak" a) =>
  Lens.Family2.LensLike' f s a
mWrAsPeak = Data.ProtoLens.Field.field @"mWrAsPeak"
mWrSAvg ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "mWrSAvg" a) =>
  Lens.Family2.LensLike' f s a
mWrSAvg = Data.ProtoLens.Field.field @"mWrSAvg"
mWrSCnt ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "mWrSCnt" a) =>
  Lens.Family2.LensLike' f s a
mWrSCnt = Data.ProtoLens.Field.field @"mWrSCnt"
mWrSPeak ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "mWrSPeak" a) =>
  Lens.Family2.LensLike' f s a
mWrSPeak = Data.ProtoLens.Field.field @"mWrSPeak"
maybe'advise ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'advise" a) =>
  Lens.Family2.LensLike' f s a
maybe'advise = Data.ProtoLens.Field.field @"maybe'advise"
maybe'allocMode ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'allocMode" a) =>
  Lens.Family2.LensLike' f s a
maybe'allocMode = Data.ProtoLens.Field.field @"maybe'allocMode"
maybe'appBio ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'appBio" a) =>
  Lens.Family2.LensLike' f s a
maybe'appBio = Data.ProtoLens.Field.field @"maybe'appBio"
maybe'appBrio ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'appBrio" a) =>
  Lens.Family2.LensLike' f s a
maybe'appBrio = Data.ProtoLens.Field.field @"maybe'appBrio"
maybe'appDio ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'appDio" a) =>
  Lens.Family2.LensLike' f s a
maybe'appDio = Data.ProtoLens.Field.field @"maybe'appDio"
maybe'appDrio ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'appDrio" a) =>
  Lens.Family2.LensLike' f s a
maybe'appDrio = Data.ProtoLens.Field.field @"maybe'appDrio"
maybe'appMio ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'appMio" a) =>
  Lens.Family2.LensLike' f s a
maybe'appMio = Data.ProtoLens.Field.field @"maybe'appMio"
maybe'appMrio ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'appMrio" a) =>
  Lens.Family2.LensLike' f s a
maybe'appMrio = Data.ProtoLens.Field.field @"maybe'appMrio"
maybe'appRio ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'appRio" a) =>
  Lens.Family2.LensLike' f s a
maybe'appRio = Data.ProtoLens.Field.field @"maybe'appRio"
maybe'appWio ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'appWio" a) =>
  Lens.Family2.LensLike' f s a
maybe'appWio = Data.ProtoLens.Field.field @"maybe'appWio"
maybe'bhSize ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'bhSize" a) =>
  Lens.Family2.LensLike' f s a
maybe'bhSize = Data.ProtoLens.Field.field @"maybe'bhSize"
maybe'bhStart ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'bhStart" a) =>
  Lens.Family2.LensLike' f s a
maybe'bhStart = Data.ProtoLens.Field.field @"maybe'bhStart"
maybe'blkAddr ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'blkAddr" a) =>
  Lens.Family2.LensLike' f s a
maybe'blkAddr = Data.ProtoLens.Field.field @"maybe'blkAddr"
maybe'blkaddr ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'blkaddr" a) =>
  Lens.Family2.LensLike' f s a
maybe'blkaddr = Data.ProtoLens.Field.field @"maybe'blkaddr"
maybe'block ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'block" a) =>
  Lens.Family2.LensLike' f s a
maybe'block = Data.ProtoLens.Field.field @"maybe'block"
maybe'blocks ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'blocks" a) =>
  Lens.Family2.LensLike' f s a
maybe'blocks = Data.ProtoLens.Field.field @"maybe'blocks"
maybe'btype ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'btype" a) =>
  Lens.Family2.LensLike' f s a
maybe'btype = Data.ProtoLens.Field.field @"maybe'btype"
maybe'copied ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'copied" a) =>
  Lens.Family2.LensLike' f s a
maybe'copied = Data.ProtoLens.Field.field @"maybe'copied"
maybe'cost ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'cost" a) =>
  Lens.Family2.LensLike' f s a
maybe'cost = Data.ProtoLens.Field.field @"maybe'cost"
maybe'cpReason ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'cpReason" a) =>
  Lens.Family2.LensLike' f s a
maybe'cpReason = Data.ProtoLens.Field.field @"maybe'cpReason"
maybe'dRdAvg ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'dRdAvg" a) =>
  Lens.Family2.LensLike' f s a
maybe'dRdAvg = Data.ProtoLens.Field.field @"maybe'dRdAvg"
maybe'dRdCnt ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'dRdCnt" a) =>
  Lens.Family2.LensLike' f s a
maybe'dRdCnt = Data.ProtoLens.Field.field @"maybe'dRdCnt"
maybe'dRdPeak ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'dRdPeak" a) =>
  Lens.Family2.LensLike' f s a
maybe'dRdPeak = Data.ProtoLens.Field.field @"maybe'dRdPeak"
maybe'dWrAsAvg ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'dWrAsAvg" a) =>
  Lens.Family2.LensLike' f s a
maybe'dWrAsAvg = Data.ProtoLens.Field.field @"maybe'dWrAsAvg"
maybe'dWrAsCnt ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'dWrAsCnt" a) =>
  Lens.Family2.LensLike' f s a
maybe'dWrAsCnt = Data.ProtoLens.Field.field @"maybe'dWrAsCnt"
maybe'dWrAsPeak ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'dWrAsPeak" a) =>
  Lens.Family2.LensLike' f s a
maybe'dWrAsPeak = Data.ProtoLens.Field.field @"maybe'dWrAsPeak"
maybe'dWrSAvg ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'dWrSAvg" a) =>
  Lens.Family2.LensLike' f s a
maybe'dWrSAvg = Data.ProtoLens.Field.field @"maybe'dWrSAvg"
maybe'dWrSCnt ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'dWrSCnt" a) =>
  Lens.Family2.LensLike' f s a
maybe'dWrSCnt = Data.ProtoLens.Field.field @"maybe'dWrSCnt"
maybe'dWrSPeak ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'dWrSPeak" a) =>
  Lens.Family2.LensLike' f s a
maybe'dWrSPeak = Data.ProtoLens.Field.field @"maybe'dWrSPeak"
maybe'datasync ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'datasync" a) =>
  Lens.Family2.LensLike' f s a
maybe'datasync = Data.ProtoLens.Field.field @"maybe'datasync"
maybe'depth ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'depth" a) =>
  Lens.Family2.LensLike' f s a
maybe'depth = Data.ProtoLens.Field.field @"maybe'depth"
maybe'dev ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'dev" a) =>
  Lens.Family2.LensLike' f s a
maybe'dev = Data.ProtoLens.Field.field @"maybe'dev"
maybe'dir ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'dir" a) =>
  Lens.Family2.LensLike' f s a
maybe'dir = Data.ProtoLens.Field.field @"maybe'dir"
maybe'dirty ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'dirty" a) =>
  Lens.Family2.LensLike' f s a
maybe'dirty = Data.ProtoLens.Field.field @"maybe'dirty"
maybe'err ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'err" a) =>
  Lens.Family2.LensLike' f s a
maybe'err = Data.ProtoLens.Field.field @"maybe'err"
maybe'flags ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'flags" a) =>
  Lens.Family2.LensLike' f s a
maybe'flags = Data.ProtoLens.Field.field @"maybe'flags"
maybe'free ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'free" a) =>
  Lens.Family2.LensLike' f s a
maybe'free = Data.ProtoLens.Field.field @"maybe'free"
maybe'from ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'from" a) =>
  Lens.Family2.LensLike' f s a
maybe'from = Data.ProtoLens.Field.field @"maybe'from"
maybe'fsCdrio ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'fsCdrio" a) =>
  Lens.Family2.LensLike' f s a
maybe'fsCdrio = Data.ProtoLens.Field.field @"maybe'fsCdrio"
maybe'fsCpDio ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'fsCpDio" a) =>
  Lens.Family2.LensLike' f s a
maybe'fsCpDio = Data.ProtoLens.Field.field @"maybe'fsCpDio"
maybe'fsCpMio ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'fsCpMio" a) =>
  Lens.Family2.LensLike' f s a
maybe'fsCpMio = Data.ProtoLens.Field.field @"maybe'fsCpMio"
maybe'fsCpNio ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'fsCpNio" a) =>
  Lens.Family2.LensLike' f s a
maybe'fsCpNio = Data.ProtoLens.Field.field @"maybe'fsCpNio"
maybe'fsDio ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'fsDio" a) =>
  Lens.Family2.LensLike' f s a
maybe'fsDio = Data.ProtoLens.Field.field @"maybe'fsDio"
maybe'fsDiscard ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'fsDiscard" a) =>
  Lens.Family2.LensLike' f s a
maybe'fsDiscard = Data.ProtoLens.Field.field @"maybe'fsDiscard"
maybe'fsDrio ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'fsDrio" a) =>
  Lens.Family2.LensLike' f s a
maybe'fsDrio = Data.ProtoLens.Field.field @"maybe'fsDrio"
maybe'fsGcDio ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'fsGcDio" a) =>
  Lens.Family2.LensLike' f s a
maybe'fsGcDio = Data.ProtoLens.Field.field @"maybe'fsGcDio"
maybe'fsGcNio ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'fsGcNio" a) =>
  Lens.Family2.LensLike' f s a
maybe'fsGcNio = Data.ProtoLens.Field.field @"maybe'fsGcNio"
maybe'fsGdrio ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'fsGdrio" a) =>
  Lens.Family2.LensLike' f s a
maybe'fsGdrio = Data.ProtoLens.Field.field @"maybe'fsGdrio"
maybe'fsMio ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'fsMio" a) =>
  Lens.Family2.LensLike' f s a
maybe'fsMio = Data.ProtoLens.Field.field @"maybe'fsMio"
maybe'fsMrio ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'fsMrio" a) =>
  Lens.Family2.LensLike' f s a
maybe'fsMrio = Data.ProtoLens.Field.field @"maybe'fsMrio"
maybe'fsNio ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'fsNio" a) =>
  Lens.Family2.LensLike' f s a
maybe'fsNio = Data.ProtoLens.Field.field @"maybe'fsNio"
maybe'fsNrio ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'fsNrio" a) =>
  Lens.Family2.LensLike' f s a
maybe'fsNrio = Data.ProtoLens.Field.field @"maybe'fsNrio"
maybe'gcMode ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'gcMode" a) =>
  Lens.Family2.LensLike' f s a
maybe'gcMode = Data.ProtoLens.Field.field @"maybe'gcMode"
maybe'gcType ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'gcType" a) =>
  Lens.Family2.LensLike' f s a
maybe'gcType = Data.ProtoLens.Field.field @"maybe'gcType"
maybe'iblock ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'iblock" a) =>
  Lens.Family2.LensLike' f s a
maybe'iblock = Data.ProtoLens.Field.field @"maybe'iblock"
maybe'index ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'index" a) =>
  Lens.Family2.LensLike' f s a
maybe'index = Data.ProtoLens.Field.field @"maybe'index"
maybe'ino ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'ino" a) =>
  Lens.Family2.LensLike' f s a
maybe'ino = Data.ProtoLens.Field.field @"maybe'ino"
maybe'isUmount ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'isUmount" a) =>
  Lens.Family2.LensLike' f s a
maybe'isUmount = Data.ProtoLens.Field.field @"maybe'isUmount"
maybe'len ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'len" a) =>
  Lens.Family2.LensLike' f s a
maybe'len = Data.ProtoLens.Field.field @"maybe'len"
maybe'mRdAvg ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'mRdAvg" a) =>
  Lens.Family2.LensLike' f s a
maybe'mRdAvg = Data.ProtoLens.Field.field @"maybe'mRdAvg"
maybe'mRdCnt ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'mRdCnt" a) =>
  Lens.Family2.LensLike' f s a
maybe'mRdCnt = Data.ProtoLens.Field.field @"maybe'mRdCnt"
maybe'mRdPeak ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'mRdPeak" a) =>
  Lens.Family2.LensLike' f s a
maybe'mRdPeak = Data.ProtoLens.Field.field @"maybe'mRdPeak"
maybe'mWrAsAvg ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'mWrAsAvg" a) =>
  Lens.Family2.LensLike' f s a
maybe'mWrAsAvg = Data.ProtoLens.Field.field @"maybe'mWrAsAvg"
maybe'mWrAsCnt ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'mWrAsCnt" a) =>
  Lens.Family2.LensLike' f s a
maybe'mWrAsCnt = Data.ProtoLens.Field.field @"maybe'mWrAsCnt"
maybe'mWrAsPeak ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'mWrAsPeak" a) =>
  Lens.Family2.LensLike' f s a
maybe'mWrAsPeak = Data.ProtoLens.Field.field @"maybe'mWrAsPeak"
maybe'mWrSAvg ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'mWrSAvg" a) =>
  Lens.Family2.LensLike' f s a
maybe'mWrSAvg = Data.ProtoLens.Field.field @"maybe'mWrSAvg"
maybe'mWrSCnt ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'mWrSCnt" a) =>
  Lens.Family2.LensLike' f s a
maybe'mWrSCnt = Data.ProtoLens.Field.field @"maybe'mWrSCnt"
maybe'mWrSPeak ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'mWrSPeak" a) =>
  Lens.Family2.LensLike' f s a
maybe'mWrSPeak = Data.ProtoLens.Field.field @"maybe'mWrSPeak"
maybe'mode ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'mode" a) =>
  Lens.Family2.LensLike' f s a
maybe'mode = Data.ProtoLens.Field.field @"maybe'mode"
maybe'msg ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'msg" a) =>
  Lens.Family2.LensLike' f s a
maybe'msg = Data.ProtoLens.Field.field @"maybe'msg"
maybe'nRdAvg ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'nRdAvg" a) =>
  Lens.Family2.LensLike' f s a
maybe'nRdAvg = Data.ProtoLens.Field.field @"maybe'nRdAvg"
maybe'nRdCnt ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'nRdCnt" a) =>
  Lens.Family2.LensLike' f s a
maybe'nRdCnt = Data.ProtoLens.Field.field @"maybe'nRdCnt"
maybe'nRdPeak ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'nRdPeak" a) =>
  Lens.Family2.LensLike' f s a
maybe'nRdPeak = Data.ProtoLens.Field.field @"maybe'nRdPeak"
maybe'nWrAsAvg ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'nWrAsAvg" a) =>
  Lens.Family2.LensLike' f s a
maybe'nWrAsAvg = Data.ProtoLens.Field.field @"maybe'nWrAsAvg"
maybe'nWrAsCnt ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'nWrAsCnt" a) =>
  Lens.Family2.LensLike' f s a
maybe'nWrAsCnt = Data.ProtoLens.Field.field @"maybe'nWrAsCnt"
maybe'nWrAsPeak ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'nWrAsPeak" a) =>
  Lens.Family2.LensLike' f s a
maybe'nWrAsPeak = Data.ProtoLens.Field.field @"maybe'nWrAsPeak"
maybe'nWrSAvg ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'nWrSAvg" a) =>
  Lens.Family2.LensLike' f s a
maybe'nWrSAvg = Data.ProtoLens.Field.field @"maybe'nWrSAvg"
maybe'nWrSCnt ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'nWrSCnt" a) =>
  Lens.Family2.LensLike' f s a
maybe'nWrSCnt = Data.ProtoLens.Field.field @"maybe'nWrSCnt"
maybe'nWrSPeak ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'nWrSPeak" a) =>
  Lens.Family2.LensLike' f s a
maybe'nWrSPeak = Data.ProtoLens.Field.field @"maybe'nWrSPeak"
maybe'name ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'name" a) =>
  Lens.Family2.LensLike' f s a
maybe'name = Data.ProtoLens.Field.field @"maybe'name"
maybe'needCp ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'needCp" a) =>
  Lens.Family2.LensLike' f s a
maybe'needCp = Data.ProtoLens.Field.field @"maybe'needCp"
maybe'nid ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'nid" a) =>
  Lens.Family2.LensLike' f s a
maybe'nid = Data.ProtoLens.Field.field @"maybe'nid"
maybe'nlink ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'nlink" a) =>
  Lens.Family2.LensLike' f s a
maybe'nlink = Data.ProtoLens.Field.field @"maybe'nlink"
maybe'offset ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'offset" a) =>
  Lens.Family2.LensLike' f s a
maybe'offset = Data.ProtoLens.Field.field @"maybe'offset"
maybe'ofs ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'ofs" a) =>
  Lens.Family2.LensLike' f s a
maybe'ofs = Data.ProtoLens.Field.field @"maybe'ofs"
maybe'ofsInNode ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'ofsInNode" a) =>
  Lens.Family2.LensLike' f s a
maybe'ofsInNode = Data.ProtoLens.Field.field @"maybe'ofsInNode"
maybe'ofsUnit ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'ofsUnit" a) =>
  Lens.Family2.LensLike' f s a
maybe'ofsUnit = Data.ProtoLens.Field.field @"maybe'ofsUnit"
maybe'pino ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'pino" a) =>
  Lens.Family2.LensLike' f s a
maybe'pino = Data.ProtoLens.Field.field @"maybe'pino"
maybe'pos ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'pos" a) =>
  Lens.Family2.LensLike' f s a
maybe'pos = Data.ProtoLens.Field.field @"maybe'pos"
maybe'preVictim ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'preVictim" a) =>
  Lens.Family2.LensLike' f s a
maybe'preVictim = Data.ProtoLens.Field.field @"maybe'preVictim"
maybe'prefree ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'prefree" a) =>
  Lens.Family2.LensLike' f s a
maybe'prefree = Data.ProtoLens.Field.field @"maybe'prefree"
maybe'reason ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'reason" a) =>
  Lens.Family2.LensLike' f s a
maybe'reason = Data.ProtoLens.Field.field @"maybe'reason"
maybe'ret ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'ret" a) =>
  Lens.Family2.LensLike' f s a
maybe'ret = Data.ProtoLens.Field.field @"maybe'ret"
maybe'sector ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'sector" a) =>
  Lens.Family2.LensLike' f s a
maybe'sector = Data.ProtoLens.Field.field @"maybe'sector"
maybe'size ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'size" a) =>
  Lens.Family2.LensLike' f s a
maybe'size = Data.ProtoLens.Field.field @"maybe'size"
maybe'sync ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'sync" a) =>
  Lens.Family2.LensLike' f s a
maybe'sync = Data.ProtoLens.Field.field @"maybe'sync"
maybe'type' ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'type'" a) =>
  Lens.Family2.LensLike' f s a
maybe'type' = Data.ProtoLens.Field.field @"maybe'type'"
maybe'uptodate ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'uptodate" a) =>
  Lens.Family2.LensLike' f s a
maybe'uptodate = Data.ProtoLens.Field.field @"maybe'uptodate"
maybe'victim ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'victim" a) =>
  Lens.Family2.LensLike' f s a
maybe'victim = Data.ProtoLens.Field.field @"maybe'victim"
maybe'wait ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'wait" a) =>
  Lens.Family2.LensLike' f s a
maybe'wait = Data.ProtoLens.Field.field @"maybe'wait"
mode ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "mode" a) =>
  Lens.Family2.LensLike' f s a
mode = Data.ProtoLens.Field.field @"mode"
msg ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "msg" a) =>
  Lens.Family2.LensLike' f s a
msg = Data.ProtoLens.Field.field @"msg"
nRdAvg ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "nRdAvg" a) =>
  Lens.Family2.LensLike' f s a
nRdAvg = Data.ProtoLens.Field.field @"nRdAvg"
nRdCnt ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "nRdCnt" a) =>
  Lens.Family2.LensLike' f s a
nRdCnt = Data.ProtoLens.Field.field @"nRdCnt"
nRdPeak ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "nRdPeak" a) =>
  Lens.Family2.LensLike' f s a
nRdPeak = Data.ProtoLens.Field.field @"nRdPeak"
nWrAsAvg ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "nWrAsAvg" a) =>
  Lens.Family2.LensLike' f s a
nWrAsAvg = Data.ProtoLens.Field.field @"nWrAsAvg"
nWrAsCnt ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "nWrAsCnt" a) =>
  Lens.Family2.LensLike' f s a
nWrAsCnt = Data.ProtoLens.Field.field @"nWrAsCnt"
nWrAsPeak ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "nWrAsPeak" a) =>
  Lens.Family2.LensLike' f s a
nWrAsPeak = Data.ProtoLens.Field.field @"nWrAsPeak"
nWrSAvg ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "nWrSAvg" a) =>
  Lens.Family2.LensLike' f s a
nWrSAvg = Data.ProtoLens.Field.field @"nWrSAvg"
nWrSCnt ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "nWrSCnt" a) =>
  Lens.Family2.LensLike' f s a
nWrSCnt = Data.ProtoLens.Field.field @"nWrSCnt"
nWrSPeak ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "nWrSPeak" a) =>
  Lens.Family2.LensLike' f s a
nWrSPeak = Data.ProtoLens.Field.field @"nWrSPeak"
name ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "name" a) =>
  Lens.Family2.LensLike' f s a
name = Data.ProtoLens.Field.field @"name"
needCp ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "needCp" a) =>
  Lens.Family2.LensLike' f s a
needCp = Data.ProtoLens.Field.field @"needCp"
nid ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "nid" a) =>
  Lens.Family2.LensLike' f s a
nid = Data.ProtoLens.Field.field @"nid"
nlink ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "nlink" a) =>
  Lens.Family2.LensLike' f s a
nlink = Data.ProtoLens.Field.field @"nlink"
offset ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "offset" a) =>
  Lens.Family2.LensLike' f s a
offset = Data.ProtoLens.Field.field @"offset"
ofs ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "ofs" a) =>
  Lens.Family2.LensLike' f s a
ofs = Data.ProtoLens.Field.field @"ofs"
ofsInNode ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "ofsInNode" a) =>
  Lens.Family2.LensLike' f s a
ofsInNode = Data.ProtoLens.Field.field @"ofsInNode"
ofsUnit ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "ofsUnit" a) =>
  Lens.Family2.LensLike' f s a
ofsUnit = Data.ProtoLens.Field.field @"ofsUnit"
pino ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "pino" a) =>
  Lens.Family2.LensLike' f s a
pino = Data.ProtoLens.Field.field @"pino"
pos ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "pos" a) =>
  Lens.Family2.LensLike' f s a
pos = Data.ProtoLens.Field.field @"pos"
preVictim ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "preVictim" a) =>
  Lens.Family2.LensLike' f s a
preVictim = Data.ProtoLens.Field.field @"preVictim"
prefree ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "prefree" a) =>
  Lens.Family2.LensLike' f s a
prefree = Data.ProtoLens.Field.field @"prefree"
reason ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "reason" a) =>
  Lens.Family2.LensLike' f s a
reason = Data.ProtoLens.Field.field @"reason"
ret ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "ret" a) =>
  Lens.Family2.LensLike' f s a
ret = Data.ProtoLens.Field.field @"ret"
sector ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "sector" a) =>
  Lens.Family2.LensLike' f s a
sector = Data.ProtoLens.Field.field @"sector"
size ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "size" a) =>
  Lens.Family2.LensLike' f s a
size = Data.ProtoLens.Field.field @"size"
sync ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "sync" a) =>
  Lens.Family2.LensLike' f s a
sync = Data.ProtoLens.Field.field @"sync"
type' ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "type'" a) =>
  Lens.Family2.LensLike' f s a
type' = Data.ProtoLens.Field.field @"type'"
uptodate ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "uptodate" a) =>
  Lens.Family2.LensLike' f s a
uptodate = Data.ProtoLens.Field.field @"uptodate"
victim ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "victim" a) =>
  Lens.Family2.LensLike' f s a
victim = Data.ProtoLens.Field.field @"victim"
wait ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "wait" a) =>
  Lens.Family2.LensLike' f s a
wait = Data.ProtoLens.Field.field @"wait"