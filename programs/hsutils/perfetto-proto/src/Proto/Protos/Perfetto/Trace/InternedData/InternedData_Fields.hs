{- This file was auto-generated from protos/perfetto/trace/interned_data/interned_data.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Protos.Perfetto.Trace.InternedData.InternedData_Fields where
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
import qualified Proto.Protos.Perfetto.Trace.Profiling.ProfileCommon
import qualified Proto.Protos.Perfetto.Trace.TrackEvent.DebugAnnotation
import qualified Proto.Protos.Perfetto.Trace.TrackEvent.LogMessage
import qualified Proto.Protos.Perfetto.Trace.TrackEvent.SourceLocation
import qualified Proto.Protos.Perfetto.Trace.TrackEvent.TrackEvent
buildIds ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "buildIds" a) =>
  Lens.Family2.LensLike' f s a
buildIds = Data.ProtoLens.Field.field @"buildIds"
callstacks ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "callstacks" a) =>
  Lens.Family2.LensLike' f s a
callstacks = Data.ProtoLens.Field.field @"callstacks"
debugAnnotationNames ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "debugAnnotationNames" a) =>
  Lens.Family2.LensLike' f s a
debugAnnotationNames
  = Data.ProtoLens.Field.field @"debugAnnotationNames"
debugAnnotationStringValues ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "debugAnnotationStringValues" a) =>
  Lens.Family2.LensLike' f s a
debugAnnotationStringValues
  = Data.ProtoLens.Field.field @"debugAnnotationStringValues"
debugAnnotationValueTypeNames ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "debugAnnotationValueTypeNames" a) =>
  Lens.Family2.LensLike' f s a
debugAnnotationValueTypeNames
  = Data.ProtoLens.Field.field @"debugAnnotationValueTypeNames"
eventCategories ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "eventCategories" a) =>
  Lens.Family2.LensLike' f s a
eventCategories = Data.ProtoLens.Field.field @"eventCategories"
eventNames ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "eventNames" a) =>
  Lens.Family2.LensLike' f s a
eventNames = Data.ProtoLens.Field.field @"eventNames"
frames ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "frames" a) =>
  Lens.Family2.LensLike' f s a
frames = Data.ProtoLens.Field.field @"frames"
functionNames ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "functionNames" a) =>
  Lens.Family2.LensLike' f s a
functionNames = Data.ProtoLens.Field.field @"functionNames"
kernelSymbols ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "kernelSymbols" a) =>
  Lens.Family2.LensLike' f s a
kernelSymbols = Data.ProtoLens.Field.field @"kernelSymbols"
logMessageBody ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "logMessageBody" a) =>
  Lens.Family2.LensLike' f s a
logMessageBody = Data.ProtoLens.Field.field @"logMessageBody"
mappingPaths ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "mappingPaths" a) =>
  Lens.Family2.LensLike' f s a
mappingPaths = Data.ProtoLens.Field.field @"mappingPaths"
mappings ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "mappings" a) =>
  Lens.Family2.LensLike' f s a
mappings = Data.ProtoLens.Field.field @"mappings"
profiledFrameSymbols ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "profiledFrameSymbols" a) =>
  Lens.Family2.LensLike' f s a
profiledFrameSymbols
  = Data.ProtoLens.Field.field @"profiledFrameSymbols"
sourceLocations ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "sourceLocations" a) =>
  Lens.Family2.LensLike' f s a
sourceLocations = Data.ProtoLens.Field.field @"sourceLocations"
sourcePaths ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "sourcePaths" a) =>
  Lens.Family2.LensLike' f s a
sourcePaths = Data.ProtoLens.Field.field @"sourcePaths"
unsymbolizedSourceLocations ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "unsymbolizedSourceLocations" a) =>
  Lens.Family2.LensLike' f s a
unsymbolizedSourceLocations
  = Data.ProtoLens.Field.field @"unsymbolizedSourceLocations"
vec'buildIds ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'buildIds" a) =>
  Lens.Family2.LensLike' f s a
vec'buildIds = Data.ProtoLens.Field.field @"vec'buildIds"
vec'callstacks ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'callstacks" a) =>
  Lens.Family2.LensLike' f s a
vec'callstacks = Data.ProtoLens.Field.field @"vec'callstacks"
vec'debugAnnotationNames ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'debugAnnotationNames" a) =>
  Lens.Family2.LensLike' f s a
vec'debugAnnotationNames
  = Data.ProtoLens.Field.field @"vec'debugAnnotationNames"
vec'debugAnnotationStringValues ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'debugAnnotationStringValues" a) =>
  Lens.Family2.LensLike' f s a
vec'debugAnnotationStringValues
  = Data.ProtoLens.Field.field @"vec'debugAnnotationStringValues"
vec'debugAnnotationValueTypeNames ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'debugAnnotationValueTypeNames" a) =>
  Lens.Family2.LensLike' f s a
vec'debugAnnotationValueTypeNames
  = Data.ProtoLens.Field.field @"vec'debugAnnotationValueTypeNames"
vec'eventCategories ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'eventCategories" a) =>
  Lens.Family2.LensLike' f s a
vec'eventCategories
  = Data.ProtoLens.Field.field @"vec'eventCategories"
vec'eventNames ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'eventNames" a) =>
  Lens.Family2.LensLike' f s a
vec'eventNames = Data.ProtoLens.Field.field @"vec'eventNames"
vec'frames ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'frames" a) =>
  Lens.Family2.LensLike' f s a
vec'frames = Data.ProtoLens.Field.field @"vec'frames"
vec'functionNames ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'functionNames" a) =>
  Lens.Family2.LensLike' f s a
vec'functionNames = Data.ProtoLens.Field.field @"vec'functionNames"
vec'kernelSymbols ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'kernelSymbols" a) =>
  Lens.Family2.LensLike' f s a
vec'kernelSymbols = Data.ProtoLens.Field.field @"vec'kernelSymbols"
vec'logMessageBody ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'logMessageBody" a) =>
  Lens.Family2.LensLike' f s a
vec'logMessageBody
  = Data.ProtoLens.Field.field @"vec'logMessageBody"
vec'mappingPaths ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'mappingPaths" a) =>
  Lens.Family2.LensLike' f s a
vec'mappingPaths = Data.ProtoLens.Field.field @"vec'mappingPaths"
vec'mappings ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'mappings" a) =>
  Lens.Family2.LensLike' f s a
vec'mappings = Data.ProtoLens.Field.field @"vec'mappings"
vec'profiledFrameSymbols ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'profiledFrameSymbols" a) =>
  Lens.Family2.LensLike' f s a
vec'profiledFrameSymbols
  = Data.ProtoLens.Field.field @"vec'profiledFrameSymbols"
vec'sourceLocations ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'sourceLocations" a) =>
  Lens.Family2.LensLike' f s a
vec'sourceLocations
  = Data.ProtoLens.Field.field @"vec'sourceLocations"
vec'sourcePaths ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'sourcePaths" a) =>
  Lens.Family2.LensLike' f s a
vec'sourcePaths = Data.ProtoLens.Field.field @"vec'sourcePaths"
vec'unsymbolizedSourceLocations ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'unsymbolizedSourceLocations" a) =>
  Lens.Family2.LensLike' f s a
vec'unsymbolizedSourceLocations
  = Data.ProtoLens.Field.field @"vec'unsymbolizedSourceLocations"
vec'vulkanMemoryKeys ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'vulkanMemoryKeys" a) =>
  Lens.Family2.LensLike' f s a
vec'vulkanMemoryKeys
  = Data.ProtoLens.Field.field @"vec'vulkanMemoryKeys"
vulkanMemoryKeys ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vulkanMemoryKeys" a) =>
  Lens.Family2.LensLike' f s a
vulkanMemoryKeys = Data.ProtoLens.Field.field @"vulkanMemoryKeys"