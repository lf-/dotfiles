{- This file was auto-generated from protos/perfetto/trace/ftrace/ext4.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Protos.Perfetto.Trace.Ftrace.Ext4_Fields where
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
allocated ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "allocated" a) =>
  Lens.Family2.LensLike' f s a
allocated = Data.ProtoLens.Field.field @"allocated"
allocatedMetaBlocks ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "allocatedMetaBlocks" a) =>
  Lens.Family2.LensLike' f s a
allocatedMetaBlocks
  = Data.ProtoLens.Field.field @"allocatedMetaBlocks"
bBlocknr ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "bBlocknr" a) =>
  Lens.Family2.LensLike' f s a
bBlocknr = Data.ProtoLens.Field.field @"bBlocknr"
bSize ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "bSize" a) =>
  Lens.Family2.LensLike' f s a
bSize = Data.ProtoLens.Field.field @"bSize"
bState ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "bState" a) =>
  Lens.Family2.LensLike' f s a
bState = Data.ProtoLens.Field.field @"bState"
blk ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "blk" a) =>
  Lens.Family2.LensLike' f s a
blk = Data.ProtoLens.Field.field @"blk"
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
buddy ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "buddy" a) =>
  Lens.Family2.LensLike' f s a
buddy = Data.ProtoLens.Field.field @"buddy"
cacheCnt ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "cacheCnt" a) =>
  Lens.Family2.LensLike' f s a
cacheCnt = Data.ProtoLens.Field.field @"cacheCnt"
copied ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "copied" a) =>
  Lens.Family2.LensLike' f s a
copied = Data.ProtoLens.Field.field @"copied"
count ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "count" a) =>
  Lens.Family2.LensLike' f s a
count = Data.ProtoLens.Field.field @"count"
cr ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "cr" a) =>
  Lens.Family2.LensLike' f s a
cr = Data.ProtoLens.Field.field @"cr"
dataBlocks ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "dataBlocks" a) =>
  Lens.Family2.LensLike' f s a
dataBlocks = Data.ProtoLens.Field.field @"dataBlocks"
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
devMajor ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "devMajor" a) =>
  Lens.Family2.LensLike' f s a
devMajor = Data.ProtoLens.Field.field @"devMajor"
devMinor ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "devMinor" a) =>
  Lens.Family2.LensLike' f s a
devMinor = Data.ProtoLens.Field.field @"devMinor"
dir ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "dir" a) =>
  Lens.Family2.LensLike' f s a
dir = Data.ProtoLens.Field.field @"dir"
drop ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "drop" a) =>
  Lens.Family2.LensLike' f s a
drop = Data.ProtoLens.Field.field @"drop"
eeLblk ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "eeLblk" a) =>
  Lens.Family2.LensLike' f s a
eeLblk = Data.ProtoLens.Field.field @"eeLblk"
eeLen ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "eeLen" a) =>
  Lens.Family2.LensLike' f s a
eeLen = Data.ProtoLens.Field.field @"eeLen"
eePblk ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "eePblk" a) =>
  Lens.Family2.LensLike' f s a
eePblk = Data.ProtoLens.Field.field @"eePblk"
ehEntries ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "ehEntries" a) =>
  Lens.Family2.LensLike' f s a
ehEntries = Data.ProtoLens.Field.field @"ehEntries"
end ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "end" a) =>
  Lens.Family2.LensLike' f s a
end = Data.ProtoLens.Field.field @"end"
firstPage ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "firstPage" a) =>
  Lens.Family2.LensLike' f s a
firstPage = Data.ProtoLens.Field.field @"firstPage"
flags ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "flags" a) =>
  Lens.Family2.LensLike' f s a
flags = Data.ProtoLens.Field.field @"flags"
forKupdate ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "forKupdate" a) =>
  Lens.Family2.LensLike' f s a
forKupdate = Data.ProtoLens.Field.field @"forKupdate"
found ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "found" a) =>
  Lens.Family2.LensLike' f s a
found = Data.ProtoLens.Field.field @"found"
foundBlk ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "foundBlk" a) =>
  Lens.Family2.LensLike' f s a
foundBlk = Data.ProtoLens.Field.field @"foundBlk"
freedBlocks ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "freedBlocks" a) =>
  Lens.Family2.LensLike' f s a
freedBlocks = Data.ProtoLens.Field.field @"freedBlocks"
from ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "from" a) =>
  Lens.Family2.LensLike' f s a
from = Data.ProtoLens.Field.field @"from"
gid ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "gid" a) =>
  Lens.Family2.LensLike' f s a
gid = Data.ProtoLens.Field.field @"gid"
goal ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "goal" a) =>
  Lens.Family2.LensLike' f s a
goal = Data.ProtoLens.Field.field @"goal"
goalGroup ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "goalGroup" a) =>
  Lens.Family2.LensLike' f s a
goalGroup = Data.ProtoLens.Field.field @"goalGroup"
goalLen ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "goalLen" a) =>
  Lens.Family2.LensLike' f s a
goalLen = Data.ProtoLens.Field.field @"goalLen"
goalLogical ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "goalLogical" a) =>
  Lens.Family2.LensLike' f s a
goalLogical = Data.ProtoLens.Field.field @"goalLogical"
goalStart ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "goalStart" a) =>
  Lens.Family2.LensLike' f s a
goalStart = Data.ProtoLens.Field.field @"goalStart"
group ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "group" a) =>
  Lens.Family2.LensLike' f s a
group = Data.ProtoLens.Field.field @"group"
groups ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "groups" a) =>
  Lens.Family2.LensLike' f s a
groups = Data.ProtoLens.Field.field @"groups"
iBlocks ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "iBlocks" a) =>
  Lens.Family2.LensLike' f s a
iBlocks = Data.ProtoLens.Field.field @"iBlocks"
iLblk ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "iLblk" a) =>
  Lens.Family2.LensLike' f s a
iLblk = Data.ProtoLens.Field.field @"iLblk"
iLen ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "iLen" a) =>
  Lens.Family2.LensLike' f s a
iLen = Data.ProtoLens.Field.field @"iLen"
iPblk ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "iPblk" a) =>
  Lens.Family2.LensLike' f s a
iPblk = Data.ProtoLens.Field.field @"iPblk"
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
ioDone ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "ioDone" a) =>
  Lens.Family2.LensLike' f s a
ioDone = Data.ProtoLens.Field.field @"ioDone"
ip ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "ip" a) =>
  Lens.Family2.LensLike' f s a
ip = Data.ProtoLens.Field.field @"ip"
isMetadata ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "isMetadata" a) =>
  Lens.Family2.LensLike' f s a
isMetadata = Data.ProtoLens.Field.field @"isMetadata"
lblk ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "lblk" a) =>
  Lens.Family2.LensLike' f s a
lblk = Data.ProtoLens.Field.field @"lblk"
len ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "len" a) =>
  Lens.Family2.LensLike' f s a
len = Data.ProtoLens.Field.field @"len"
length ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "length" a) =>
  Lens.Family2.LensLike' f s a
length = Data.ProtoLens.Field.field @"length"
lleft ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "lleft" a) =>
  Lens.Family2.LensLike' f s a
lleft = Data.ProtoLens.Field.field @"lleft"
logical ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "logical" a) =>
  Lens.Family2.LensLike' f s a
logical = Data.ProtoLens.Field.field @"logical"
lright ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "lright" a) =>
  Lens.Family2.LensLike' f s a
lright = Data.ProtoLens.Field.field @"lright"
mLblk ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "mLblk" a) =>
  Lens.Family2.LensLike' f s a
mLblk = Data.ProtoLens.Field.field @"mLblk"
mLen ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "mLen" a) =>
  Lens.Family2.LensLike' f s a
mLen = Data.ProtoLens.Field.field @"mLen"
maybe'allocated ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'allocated" a) =>
  Lens.Family2.LensLike' f s a
maybe'allocated = Data.ProtoLens.Field.field @"maybe'allocated"
maybe'allocatedMetaBlocks ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'allocatedMetaBlocks" a) =>
  Lens.Family2.LensLike' f s a
maybe'allocatedMetaBlocks
  = Data.ProtoLens.Field.field @"maybe'allocatedMetaBlocks"
maybe'bBlocknr ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'bBlocknr" a) =>
  Lens.Family2.LensLike' f s a
maybe'bBlocknr = Data.ProtoLens.Field.field @"maybe'bBlocknr"
maybe'bSize ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'bSize" a) =>
  Lens.Family2.LensLike' f s a
maybe'bSize = Data.ProtoLens.Field.field @"maybe'bSize"
maybe'bState ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'bState" a) =>
  Lens.Family2.LensLike' f s a
maybe'bState = Data.ProtoLens.Field.field @"maybe'bState"
maybe'blk ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'blk" a) =>
  Lens.Family2.LensLike' f s a
maybe'blk = Data.ProtoLens.Field.field @"maybe'blk"
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
maybe'buddy ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'buddy" a) =>
  Lens.Family2.LensLike' f s a
maybe'buddy = Data.ProtoLens.Field.field @"maybe'buddy"
maybe'cacheCnt ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'cacheCnt" a) =>
  Lens.Family2.LensLike' f s a
maybe'cacheCnt = Data.ProtoLens.Field.field @"maybe'cacheCnt"
maybe'copied ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'copied" a) =>
  Lens.Family2.LensLike' f s a
maybe'copied = Data.ProtoLens.Field.field @"maybe'copied"
maybe'count ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'count" a) =>
  Lens.Family2.LensLike' f s a
maybe'count = Data.ProtoLens.Field.field @"maybe'count"
maybe'cr ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'cr" a) =>
  Lens.Family2.LensLike' f s a
maybe'cr = Data.ProtoLens.Field.field @"maybe'cr"
maybe'dataBlocks ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'dataBlocks" a) =>
  Lens.Family2.LensLike' f s a
maybe'dataBlocks = Data.ProtoLens.Field.field @"maybe'dataBlocks"
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
maybe'devMajor ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'devMajor" a) =>
  Lens.Family2.LensLike' f s a
maybe'devMajor = Data.ProtoLens.Field.field @"maybe'devMajor"
maybe'devMinor ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'devMinor" a) =>
  Lens.Family2.LensLike' f s a
maybe'devMinor = Data.ProtoLens.Field.field @"maybe'devMinor"
maybe'dir ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'dir" a) =>
  Lens.Family2.LensLike' f s a
maybe'dir = Data.ProtoLens.Field.field @"maybe'dir"
maybe'drop ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'drop" a) =>
  Lens.Family2.LensLike' f s a
maybe'drop = Data.ProtoLens.Field.field @"maybe'drop"
maybe'eeLblk ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'eeLblk" a) =>
  Lens.Family2.LensLike' f s a
maybe'eeLblk = Data.ProtoLens.Field.field @"maybe'eeLblk"
maybe'eeLen ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'eeLen" a) =>
  Lens.Family2.LensLike' f s a
maybe'eeLen = Data.ProtoLens.Field.field @"maybe'eeLen"
maybe'eePblk ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'eePblk" a) =>
  Lens.Family2.LensLike' f s a
maybe'eePblk = Data.ProtoLens.Field.field @"maybe'eePblk"
maybe'ehEntries ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'ehEntries" a) =>
  Lens.Family2.LensLike' f s a
maybe'ehEntries = Data.ProtoLens.Field.field @"maybe'ehEntries"
maybe'end ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'end" a) =>
  Lens.Family2.LensLike' f s a
maybe'end = Data.ProtoLens.Field.field @"maybe'end"
maybe'firstPage ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'firstPage" a) =>
  Lens.Family2.LensLike' f s a
maybe'firstPage = Data.ProtoLens.Field.field @"maybe'firstPage"
maybe'flags ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'flags" a) =>
  Lens.Family2.LensLike' f s a
maybe'flags = Data.ProtoLens.Field.field @"maybe'flags"
maybe'forKupdate ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'forKupdate" a) =>
  Lens.Family2.LensLike' f s a
maybe'forKupdate = Data.ProtoLens.Field.field @"maybe'forKupdate"
maybe'found ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'found" a) =>
  Lens.Family2.LensLike' f s a
maybe'found = Data.ProtoLens.Field.field @"maybe'found"
maybe'foundBlk ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'foundBlk" a) =>
  Lens.Family2.LensLike' f s a
maybe'foundBlk = Data.ProtoLens.Field.field @"maybe'foundBlk"
maybe'freedBlocks ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'freedBlocks" a) =>
  Lens.Family2.LensLike' f s a
maybe'freedBlocks = Data.ProtoLens.Field.field @"maybe'freedBlocks"
maybe'from ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'from" a) =>
  Lens.Family2.LensLike' f s a
maybe'from = Data.ProtoLens.Field.field @"maybe'from"
maybe'gid ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'gid" a) =>
  Lens.Family2.LensLike' f s a
maybe'gid = Data.ProtoLens.Field.field @"maybe'gid"
maybe'goal ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'goal" a) =>
  Lens.Family2.LensLike' f s a
maybe'goal = Data.ProtoLens.Field.field @"maybe'goal"
maybe'goalGroup ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'goalGroup" a) =>
  Lens.Family2.LensLike' f s a
maybe'goalGroup = Data.ProtoLens.Field.field @"maybe'goalGroup"
maybe'goalLen ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'goalLen" a) =>
  Lens.Family2.LensLike' f s a
maybe'goalLen = Data.ProtoLens.Field.field @"maybe'goalLen"
maybe'goalLogical ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'goalLogical" a) =>
  Lens.Family2.LensLike' f s a
maybe'goalLogical = Data.ProtoLens.Field.field @"maybe'goalLogical"
maybe'goalStart ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'goalStart" a) =>
  Lens.Family2.LensLike' f s a
maybe'goalStart = Data.ProtoLens.Field.field @"maybe'goalStart"
maybe'group ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'group" a) =>
  Lens.Family2.LensLike' f s a
maybe'group = Data.ProtoLens.Field.field @"maybe'group"
maybe'groups ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'groups" a) =>
  Lens.Family2.LensLike' f s a
maybe'groups = Data.ProtoLens.Field.field @"maybe'groups"
maybe'iBlocks ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'iBlocks" a) =>
  Lens.Family2.LensLike' f s a
maybe'iBlocks = Data.ProtoLens.Field.field @"maybe'iBlocks"
maybe'iLblk ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'iLblk" a) =>
  Lens.Family2.LensLike' f s a
maybe'iLblk = Data.ProtoLens.Field.field @"maybe'iLblk"
maybe'iLen ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'iLen" a) =>
  Lens.Family2.LensLike' f s a
maybe'iLen = Data.ProtoLens.Field.field @"maybe'iLen"
maybe'iPblk ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'iPblk" a) =>
  Lens.Family2.LensLike' f s a
maybe'iPblk = Data.ProtoLens.Field.field @"maybe'iPblk"
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
maybe'ioDone ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'ioDone" a) =>
  Lens.Family2.LensLike' f s a
maybe'ioDone = Data.ProtoLens.Field.field @"maybe'ioDone"
maybe'ip ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'ip" a) =>
  Lens.Family2.LensLike' f s a
maybe'ip = Data.ProtoLens.Field.field @"maybe'ip"
maybe'isMetadata ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'isMetadata" a) =>
  Lens.Family2.LensLike' f s a
maybe'isMetadata = Data.ProtoLens.Field.field @"maybe'isMetadata"
maybe'lblk ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'lblk" a) =>
  Lens.Family2.LensLike' f s a
maybe'lblk = Data.ProtoLens.Field.field @"maybe'lblk"
maybe'len ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'len" a) =>
  Lens.Family2.LensLike' f s a
maybe'len = Data.ProtoLens.Field.field @"maybe'len"
maybe'length ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'length" a) =>
  Lens.Family2.LensLike' f s a
maybe'length = Data.ProtoLens.Field.field @"maybe'length"
maybe'lleft ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'lleft" a) =>
  Lens.Family2.LensLike' f s a
maybe'lleft = Data.ProtoLens.Field.field @"maybe'lleft"
maybe'logical ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'logical" a) =>
  Lens.Family2.LensLike' f s a
maybe'logical = Data.ProtoLens.Field.field @"maybe'logical"
maybe'lright ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'lright" a) =>
  Lens.Family2.LensLike' f s a
maybe'lright = Data.ProtoLens.Field.field @"maybe'lright"
maybe'mLblk ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'mLblk" a) =>
  Lens.Family2.LensLike' f s a
maybe'mLblk = Data.ProtoLens.Field.field @"maybe'mLblk"
maybe'mLen ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'mLen" a) =>
  Lens.Family2.LensLike' f s a
maybe'mLen = Data.ProtoLens.Field.field @"maybe'mLen"
maybe'mdNeeded ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'mdNeeded" a) =>
  Lens.Family2.LensLike' f s a
maybe'mdNeeded = Data.ProtoLens.Field.field @"maybe'mdNeeded"
maybe'metaBlocks ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'metaBlocks" a) =>
  Lens.Family2.LensLike' f s a
maybe'metaBlocks = Data.ProtoLens.Field.field @"maybe'metaBlocks"
maybe'mflags ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'mflags" a) =>
  Lens.Family2.LensLike' f s a
maybe'mflags = Data.ProtoLens.Field.field @"maybe'mflags"
maybe'mode ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'mode" a) =>
  Lens.Family2.LensLike' f s a
maybe'mode = Data.ProtoLens.Field.field @"maybe'mode"
maybe'nblocks ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'nblocks" a) =>
  Lens.Family2.LensLike' f s a
maybe'nblocks = Data.ProtoLens.Field.field @"maybe'nblocks"
maybe'needed ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'needed" a) =>
  Lens.Family2.LensLike' f s a
maybe'needed = Data.ProtoLens.Field.field @"maybe'needed"
maybe'newSize ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'newSize" a) =>
  Lens.Family2.LensLike' f s a
maybe'newSize = Data.ProtoLens.Field.field @"maybe'newSize"
maybe'newblk ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'newblk" a) =>
  Lens.Family2.LensLike' f s a
maybe'newblk = Data.ProtoLens.Field.field @"maybe'newblk"
maybe'nlink ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'nlink" a) =>
  Lens.Family2.LensLike' f s a
maybe'nlink = Data.ProtoLens.Field.field @"maybe'nlink"
maybe'nrShrunk ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'nrShrunk" a) =>
  Lens.Family2.LensLike' f s a
maybe'nrShrunk = Data.ProtoLens.Field.field @"maybe'nrShrunk"
maybe'nrSkipped ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'nrSkipped" a) =>
  Lens.Family2.LensLike' f s a
maybe'nrSkipped = Data.ProtoLens.Field.field @"maybe'nrSkipped"
maybe'nrToScan ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'nrToScan" a) =>
  Lens.Family2.LensLike' f s a
maybe'nrToScan = Data.ProtoLens.Field.field @"maybe'nrToScan"
maybe'nrToWrite ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'nrToWrite" a) =>
  Lens.Family2.LensLike' f s a
maybe'nrToWrite = Data.ProtoLens.Field.field @"maybe'nrToWrite"
maybe'offset ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'offset" a) =>
  Lens.Family2.LensLike' f s a
maybe'offset = Data.ProtoLens.Field.field @"maybe'offset"
maybe'origGroup ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'origGroup" a) =>
  Lens.Family2.LensLike' f s a
maybe'origGroup = Data.ProtoLens.Field.field @"maybe'origGroup"
maybe'origIno ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'origIno" a) =>
  Lens.Family2.LensLike' f s a
maybe'origIno = Data.ProtoLens.Field.field @"maybe'origIno"
maybe'origLen ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'origLen" a) =>
  Lens.Family2.LensLike' f s a
maybe'origLen = Data.ProtoLens.Field.field @"maybe'origLen"
maybe'origLogical ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'origLogical" a) =>
  Lens.Family2.LensLike' f s a
maybe'origLogical = Data.ProtoLens.Field.field @"maybe'origLogical"
maybe'origStart ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'origStart" a) =>
  Lens.Family2.LensLike' f s a
maybe'origStart = Data.ProtoLens.Field.field @"maybe'origStart"
maybe'paLen ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'paLen" a) =>
  Lens.Family2.LensLike' f s a
maybe'paLen = Data.ProtoLens.Field.field @"maybe'paLen"
maybe'paLstart ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'paLstart" a) =>
  Lens.Family2.LensLike' f s a
maybe'paLstart = Data.ProtoLens.Field.field @"maybe'paLstart"
maybe'paPstart ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'paPstart" a) =>
  Lens.Family2.LensLike' f s a
maybe'paPstart = Data.ProtoLens.Field.field @"maybe'paPstart"
maybe'pagesSkipped ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'pagesSkipped" a) =>
  Lens.Family2.LensLike' f s a
maybe'pagesSkipped
  = Data.ProtoLens.Field.field @"maybe'pagesSkipped"
maybe'pagesWritten ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'pagesWritten" a) =>
  Lens.Family2.LensLike' f s a
maybe'pagesWritten
  = Data.ProtoLens.Field.field @"maybe'pagesWritten"
maybe'parent ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'parent" a) =>
  Lens.Family2.LensLike' f s a
maybe'parent = Data.ProtoLens.Field.field @"maybe'parent"
maybe'partial ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'partial" a) =>
  Lens.Family2.LensLike' f s a
maybe'partial = Data.ProtoLens.Field.field @"maybe'partial"
maybe'pblk ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'pblk" a) =>
  Lens.Family2.LensLike' f s a
maybe'pblk = Data.ProtoLens.Field.field @"maybe'pblk"
maybe'pcLblk ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'pcLblk" a) =>
  Lens.Family2.LensLike' f s a
maybe'pcLblk = Data.ProtoLens.Field.field @"maybe'pcLblk"
maybe'pcPclu ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'pcPclu" a) =>
  Lens.Family2.LensLike' f s a
maybe'pcPclu = Data.ProtoLens.Field.field @"maybe'pcPclu"
maybe'pcState ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'pcState" a) =>
  Lens.Family2.LensLike' f s a
maybe'pcState = Data.ProtoLens.Field.field @"maybe'pcState"
maybe'pleft ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'pleft" a) =>
  Lens.Family2.LensLike' f s a
maybe'pleft = Data.ProtoLens.Field.field @"maybe'pleft"
maybe'pos ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'pos" a) =>
  Lens.Family2.LensLike' f s a
maybe'pos = Data.ProtoLens.Field.field @"maybe'pos"
maybe'prefetch ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'prefetch" a) =>
  Lens.Family2.LensLike' f s a
maybe'prefetch = Data.ProtoLens.Field.field @"maybe'prefetch"
maybe'pright ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'pright" a) =>
  Lens.Family2.LensLike' f s a
maybe'pright = Data.ProtoLens.Field.field @"maybe'pright"
maybe'quotaClaim ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'quotaClaim" a) =>
  Lens.Family2.LensLike' f s a
maybe'quotaClaim = Data.ProtoLens.Field.field @"maybe'quotaClaim"
maybe'rangeCyclic ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'rangeCyclic" a) =>
  Lens.Family2.LensLike' f s a
maybe'rangeCyclic = Data.ProtoLens.Field.field @"maybe'rangeCyclic"
maybe'rangeEnd ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'rangeEnd" a) =>
  Lens.Family2.LensLike' f s a
maybe'rangeEnd = Data.ProtoLens.Field.field @"maybe'rangeEnd"
maybe'rangeStart ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'rangeStart" a) =>
  Lens.Family2.LensLike' f s a
maybe'rangeStart = Data.ProtoLens.Field.field @"maybe'rangeStart"
maybe'reservedDataBlocks ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'reservedDataBlocks" a) =>
  Lens.Family2.LensLike' f s a
maybe'reservedDataBlocks
  = Data.ProtoLens.Field.field @"maybe'reservedDataBlocks"
maybe'reservedMetaBlocks ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'reservedMetaBlocks" a) =>
  Lens.Family2.LensLike' f s a
maybe'reservedMetaBlocks
  = Data.ProtoLens.Field.field @"maybe'reservedMetaBlocks"
maybe'resultGroup ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'resultGroup" a) =>
  Lens.Family2.LensLike' f s a
maybe'resultGroup = Data.ProtoLens.Field.field @"maybe'resultGroup"
maybe'resultLen ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'resultLen" a) =>
  Lens.Family2.LensLike' f s a
maybe'resultLen = Data.ProtoLens.Field.field @"maybe'resultLen"
maybe'resultLogical ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'resultLogical" a) =>
  Lens.Family2.LensLike' f s a
maybe'resultLogical
  = Data.ProtoLens.Field.field @"maybe'resultLogical"
maybe'resultStart ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'resultStart" a) =>
  Lens.Family2.LensLike' f s a
maybe'resultStart = Data.ProtoLens.Field.field @"maybe'resultStart"
maybe'ret ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'ret" a) =>
  Lens.Family2.LensLike' f s a
maybe'ret = Data.ProtoLens.Field.field @"maybe'ret"
maybe'retried ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'retried" a) =>
  Lens.Family2.LensLike' f s a
maybe'retried = Data.ProtoLens.Field.field @"maybe'retried"
maybe'reverse ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'reverse" a) =>
  Lens.Family2.LensLike' f s a
maybe'reverse = Data.ProtoLens.Field.field @"maybe'reverse"
maybe'revokeCreds ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'revokeCreds" a) =>
  Lens.Family2.LensLike' f s a
maybe'revokeCreds = Data.ProtoLens.Field.field @"maybe'revokeCreds"
maybe'rsvBlocks ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'rsvBlocks" a) =>
  Lens.Family2.LensLike' f s a
maybe'rsvBlocks = Data.ProtoLens.Field.field @"maybe'rsvBlocks"
maybe'rw ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'rw" a) =>
  Lens.Family2.LensLike' f s a
maybe'rw = Data.ProtoLens.Field.field @"maybe'rw"
maybe'scanTime ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'scanTime" a) =>
  Lens.Family2.LensLike' f s a
maybe'scanTime = Data.ProtoLens.Field.field @"maybe'scanTime"
maybe'size ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'size" a) =>
  Lens.Family2.LensLike' f s a
maybe'size = Data.ProtoLens.Field.field @"maybe'size"
maybe'start ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'start" a) =>
  Lens.Family2.LensLike' f s a
maybe'start = Data.ProtoLens.Field.field @"maybe'start"
maybe'status ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'status" a) =>
  Lens.Family2.LensLike' f s a
maybe'status = Data.ProtoLens.Field.field @"maybe'status"
maybe'syncMode ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'syncMode" a) =>
  Lens.Family2.LensLike' f s a
maybe'syncMode = Data.ProtoLens.Field.field @"maybe'syncMode"
maybe'tail ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'tail" a) =>
  Lens.Family2.LensLike' f s a
maybe'tail = Data.ProtoLens.Field.field @"maybe'tail"
maybe'to ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'to" a) =>
  Lens.Family2.LensLike' f s a
maybe'to = Data.ProtoLens.Field.field @"maybe'to"
maybe'uLblk ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'uLblk" a) =>
  Lens.Family2.LensLike' f s a
maybe'uLblk = Data.ProtoLens.Field.field @"maybe'uLblk"
maybe'uLen ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'uLen" a) =>
  Lens.Family2.LensLike' f s a
maybe'uLen = Data.ProtoLens.Field.field @"maybe'uLen"
maybe'uPblk ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'uPblk" a) =>
  Lens.Family2.LensLike' f s a
maybe'uPblk = Data.ProtoLens.Field.field @"maybe'uPblk"
maybe'uid ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'uid" a) =>
  Lens.Family2.LensLike' f s a
maybe'uid = Data.ProtoLens.Field.field @"maybe'uid"
maybe'usedBlocks ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'usedBlocks" a) =>
  Lens.Family2.LensLike' f s a
maybe'usedBlocks = Data.ProtoLens.Field.field @"maybe'usedBlocks"
maybe'wait ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'wait" a) =>
  Lens.Family2.LensLike' f s a
maybe'wait = Data.ProtoLens.Field.field @"maybe'wait"
maybe'writebackIndex ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'writebackIndex" a) =>
  Lens.Family2.LensLike' f s a
maybe'writebackIndex
  = Data.ProtoLens.Field.field @"maybe'writebackIndex"
mdNeeded ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "mdNeeded" a) =>
  Lens.Family2.LensLike' f s a
mdNeeded = Data.ProtoLens.Field.field @"mdNeeded"
metaBlocks ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "metaBlocks" a) =>
  Lens.Family2.LensLike' f s a
metaBlocks = Data.ProtoLens.Field.field @"metaBlocks"
mflags ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "mflags" a) =>
  Lens.Family2.LensLike' f s a
mflags = Data.ProtoLens.Field.field @"mflags"
mode ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "mode" a) =>
  Lens.Family2.LensLike' f s a
mode = Data.ProtoLens.Field.field @"mode"
nblocks ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "nblocks" a) =>
  Lens.Family2.LensLike' f s a
nblocks = Data.ProtoLens.Field.field @"nblocks"
needed ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "needed" a) =>
  Lens.Family2.LensLike' f s a
needed = Data.ProtoLens.Field.field @"needed"
newSize ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "newSize" a) =>
  Lens.Family2.LensLike' f s a
newSize = Data.ProtoLens.Field.field @"newSize"
newblk ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "newblk" a) =>
  Lens.Family2.LensLike' f s a
newblk = Data.ProtoLens.Field.field @"newblk"
nlink ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "nlink" a) =>
  Lens.Family2.LensLike' f s a
nlink = Data.ProtoLens.Field.field @"nlink"
nrShrunk ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "nrShrunk" a) =>
  Lens.Family2.LensLike' f s a
nrShrunk = Data.ProtoLens.Field.field @"nrShrunk"
nrSkipped ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "nrSkipped" a) =>
  Lens.Family2.LensLike' f s a
nrSkipped = Data.ProtoLens.Field.field @"nrSkipped"
nrToScan ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "nrToScan" a) =>
  Lens.Family2.LensLike' f s a
nrToScan = Data.ProtoLens.Field.field @"nrToScan"
nrToWrite ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "nrToWrite" a) =>
  Lens.Family2.LensLike' f s a
nrToWrite = Data.ProtoLens.Field.field @"nrToWrite"
offset ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "offset" a) =>
  Lens.Family2.LensLike' f s a
offset = Data.ProtoLens.Field.field @"offset"
origGroup ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "origGroup" a) =>
  Lens.Family2.LensLike' f s a
origGroup = Data.ProtoLens.Field.field @"origGroup"
origIno ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "origIno" a) =>
  Lens.Family2.LensLike' f s a
origIno = Data.ProtoLens.Field.field @"origIno"
origLen ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "origLen" a) =>
  Lens.Family2.LensLike' f s a
origLen = Data.ProtoLens.Field.field @"origLen"
origLogical ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "origLogical" a) =>
  Lens.Family2.LensLike' f s a
origLogical = Data.ProtoLens.Field.field @"origLogical"
origStart ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "origStart" a) =>
  Lens.Family2.LensLike' f s a
origStart = Data.ProtoLens.Field.field @"origStart"
paLen ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "paLen" a) =>
  Lens.Family2.LensLike' f s a
paLen = Data.ProtoLens.Field.field @"paLen"
paLstart ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "paLstart" a) =>
  Lens.Family2.LensLike' f s a
paLstart = Data.ProtoLens.Field.field @"paLstart"
paPstart ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "paPstart" a) =>
  Lens.Family2.LensLike' f s a
paPstart = Data.ProtoLens.Field.field @"paPstart"
pagesSkipped ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "pagesSkipped" a) =>
  Lens.Family2.LensLike' f s a
pagesSkipped = Data.ProtoLens.Field.field @"pagesSkipped"
pagesWritten ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "pagesWritten" a) =>
  Lens.Family2.LensLike' f s a
pagesWritten = Data.ProtoLens.Field.field @"pagesWritten"
parent ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "parent" a) =>
  Lens.Family2.LensLike' f s a
parent = Data.ProtoLens.Field.field @"parent"
partial ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "partial" a) =>
  Lens.Family2.LensLike' f s a
partial = Data.ProtoLens.Field.field @"partial"
pblk ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "pblk" a) =>
  Lens.Family2.LensLike' f s a
pblk = Data.ProtoLens.Field.field @"pblk"
pcLblk ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "pcLblk" a) =>
  Lens.Family2.LensLike' f s a
pcLblk = Data.ProtoLens.Field.field @"pcLblk"
pcPclu ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "pcPclu" a) =>
  Lens.Family2.LensLike' f s a
pcPclu = Data.ProtoLens.Field.field @"pcPclu"
pcState ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "pcState" a) =>
  Lens.Family2.LensLike' f s a
pcState = Data.ProtoLens.Field.field @"pcState"
pleft ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "pleft" a) =>
  Lens.Family2.LensLike' f s a
pleft = Data.ProtoLens.Field.field @"pleft"
pos ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "pos" a) =>
  Lens.Family2.LensLike' f s a
pos = Data.ProtoLens.Field.field @"pos"
prefetch ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "prefetch" a) =>
  Lens.Family2.LensLike' f s a
prefetch = Data.ProtoLens.Field.field @"prefetch"
pright ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "pright" a) =>
  Lens.Family2.LensLike' f s a
pright = Data.ProtoLens.Field.field @"pright"
quotaClaim ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "quotaClaim" a) =>
  Lens.Family2.LensLike' f s a
quotaClaim = Data.ProtoLens.Field.field @"quotaClaim"
rangeCyclic ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "rangeCyclic" a) =>
  Lens.Family2.LensLike' f s a
rangeCyclic = Data.ProtoLens.Field.field @"rangeCyclic"
rangeEnd ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "rangeEnd" a) =>
  Lens.Family2.LensLike' f s a
rangeEnd = Data.ProtoLens.Field.field @"rangeEnd"
rangeStart ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "rangeStart" a) =>
  Lens.Family2.LensLike' f s a
rangeStart = Data.ProtoLens.Field.field @"rangeStart"
reservedDataBlocks ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "reservedDataBlocks" a) =>
  Lens.Family2.LensLike' f s a
reservedDataBlocks
  = Data.ProtoLens.Field.field @"reservedDataBlocks"
reservedMetaBlocks ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "reservedMetaBlocks" a) =>
  Lens.Family2.LensLike' f s a
reservedMetaBlocks
  = Data.ProtoLens.Field.field @"reservedMetaBlocks"
resultGroup ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "resultGroup" a) =>
  Lens.Family2.LensLike' f s a
resultGroup = Data.ProtoLens.Field.field @"resultGroup"
resultLen ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "resultLen" a) =>
  Lens.Family2.LensLike' f s a
resultLen = Data.ProtoLens.Field.field @"resultLen"
resultLogical ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "resultLogical" a) =>
  Lens.Family2.LensLike' f s a
resultLogical = Data.ProtoLens.Field.field @"resultLogical"
resultStart ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "resultStart" a) =>
  Lens.Family2.LensLike' f s a
resultStart = Data.ProtoLens.Field.field @"resultStart"
ret ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "ret" a) =>
  Lens.Family2.LensLike' f s a
ret = Data.ProtoLens.Field.field @"ret"
retried ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "retried" a) =>
  Lens.Family2.LensLike' f s a
retried = Data.ProtoLens.Field.field @"retried"
reverse ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "reverse" a) =>
  Lens.Family2.LensLike' f s a
reverse = Data.ProtoLens.Field.field @"reverse"
revokeCreds ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "revokeCreds" a) =>
  Lens.Family2.LensLike' f s a
revokeCreds = Data.ProtoLens.Field.field @"revokeCreds"
rsvBlocks ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "rsvBlocks" a) =>
  Lens.Family2.LensLike' f s a
rsvBlocks = Data.ProtoLens.Field.field @"rsvBlocks"
rw ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "rw" a) =>
  Lens.Family2.LensLike' f s a
rw = Data.ProtoLens.Field.field @"rw"
scanTime ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "scanTime" a) =>
  Lens.Family2.LensLike' f s a
scanTime = Data.ProtoLens.Field.field @"scanTime"
size ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "size" a) =>
  Lens.Family2.LensLike' f s a
size = Data.ProtoLens.Field.field @"size"
start ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "start" a) =>
  Lens.Family2.LensLike' f s a
start = Data.ProtoLens.Field.field @"start"
status ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "status" a) =>
  Lens.Family2.LensLike' f s a
status = Data.ProtoLens.Field.field @"status"
syncMode ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "syncMode" a) =>
  Lens.Family2.LensLike' f s a
syncMode = Data.ProtoLens.Field.field @"syncMode"
tail ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "tail" a) =>
  Lens.Family2.LensLike' f s a
tail = Data.ProtoLens.Field.field @"tail"
to ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "to" a) =>
  Lens.Family2.LensLike' f s a
to = Data.ProtoLens.Field.field @"to"
uLblk ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "uLblk" a) =>
  Lens.Family2.LensLike' f s a
uLblk = Data.ProtoLens.Field.field @"uLblk"
uLen ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "uLen" a) =>
  Lens.Family2.LensLike' f s a
uLen = Data.ProtoLens.Field.field @"uLen"
uPblk ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "uPblk" a) =>
  Lens.Family2.LensLike' f s a
uPblk = Data.ProtoLens.Field.field @"uPblk"
uid ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "uid" a) =>
  Lens.Family2.LensLike' f s a
uid = Data.ProtoLens.Field.field @"uid"
usedBlocks ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "usedBlocks" a) =>
  Lens.Family2.LensLike' f s a
usedBlocks = Data.ProtoLens.Field.field @"usedBlocks"
wait ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "wait" a) =>
  Lens.Family2.LensLike' f s a
wait = Data.ProtoLens.Field.field @"wait"
writebackIndex ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "writebackIndex" a) =>
  Lens.Family2.LensLike' f s a
writebackIndex = Data.ProtoLens.Field.field @"writebackIndex"