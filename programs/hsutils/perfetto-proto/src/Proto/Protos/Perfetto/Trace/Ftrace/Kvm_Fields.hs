{- This file was auto-generated from protos/perfetto/trace/ftrace/kvm.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Protos.Perfetto.Trace.Ftrace.Kvm_Fields where
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
cache ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "cache" a) =>
  Lens.Family2.LensLike' f s a
cache = Data.ProtoLens.Field.field @"cache"
cpsr ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "cpsr" a) =>
  Lens.Family2.LensLike' f s a
cpsr = Data.ProtoLens.Field.field @"cpsr"
crm ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "crm" a) =>
  Lens.Family2.LensLike' f s a
crm = Data.ProtoLens.Field.field @"crm"
crn ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "crn" a) =>
  Lens.Family2.LensLike' f s a
crn = Data.ProtoLens.Field.field @"crn"
ctl ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "ctl" a) =>
  Lens.Family2.LensLike' f s a
ctl = Data.ProtoLens.Field.field @"ctl"
cval ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "cval" a) =>
  Lens.Family2.LensLike' f s a
cval = Data.ProtoLens.Field.field @"cval"
directPtimer ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "directPtimer" a) =>
  Lens.Family2.LensLike' f s a
directPtimer = Data.ProtoLens.Field.field @"directPtimer"
directVtimer ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "directVtimer" a) =>
  Lens.Family2.LensLike' f s a
directVtimer = Data.ProtoLens.Field.field @"directVtimer"
emulPtimer ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "emulPtimer" a) =>
  Lens.Family2.LensLike' f s a
emulPtimer = Data.ProtoLens.Field.field @"emulPtimer"
end ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "end" a) =>
  Lens.Family2.LensLike' f s a
end = Data.ProtoLens.Field.field @"end"
esrEc ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "esrEc" a) =>
  Lens.Family2.LensLike' f s a
esrEc = Data.ProtoLens.Field.field @"esrEc"
fn ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "fn" a) =>
  Lens.Family2.LensLike' f s a
fn = Data.ProtoLens.Field.field @"fn"
gfn ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "gfn" a) =>
  Lens.Family2.LensLike' f s a
gfn = Data.ProtoLens.Field.field @"gfn"
gpa ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "gpa" a) =>
  Lens.Family2.LensLike' f s a
gpa = Data.ProtoLens.Field.field @"gpa"
gsi ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "gsi" a) =>
  Lens.Family2.LensLike' f s a
gsi = Data.ProtoLens.Field.field @"gsi"
guestDebug ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "guestDebug" a) =>
  Lens.Family2.LensLike' f s a
guestDebug = Data.ProtoLens.Field.field @"guestDebug"
hsr ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "hsr" a) =>
  Lens.Family2.LensLike' f s a
hsr = Data.ProtoLens.Field.field @"hsr"
hva ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "hva" a) =>
  Lens.Family2.LensLike' f s a
hva = Data.ProtoLens.Field.field @"hva"
hxfar ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "hxfar" a) =>
  Lens.Family2.LensLike' f s a
hxfar = Data.ProtoLens.Field.field @"hxfar"
imm ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "imm" a) =>
  Lens.Family2.LensLike' f s a
imm = Data.ProtoLens.Field.field @"imm"
instr ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "instr" a) =>
  Lens.Family2.LensLike' f s a
instr = Data.ProtoLens.Field.field @"instr"
ipa ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "ipa" a) =>
  Lens.Family2.LensLike' f s a
ipa = Data.ProtoLens.Field.field @"ipa"
irq ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "irq" a) =>
  Lens.Family2.LensLike' f s a
irq = Data.ProtoLens.Field.field @"irq"
irqNum ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "irqNum" a) =>
  Lens.Family2.LensLike' f s a
irqNum = Data.ProtoLens.Field.field @"irqNum"
irqSourceId ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "irqSourceId" a) =>
  Lens.Family2.LensLike' f s a
irqSourceId = Data.ProtoLens.Field.field @"irqSourceId"
irqchip ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "irqchip" a) =>
  Lens.Family2.LensLike' f s a
irqchip = Data.ProtoLens.Field.field @"irqchip"
isWfe ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "isWfe" a) =>
  Lens.Family2.LensLike' f s a
isWfe = Data.ProtoLens.Field.field @"isWfe"
isWrite ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "isWrite" a) =>
  Lens.Family2.LensLike' f s a
isWrite = Data.ProtoLens.Field.field @"isWrite"
len ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "len" a) =>
  Lens.Family2.LensLike' f s a
len = Data.ProtoLens.Field.field @"len"
level ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "level" a) =>
  Lens.Family2.LensLike' f s a
level = Data.ProtoLens.Field.field @"level"
load ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "load" a) =>
  Lens.Family2.LensLike' f s a
load = Data.ProtoLens.Field.field @"load"
maybe'cache ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'cache" a) =>
  Lens.Family2.LensLike' f s a
maybe'cache = Data.ProtoLens.Field.field @"maybe'cache"
maybe'cpsr ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'cpsr" a) =>
  Lens.Family2.LensLike' f s a
maybe'cpsr = Data.ProtoLens.Field.field @"maybe'cpsr"
maybe'crm ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'crm" a) =>
  Lens.Family2.LensLike' f s a
maybe'crm = Data.ProtoLens.Field.field @"maybe'crm"
maybe'crn ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'crn" a) =>
  Lens.Family2.LensLike' f s a
maybe'crn = Data.ProtoLens.Field.field @"maybe'crn"
maybe'ctl ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'ctl" a) =>
  Lens.Family2.LensLike' f s a
maybe'ctl = Data.ProtoLens.Field.field @"maybe'ctl"
maybe'cval ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'cval" a) =>
  Lens.Family2.LensLike' f s a
maybe'cval = Data.ProtoLens.Field.field @"maybe'cval"
maybe'directPtimer ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'directPtimer" a) =>
  Lens.Family2.LensLike' f s a
maybe'directPtimer
  = Data.ProtoLens.Field.field @"maybe'directPtimer"
maybe'directVtimer ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'directVtimer" a) =>
  Lens.Family2.LensLike' f s a
maybe'directVtimer
  = Data.ProtoLens.Field.field @"maybe'directVtimer"
maybe'emulPtimer ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'emulPtimer" a) =>
  Lens.Family2.LensLike' f s a
maybe'emulPtimer = Data.ProtoLens.Field.field @"maybe'emulPtimer"
maybe'end ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'end" a) =>
  Lens.Family2.LensLike' f s a
maybe'end = Data.ProtoLens.Field.field @"maybe'end"
maybe'esrEc ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'esrEc" a) =>
  Lens.Family2.LensLike' f s a
maybe'esrEc = Data.ProtoLens.Field.field @"maybe'esrEc"
maybe'fn ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'fn" a) =>
  Lens.Family2.LensLike' f s a
maybe'fn = Data.ProtoLens.Field.field @"maybe'fn"
maybe'gfn ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'gfn" a) =>
  Lens.Family2.LensLike' f s a
maybe'gfn = Data.ProtoLens.Field.field @"maybe'gfn"
maybe'gpa ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'gpa" a) =>
  Lens.Family2.LensLike' f s a
maybe'gpa = Data.ProtoLens.Field.field @"maybe'gpa"
maybe'gsi ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'gsi" a) =>
  Lens.Family2.LensLike' f s a
maybe'gsi = Data.ProtoLens.Field.field @"maybe'gsi"
maybe'guestDebug ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'guestDebug" a) =>
  Lens.Family2.LensLike' f s a
maybe'guestDebug = Data.ProtoLens.Field.field @"maybe'guestDebug"
maybe'hsr ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'hsr" a) =>
  Lens.Family2.LensLike' f s a
maybe'hsr = Data.ProtoLens.Field.field @"maybe'hsr"
maybe'hva ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'hva" a) =>
  Lens.Family2.LensLike' f s a
maybe'hva = Data.ProtoLens.Field.field @"maybe'hva"
maybe'hxfar ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'hxfar" a) =>
  Lens.Family2.LensLike' f s a
maybe'hxfar = Data.ProtoLens.Field.field @"maybe'hxfar"
maybe'imm ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'imm" a) =>
  Lens.Family2.LensLike' f s a
maybe'imm = Data.ProtoLens.Field.field @"maybe'imm"
maybe'instr ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'instr" a) =>
  Lens.Family2.LensLike' f s a
maybe'instr = Data.ProtoLens.Field.field @"maybe'instr"
maybe'ipa ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'ipa" a) =>
  Lens.Family2.LensLike' f s a
maybe'ipa = Data.ProtoLens.Field.field @"maybe'ipa"
maybe'irq ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'irq" a) =>
  Lens.Family2.LensLike' f s a
maybe'irq = Data.ProtoLens.Field.field @"maybe'irq"
maybe'irqNum ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'irqNum" a) =>
  Lens.Family2.LensLike' f s a
maybe'irqNum = Data.ProtoLens.Field.field @"maybe'irqNum"
maybe'irqSourceId ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'irqSourceId" a) =>
  Lens.Family2.LensLike' f s a
maybe'irqSourceId = Data.ProtoLens.Field.field @"maybe'irqSourceId"
maybe'irqchip ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'irqchip" a) =>
  Lens.Family2.LensLike' f s a
maybe'irqchip = Data.ProtoLens.Field.field @"maybe'irqchip"
maybe'isWfe ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'isWfe" a) =>
  Lens.Family2.LensLike' f s a
maybe'isWfe = Data.ProtoLens.Field.field @"maybe'isWfe"
maybe'isWrite ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'isWrite" a) =>
  Lens.Family2.LensLike' f s a
maybe'isWrite = Data.ProtoLens.Field.field @"maybe'isWrite"
maybe'len ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'len" a) =>
  Lens.Family2.LensLike' f s a
maybe'len = Data.ProtoLens.Field.field @"maybe'len"
maybe'level ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'level" a) =>
  Lens.Family2.LensLike' f s a
maybe'level = Data.ProtoLens.Field.field @"maybe'level"
maybe'load ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'load" a) =>
  Lens.Family2.LensLike' f s a
maybe'load = Data.ProtoLens.Field.field @"maybe'load"
maybe'name ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'name" a) =>
  Lens.Family2.LensLike' f s a
maybe'name = Data.ProtoLens.Field.field @"maybe'name"
maybe'now ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'now" a) =>
  Lens.Family2.LensLike' f s a
maybe'now = Data.ProtoLens.Field.field @"maybe'now"
maybe'ns ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'ns" a) =>
  Lens.Family2.LensLike' f s a
maybe'ns = Data.ProtoLens.Field.field @"maybe'ns"
maybe'op0 ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'op0" a) =>
  Lens.Family2.LensLike' f s a
maybe'op0 = Data.ProtoLens.Field.field @"maybe'op0"
maybe'op1 ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'op1" a) =>
  Lens.Family2.LensLike' f s a
maybe'op1 = Data.ProtoLens.Field.field @"maybe'op1"
maybe'op2 ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'op2" a) =>
  Lens.Family2.LensLike' f s a
maybe'op2 = Data.ProtoLens.Field.field @"maybe'op2"
maybe'pin ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'pin" a) =>
  Lens.Family2.LensLike' f s a
maybe'pin = Data.ProtoLens.Field.field @"maybe'pin"
maybe'r0 ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'r0" a) =>
  Lens.Family2.LensLike' f s a
maybe'r0 = Data.ProtoLens.Field.field @"maybe'r0"
maybe'reason ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'reason" a) =>
  Lens.Family2.LensLike' f s a
maybe'reason = Data.ProtoLens.Field.field @"maybe'reason"
maybe'referenced ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'referenced" a) =>
  Lens.Family2.LensLike' f s a
maybe'referenced = Data.ProtoLens.Field.field @"maybe'referenced"
maybe'reg ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'reg" a) =>
  Lens.Family2.LensLike' f s a
maybe'reg = Data.ProtoLens.Field.field @"maybe'reg"
maybe'ret ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'ret" a) =>
  Lens.Family2.LensLike' f s a
maybe'ret = Data.ProtoLens.Field.field @"maybe'ret"
maybe'shouldFire ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'shouldFire" a) =>
  Lens.Family2.LensLike' f s a
maybe'shouldFire = Data.ProtoLens.Field.field @"maybe'shouldFire"
maybe'start ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'start" a) =>
  Lens.Family2.LensLike' f s a
maybe'start = Data.ProtoLens.Field.field @"maybe'start"
maybe'timerIdx ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'timerIdx" a) =>
  Lens.Family2.LensLike' f s a
maybe'timerIdx = Data.ProtoLens.Field.field @"maybe'timerIdx"
maybe'type' ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'type'" a) =>
  Lens.Family2.LensLike' f s a
maybe'type' = Data.ProtoLens.Field.field @"maybe'type'"
maybe'val ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'val" a) =>
  Lens.Family2.LensLike' f s a
maybe'val = Data.ProtoLens.Field.field @"maybe'val"
maybe'valid ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'valid" a) =>
  Lens.Family2.LensLike' f s a
maybe'valid = Data.ProtoLens.Field.field @"maybe'valid"
maybe'value ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'value" a) =>
  Lens.Family2.LensLike' f s a
maybe'value = Data.ProtoLens.Field.field @"maybe'value"
maybe'vcpu ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'vcpu" a) =>
  Lens.Family2.LensLike' f s a
maybe'vcpu = Data.ProtoLens.Field.field @"maybe'vcpu"
maybe'vcpuId ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'vcpuId" a) =>
  Lens.Family2.LensLike' f s a
maybe'vcpuId = Data.ProtoLens.Field.field @"maybe'vcpuId"
maybe'vcpuIdx ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'vcpuIdx" a) =>
  Lens.Family2.LensLike' f s a
maybe'vcpuIdx = Data.ProtoLens.Field.field @"maybe'vcpuIdx"
maybe'vcpuPc ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'vcpuPc" a) =>
  Lens.Family2.LensLike' f s a
maybe'vcpuPc = Data.ProtoLens.Field.field @"maybe'vcpuPc"
maybe'waited ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'waited" a) =>
  Lens.Family2.LensLike' f s a
maybe'waited = Data.ProtoLens.Field.field @"maybe'waited"
maybe'was ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'was" a) =>
  Lens.Family2.LensLike' f s a
maybe'was = Data.ProtoLens.Field.field @"maybe'was"
maybe'writeValue ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'writeValue" a) =>
  Lens.Family2.LensLike' f s a
maybe'writeValue = Data.ProtoLens.Field.field @"maybe'writeValue"
name ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "name" a) =>
  Lens.Family2.LensLike' f s a
name = Data.ProtoLens.Field.field @"name"
now ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "now" a) =>
  Lens.Family2.LensLike' f s a
now = Data.ProtoLens.Field.field @"now"
ns ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "ns" a) =>
  Lens.Family2.LensLike' f s a
ns = Data.ProtoLens.Field.field @"ns"
op0 ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "op0" a) =>
  Lens.Family2.LensLike' f s a
op0 = Data.ProtoLens.Field.field @"op0"
op1 ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "op1" a) =>
  Lens.Family2.LensLike' f s a
op1 = Data.ProtoLens.Field.field @"op1"
op2 ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "op2" a) =>
  Lens.Family2.LensLike' f s a
op2 = Data.ProtoLens.Field.field @"op2"
pin ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "pin" a) =>
  Lens.Family2.LensLike' f s a
pin = Data.ProtoLens.Field.field @"pin"
r0 ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "r0" a) =>
  Lens.Family2.LensLike' f s a
r0 = Data.ProtoLens.Field.field @"r0"
reason ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "reason" a) =>
  Lens.Family2.LensLike' f s a
reason = Data.ProtoLens.Field.field @"reason"
referenced ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "referenced" a) =>
  Lens.Family2.LensLike' f s a
referenced = Data.ProtoLens.Field.field @"referenced"
reg ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "reg" a) =>
  Lens.Family2.LensLike' f s a
reg = Data.ProtoLens.Field.field @"reg"
ret ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "ret" a) =>
  Lens.Family2.LensLike' f s a
ret = Data.ProtoLens.Field.field @"ret"
shouldFire ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "shouldFire" a) =>
  Lens.Family2.LensLike' f s a
shouldFire = Data.ProtoLens.Field.field @"shouldFire"
start ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "start" a) =>
  Lens.Family2.LensLike' f s a
start = Data.ProtoLens.Field.field @"start"
timerIdx ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "timerIdx" a) =>
  Lens.Family2.LensLike' f s a
timerIdx = Data.ProtoLens.Field.field @"timerIdx"
type' ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "type'" a) =>
  Lens.Family2.LensLike' f s a
type' = Data.ProtoLens.Field.field @"type'"
val ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "val" a) =>
  Lens.Family2.LensLike' f s a
val = Data.ProtoLens.Field.field @"val"
valid ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "valid" a) =>
  Lens.Family2.LensLike' f s a
valid = Data.ProtoLens.Field.field @"valid"
value ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "value" a) =>
  Lens.Family2.LensLike' f s a
value = Data.ProtoLens.Field.field @"value"
vcpu ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "vcpu" a) =>
  Lens.Family2.LensLike' f s a
vcpu = Data.ProtoLens.Field.field @"vcpu"
vcpuId ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "vcpuId" a) =>
  Lens.Family2.LensLike' f s a
vcpuId = Data.ProtoLens.Field.field @"vcpuId"
vcpuIdx ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "vcpuIdx" a) =>
  Lens.Family2.LensLike' f s a
vcpuIdx = Data.ProtoLens.Field.field @"vcpuIdx"
vcpuPc ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "vcpuPc" a) =>
  Lens.Family2.LensLike' f s a
vcpuPc = Data.ProtoLens.Field.field @"vcpuPc"
waited ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "waited" a) =>
  Lens.Family2.LensLike' f s a
waited = Data.ProtoLens.Field.field @"waited"
was ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "was" a) =>
  Lens.Family2.LensLike' f s a
was = Data.ProtoLens.Field.field @"was"
writeValue ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "writeValue" a) =>
  Lens.Family2.LensLike' f s a
writeValue = Data.ProtoLens.Field.field @"writeValue"