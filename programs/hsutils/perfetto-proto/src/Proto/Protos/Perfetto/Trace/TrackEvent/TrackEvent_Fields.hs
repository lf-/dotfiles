{- This file was auto-generated from protos/perfetto/trace/track_event/track_event.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Protos.Perfetto.Trace.TrackEvent.TrackEvent_Fields where
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
import qualified Proto.Protos.Perfetto.Trace.TrackEvent.DebugAnnotation
import qualified Proto.Protos.Perfetto.Trace.TrackEvent.LogMessage
import qualified Proto.Protos.Perfetto.Trace.TrackEvent.TaskExecution
bindId ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "bindId" a) =>
  Lens.Family2.LensLike' f s a
bindId = Data.ProtoLens.Field.field @"bindId"
bindToEnclosing ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "bindToEnclosing" a) =>
  Lens.Family2.LensLike' f s a
bindToEnclosing = Data.ProtoLens.Field.field @"bindToEnclosing"
categories ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "categories" a) =>
  Lens.Family2.LensLike' f s a
categories = Data.ProtoLens.Field.field @"categories"
categoryIids ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "categoryIids" a) =>
  Lens.Family2.LensLike' f s a
categoryIids = Data.ProtoLens.Field.field @"categoryIids"
counterValue ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "counterValue" a) =>
  Lens.Family2.LensLike' f s a
counterValue = Data.ProtoLens.Field.field @"counterValue"
debugAnnotations ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "debugAnnotations" a) =>
  Lens.Family2.LensLike' f s a
debugAnnotations = Data.ProtoLens.Field.field @"debugAnnotations"
doubleCounterValue ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "doubleCounterValue" a) =>
  Lens.Family2.LensLike' f s a
doubleCounterValue
  = Data.ProtoLens.Field.field @"doubleCounterValue"
durationUs ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "durationUs" a) =>
  Lens.Family2.LensLike' f s a
durationUs = Data.ProtoLens.Field.field @"durationUs"
extraCounterTrackUuids ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "extraCounterTrackUuids" a) =>
  Lens.Family2.LensLike' f s a
extraCounterTrackUuids
  = Data.ProtoLens.Field.field @"extraCounterTrackUuids"
extraCounterValues ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "extraCounterValues" a) =>
  Lens.Family2.LensLike' f s a
extraCounterValues
  = Data.ProtoLens.Field.field @"extraCounterValues"
extraDoubleCounterTrackUuids ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "extraDoubleCounterTrackUuids" a) =>
  Lens.Family2.LensLike' f s a
extraDoubleCounterTrackUuids
  = Data.ProtoLens.Field.field @"extraDoubleCounterTrackUuids"
extraDoubleCounterValues ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "extraDoubleCounterValues" a) =>
  Lens.Family2.LensLike' f s a
extraDoubleCounterValues
  = Data.ProtoLens.Field.field @"extraDoubleCounterValues"
flowDirection ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "flowDirection" a) =>
  Lens.Family2.LensLike' f s a
flowDirection = Data.ProtoLens.Field.field @"flowDirection"
flowIds ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "flowIds" a) =>
  Lens.Family2.LensLike' f s a
flowIds = Data.ProtoLens.Field.field @"flowIds"
flowIdsOld ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "flowIdsOld" a) =>
  Lens.Family2.LensLike' f s a
flowIdsOld = Data.ProtoLens.Field.field @"flowIdsOld"
globalId ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "globalId" a) =>
  Lens.Family2.LensLike' f s a
globalId = Data.ProtoLens.Field.field @"globalId"
idScope ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "idScope" a) =>
  Lens.Family2.LensLike' f s a
idScope = Data.ProtoLens.Field.field @"idScope"
iid ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "iid" a) =>
  Lens.Family2.LensLike' f s a
iid = Data.ProtoLens.Field.field @"iid"
instantEventScope ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "instantEventScope" a) =>
  Lens.Family2.LensLike' f s a
instantEventScope = Data.ProtoLens.Field.field @"instantEventScope"
legacyEvent ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "legacyEvent" a) =>
  Lens.Family2.LensLike' f s a
legacyEvent = Data.ProtoLens.Field.field @"legacyEvent"
localId ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "localId" a) =>
  Lens.Family2.LensLike' f s a
localId = Data.ProtoLens.Field.field @"localId"
logMessage ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "logMessage" a) =>
  Lens.Family2.LensLike' f s a
logMessage = Data.ProtoLens.Field.field @"logMessage"
maybe'bindId ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'bindId" a) =>
  Lens.Family2.LensLike' f s a
maybe'bindId = Data.ProtoLens.Field.field @"maybe'bindId"
maybe'bindToEnclosing ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'bindToEnclosing" a) =>
  Lens.Family2.LensLike' f s a
maybe'bindToEnclosing
  = Data.ProtoLens.Field.field @"maybe'bindToEnclosing"
maybe'counterValue ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'counterValue" a) =>
  Lens.Family2.LensLike' f s a
maybe'counterValue
  = Data.ProtoLens.Field.field @"maybe'counterValue"
maybe'counterValueField ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'counterValueField" a) =>
  Lens.Family2.LensLike' f s a
maybe'counterValueField
  = Data.ProtoLens.Field.field @"maybe'counterValueField"
maybe'doubleCounterValue ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'doubleCounterValue" a) =>
  Lens.Family2.LensLike' f s a
maybe'doubleCounterValue
  = Data.ProtoLens.Field.field @"maybe'doubleCounterValue"
maybe'durationUs ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'durationUs" a) =>
  Lens.Family2.LensLike' f s a
maybe'durationUs = Data.ProtoLens.Field.field @"maybe'durationUs"
maybe'flowDirection ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'flowDirection" a) =>
  Lens.Family2.LensLike' f s a
maybe'flowDirection
  = Data.ProtoLens.Field.field @"maybe'flowDirection"
maybe'globalId ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'globalId" a) =>
  Lens.Family2.LensLike' f s a
maybe'globalId = Data.ProtoLens.Field.field @"maybe'globalId"
maybe'id ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'id" a) =>
  Lens.Family2.LensLike' f s a
maybe'id = Data.ProtoLens.Field.field @"maybe'id"
maybe'idScope ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'idScope" a) =>
  Lens.Family2.LensLike' f s a
maybe'idScope = Data.ProtoLens.Field.field @"maybe'idScope"
maybe'iid ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'iid" a) =>
  Lens.Family2.LensLike' f s a
maybe'iid = Data.ProtoLens.Field.field @"maybe'iid"
maybe'instantEventScope ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'instantEventScope" a) =>
  Lens.Family2.LensLike' f s a
maybe'instantEventScope
  = Data.ProtoLens.Field.field @"maybe'instantEventScope"
maybe'legacyEvent ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'legacyEvent" a) =>
  Lens.Family2.LensLike' f s a
maybe'legacyEvent = Data.ProtoLens.Field.field @"maybe'legacyEvent"
maybe'localId ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'localId" a) =>
  Lens.Family2.LensLike' f s a
maybe'localId = Data.ProtoLens.Field.field @"maybe'localId"
maybe'logMessage ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'logMessage" a) =>
  Lens.Family2.LensLike' f s a
maybe'logMessage = Data.ProtoLens.Field.field @"maybe'logMessage"
maybe'name ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'name" a) =>
  Lens.Family2.LensLike' f s a
maybe'name = Data.ProtoLens.Field.field @"maybe'name"
maybe'nameField ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'nameField" a) =>
  Lens.Family2.LensLike' f s a
maybe'nameField = Data.ProtoLens.Field.field @"maybe'nameField"
maybe'nameIid ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'nameIid" a) =>
  Lens.Family2.LensLike' f s a
maybe'nameIid = Data.ProtoLens.Field.field @"maybe'nameIid"
maybe'phase ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'phase" a) =>
  Lens.Family2.LensLike' f s a
maybe'phase = Data.ProtoLens.Field.field @"maybe'phase"
maybe'pidOverride ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'pidOverride" a) =>
  Lens.Family2.LensLike' f s a
maybe'pidOverride = Data.ProtoLens.Field.field @"maybe'pidOverride"
maybe'sourceLocationField ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'sourceLocationField" a) =>
  Lens.Family2.LensLike' f s a
maybe'sourceLocationField
  = Data.ProtoLens.Field.field @"maybe'sourceLocationField"
maybe'sourceLocationIid ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'sourceLocationIid" a) =>
  Lens.Family2.LensLike' f s a
maybe'sourceLocationIid
  = Data.ProtoLens.Field.field @"maybe'sourceLocationIid"
maybe'taskExecution ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'taskExecution" a) =>
  Lens.Family2.LensLike' f s a
maybe'taskExecution
  = Data.ProtoLens.Field.field @"maybe'taskExecution"
maybe'threadDurationUs ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'threadDurationUs" a) =>
  Lens.Family2.LensLike' f s a
maybe'threadDurationUs
  = Data.ProtoLens.Field.field @"maybe'threadDurationUs"
maybe'threadInstructionCount ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'threadInstructionCount" a) =>
  Lens.Family2.LensLike' f s a
maybe'threadInstructionCount
  = Data.ProtoLens.Field.field @"maybe'threadInstructionCount"
maybe'threadInstructionCountAbsolute ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'threadInstructionCountAbsolute" a) =>
  Lens.Family2.LensLike' f s a
maybe'threadInstructionCountAbsolute
  = Data.ProtoLens.Field.field
      @"maybe'threadInstructionCountAbsolute"
maybe'threadInstructionCountDelta ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'threadInstructionCountDelta" a) =>
  Lens.Family2.LensLike' f s a
maybe'threadInstructionCountDelta
  = Data.ProtoLens.Field.field @"maybe'threadInstructionCountDelta"
maybe'threadInstructionDelta ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'threadInstructionDelta" a) =>
  Lens.Family2.LensLike' f s a
maybe'threadInstructionDelta
  = Data.ProtoLens.Field.field @"maybe'threadInstructionDelta"
maybe'threadTime ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'threadTime" a) =>
  Lens.Family2.LensLike' f s a
maybe'threadTime = Data.ProtoLens.Field.field @"maybe'threadTime"
maybe'threadTimeAbsoluteUs ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'threadTimeAbsoluteUs" a) =>
  Lens.Family2.LensLike' f s a
maybe'threadTimeAbsoluteUs
  = Data.ProtoLens.Field.field @"maybe'threadTimeAbsoluteUs"
maybe'threadTimeDeltaUs ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'threadTimeDeltaUs" a) =>
  Lens.Family2.LensLike' f s a
maybe'threadTimeDeltaUs
  = Data.ProtoLens.Field.field @"maybe'threadTimeDeltaUs"
maybe'tidOverride ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'tidOverride" a) =>
  Lens.Family2.LensLike' f s a
maybe'tidOverride = Data.ProtoLens.Field.field @"maybe'tidOverride"
maybe'timestamp ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'timestamp" a) =>
  Lens.Family2.LensLike' f s a
maybe'timestamp = Data.ProtoLens.Field.field @"maybe'timestamp"
maybe'timestampAbsoluteUs ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'timestampAbsoluteUs" a) =>
  Lens.Family2.LensLike' f s a
maybe'timestampAbsoluteUs
  = Data.ProtoLens.Field.field @"maybe'timestampAbsoluteUs"
maybe'timestampDeltaUs ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'timestampDeltaUs" a) =>
  Lens.Family2.LensLike' f s a
maybe'timestampDeltaUs
  = Data.ProtoLens.Field.field @"maybe'timestampDeltaUs"
maybe'trackUuid ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'trackUuid" a) =>
  Lens.Family2.LensLike' f s a
maybe'trackUuid = Data.ProtoLens.Field.field @"maybe'trackUuid"
maybe'type' ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'type'" a) =>
  Lens.Family2.LensLike' f s a
maybe'type' = Data.ProtoLens.Field.field @"maybe'type'"
maybe'unscopedId ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'unscopedId" a) =>
  Lens.Family2.LensLike' f s a
maybe'unscopedId = Data.ProtoLens.Field.field @"maybe'unscopedId"
maybe'useAsyncTts ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'useAsyncTts" a) =>
  Lens.Family2.LensLike' f s a
maybe'useAsyncTts = Data.ProtoLens.Field.field @"maybe'useAsyncTts"
name ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "name" a) =>
  Lens.Family2.LensLike' f s a
name = Data.ProtoLens.Field.field @"name"
nameIid ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "nameIid" a) =>
  Lens.Family2.LensLike' f s a
nameIid = Data.ProtoLens.Field.field @"nameIid"
phase ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "phase" a) =>
  Lens.Family2.LensLike' f s a
phase = Data.ProtoLens.Field.field @"phase"
pidOverride ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "pidOverride" a) =>
  Lens.Family2.LensLike' f s a
pidOverride = Data.ProtoLens.Field.field @"pidOverride"
sourceLocationIid ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "sourceLocationIid" a) =>
  Lens.Family2.LensLike' f s a
sourceLocationIid = Data.ProtoLens.Field.field @"sourceLocationIid"
taskExecution ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "taskExecution" a) =>
  Lens.Family2.LensLike' f s a
taskExecution = Data.ProtoLens.Field.field @"taskExecution"
terminatingFlowIds ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "terminatingFlowIds" a) =>
  Lens.Family2.LensLike' f s a
terminatingFlowIds
  = Data.ProtoLens.Field.field @"terminatingFlowIds"
terminatingFlowIdsOld ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "terminatingFlowIdsOld" a) =>
  Lens.Family2.LensLike' f s a
terminatingFlowIdsOld
  = Data.ProtoLens.Field.field @"terminatingFlowIdsOld"
threadDurationUs ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "threadDurationUs" a) =>
  Lens.Family2.LensLike' f s a
threadDurationUs = Data.ProtoLens.Field.field @"threadDurationUs"
threadInstructionCountAbsolute ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "threadInstructionCountAbsolute" a) =>
  Lens.Family2.LensLike' f s a
threadInstructionCountAbsolute
  = Data.ProtoLens.Field.field @"threadInstructionCountAbsolute"
threadInstructionCountDelta ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "threadInstructionCountDelta" a) =>
  Lens.Family2.LensLike' f s a
threadInstructionCountDelta
  = Data.ProtoLens.Field.field @"threadInstructionCountDelta"
threadInstructionDelta ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "threadInstructionDelta" a) =>
  Lens.Family2.LensLike' f s a
threadInstructionDelta
  = Data.ProtoLens.Field.field @"threadInstructionDelta"
threadTimeAbsoluteUs ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "threadTimeAbsoluteUs" a) =>
  Lens.Family2.LensLike' f s a
threadTimeAbsoluteUs
  = Data.ProtoLens.Field.field @"threadTimeAbsoluteUs"
threadTimeDeltaUs ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "threadTimeDeltaUs" a) =>
  Lens.Family2.LensLike' f s a
threadTimeDeltaUs = Data.ProtoLens.Field.field @"threadTimeDeltaUs"
tidOverride ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "tidOverride" a) =>
  Lens.Family2.LensLike' f s a
tidOverride = Data.ProtoLens.Field.field @"tidOverride"
timestampAbsoluteUs ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "timestampAbsoluteUs" a) =>
  Lens.Family2.LensLike' f s a
timestampAbsoluteUs
  = Data.ProtoLens.Field.field @"timestampAbsoluteUs"
timestampDeltaUs ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "timestampDeltaUs" a) =>
  Lens.Family2.LensLike' f s a
timestampDeltaUs = Data.ProtoLens.Field.field @"timestampDeltaUs"
trackUuid ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "trackUuid" a) =>
  Lens.Family2.LensLike' f s a
trackUuid = Data.ProtoLens.Field.field @"trackUuid"
type' ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "type'" a) =>
  Lens.Family2.LensLike' f s a
type' = Data.ProtoLens.Field.field @"type'"
unscopedId ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "unscopedId" a) =>
  Lens.Family2.LensLike' f s a
unscopedId = Data.ProtoLens.Field.field @"unscopedId"
useAsyncTts ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "useAsyncTts" a) =>
  Lens.Family2.LensLike' f s a
useAsyncTts = Data.ProtoLens.Field.field @"useAsyncTts"
vec'categories ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'categories" a) =>
  Lens.Family2.LensLike' f s a
vec'categories = Data.ProtoLens.Field.field @"vec'categories"
vec'categoryIids ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'categoryIids" a) =>
  Lens.Family2.LensLike' f s a
vec'categoryIids = Data.ProtoLens.Field.field @"vec'categoryIids"
vec'debugAnnotations ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'debugAnnotations" a) =>
  Lens.Family2.LensLike' f s a
vec'debugAnnotations
  = Data.ProtoLens.Field.field @"vec'debugAnnotations"
vec'extraCounterTrackUuids ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'extraCounterTrackUuids" a) =>
  Lens.Family2.LensLike' f s a
vec'extraCounterTrackUuids
  = Data.ProtoLens.Field.field @"vec'extraCounterTrackUuids"
vec'extraCounterValues ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'extraCounterValues" a) =>
  Lens.Family2.LensLike' f s a
vec'extraCounterValues
  = Data.ProtoLens.Field.field @"vec'extraCounterValues"
vec'extraDoubleCounterTrackUuids ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'extraDoubleCounterTrackUuids" a) =>
  Lens.Family2.LensLike' f s a
vec'extraDoubleCounterTrackUuids
  = Data.ProtoLens.Field.field @"vec'extraDoubleCounterTrackUuids"
vec'extraDoubleCounterValues ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'extraDoubleCounterValues" a) =>
  Lens.Family2.LensLike' f s a
vec'extraDoubleCounterValues
  = Data.ProtoLens.Field.field @"vec'extraDoubleCounterValues"
vec'flowIds ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'flowIds" a) =>
  Lens.Family2.LensLike' f s a
vec'flowIds = Data.ProtoLens.Field.field @"vec'flowIds"
vec'flowIdsOld ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'flowIdsOld" a) =>
  Lens.Family2.LensLike' f s a
vec'flowIdsOld = Data.ProtoLens.Field.field @"vec'flowIdsOld"
vec'terminatingFlowIds ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'terminatingFlowIds" a) =>
  Lens.Family2.LensLike' f s a
vec'terminatingFlowIds
  = Data.ProtoLens.Field.field @"vec'terminatingFlowIds"
vec'terminatingFlowIdsOld ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'terminatingFlowIdsOld" a) =>
  Lens.Family2.LensLike' f s a
vec'terminatingFlowIdsOld
  = Data.ProtoLens.Field.field @"vec'terminatingFlowIdsOld"