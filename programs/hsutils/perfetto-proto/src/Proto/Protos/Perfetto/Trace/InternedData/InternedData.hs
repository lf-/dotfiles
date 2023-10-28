{- This file was auto-generated from protos/perfetto/trace/interned_data/interned_data.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Protos.Perfetto.Trace.InternedData.InternedData (
        InternedData()
    ) where
import qualified Data.ProtoLens.Runtime.Control.DeepSeq as Control.DeepSeq
import qualified Data.ProtoLens.Runtime.Data.ProtoLens.Prism as Data.ProtoLens.Prism
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
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.InternedData.InternedData_Fields.eventCategories' @:: Lens' InternedData [Proto.Protos.Perfetto.Trace.TrackEvent.TrackEvent.EventCategory]@
         * 'Proto.Protos.Perfetto.Trace.InternedData.InternedData_Fields.vec'eventCategories' @:: Lens' InternedData (Data.Vector.Vector Proto.Protos.Perfetto.Trace.TrackEvent.TrackEvent.EventCategory)@
         * 'Proto.Protos.Perfetto.Trace.InternedData.InternedData_Fields.eventNames' @:: Lens' InternedData [Proto.Protos.Perfetto.Trace.TrackEvent.TrackEvent.EventName]@
         * 'Proto.Protos.Perfetto.Trace.InternedData.InternedData_Fields.vec'eventNames' @:: Lens' InternedData (Data.Vector.Vector Proto.Protos.Perfetto.Trace.TrackEvent.TrackEvent.EventName)@
         * 'Proto.Protos.Perfetto.Trace.InternedData.InternedData_Fields.debugAnnotationNames' @:: Lens' InternedData [Proto.Protos.Perfetto.Trace.TrackEvent.DebugAnnotation.DebugAnnotationName]@
         * 'Proto.Protos.Perfetto.Trace.InternedData.InternedData_Fields.vec'debugAnnotationNames' @:: Lens' InternedData (Data.Vector.Vector Proto.Protos.Perfetto.Trace.TrackEvent.DebugAnnotation.DebugAnnotationName)@
         * 'Proto.Protos.Perfetto.Trace.InternedData.InternedData_Fields.debugAnnotationValueTypeNames' @:: Lens' InternedData [Proto.Protos.Perfetto.Trace.TrackEvent.DebugAnnotation.DebugAnnotationValueTypeName]@
         * 'Proto.Protos.Perfetto.Trace.InternedData.InternedData_Fields.vec'debugAnnotationValueTypeNames' @:: Lens' InternedData (Data.Vector.Vector Proto.Protos.Perfetto.Trace.TrackEvent.DebugAnnotation.DebugAnnotationValueTypeName)@
         * 'Proto.Protos.Perfetto.Trace.InternedData.InternedData_Fields.sourceLocations' @:: Lens' InternedData [Proto.Protos.Perfetto.Trace.TrackEvent.SourceLocation.SourceLocation]@
         * 'Proto.Protos.Perfetto.Trace.InternedData.InternedData_Fields.vec'sourceLocations' @:: Lens' InternedData (Data.Vector.Vector Proto.Protos.Perfetto.Trace.TrackEvent.SourceLocation.SourceLocation)@
         * 'Proto.Protos.Perfetto.Trace.InternedData.InternedData_Fields.unsymbolizedSourceLocations' @:: Lens' InternedData [Proto.Protos.Perfetto.Trace.TrackEvent.SourceLocation.UnsymbolizedSourceLocation]@
         * 'Proto.Protos.Perfetto.Trace.InternedData.InternedData_Fields.vec'unsymbolizedSourceLocations' @:: Lens' InternedData (Data.Vector.Vector Proto.Protos.Perfetto.Trace.TrackEvent.SourceLocation.UnsymbolizedSourceLocation)@
         * 'Proto.Protos.Perfetto.Trace.InternedData.InternedData_Fields.logMessageBody' @:: Lens' InternedData [Proto.Protos.Perfetto.Trace.TrackEvent.LogMessage.LogMessageBody]@
         * 'Proto.Protos.Perfetto.Trace.InternedData.InternedData_Fields.vec'logMessageBody' @:: Lens' InternedData (Data.Vector.Vector Proto.Protos.Perfetto.Trace.TrackEvent.LogMessage.LogMessageBody)@
         * 'Proto.Protos.Perfetto.Trace.InternedData.InternedData_Fields.buildIds' @:: Lens' InternedData [Proto.Protos.Perfetto.Trace.Profiling.ProfileCommon.InternedString]@
         * 'Proto.Protos.Perfetto.Trace.InternedData.InternedData_Fields.vec'buildIds' @:: Lens' InternedData (Data.Vector.Vector Proto.Protos.Perfetto.Trace.Profiling.ProfileCommon.InternedString)@
         * 'Proto.Protos.Perfetto.Trace.InternedData.InternedData_Fields.mappingPaths' @:: Lens' InternedData [Proto.Protos.Perfetto.Trace.Profiling.ProfileCommon.InternedString]@
         * 'Proto.Protos.Perfetto.Trace.InternedData.InternedData_Fields.vec'mappingPaths' @:: Lens' InternedData (Data.Vector.Vector Proto.Protos.Perfetto.Trace.Profiling.ProfileCommon.InternedString)@
         * 'Proto.Protos.Perfetto.Trace.InternedData.InternedData_Fields.sourcePaths' @:: Lens' InternedData [Proto.Protos.Perfetto.Trace.Profiling.ProfileCommon.InternedString]@
         * 'Proto.Protos.Perfetto.Trace.InternedData.InternedData_Fields.vec'sourcePaths' @:: Lens' InternedData (Data.Vector.Vector Proto.Protos.Perfetto.Trace.Profiling.ProfileCommon.InternedString)@
         * 'Proto.Protos.Perfetto.Trace.InternedData.InternedData_Fields.functionNames' @:: Lens' InternedData [Proto.Protos.Perfetto.Trace.Profiling.ProfileCommon.InternedString]@
         * 'Proto.Protos.Perfetto.Trace.InternedData.InternedData_Fields.vec'functionNames' @:: Lens' InternedData (Data.Vector.Vector Proto.Protos.Perfetto.Trace.Profiling.ProfileCommon.InternedString)@
         * 'Proto.Protos.Perfetto.Trace.InternedData.InternedData_Fields.profiledFrameSymbols' @:: Lens' InternedData [Proto.Protos.Perfetto.Trace.Profiling.ProfileCommon.ProfiledFrameSymbols]@
         * 'Proto.Protos.Perfetto.Trace.InternedData.InternedData_Fields.vec'profiledFrameSymbols' @:: Lens' InternedData (Data.Vector.Vector Proto.Protos.Perfetto.Trace.Profiling.ProfileCommon.ProfiledFrameSymbols)@
         * 'Proto.Protos.Perfetto.Trace.InternedData.InternedData_Fields.mappings' @:: Lens' InternedData [Proto.Protos.Perfetto.Trace.Profiling.ProfileCommon.Mapping]@
         * 'Proto.Protos.Perfetto.Trace.InternedData.InternedData_Fields.vec'mappings' @:: Lens' InternedData (Data.Vector.Vector Proto.Protos.Perfetto.Trace.Profiling.ProfileCommon.Mapping)@
         * 'Proto.Protos.Perfetto.Trace.InternedData.InternedData_Fields.frames' @:: Lens' InternedData [Proto.Protos.Perfetto.Trace.Profiling.ProfileCommon.Frame]@
         * 'Proto.Protos.Perfetto.Trace.InternedData.InternedData_Fields.vec'frames' @:: Lens' InternedData (Data.Vector.Vector Proto.Protos.Perfetto.Trace.Profiling.ProfileCommon.Frame)@
         * 'Proto.Protos.Perfetto.Trace.InternedData.InternedData_Fields.callstacks' @:: Lens' InternedData [Proto.Protos.Perfetto.Trace.Profiling.ProfileCommon.Callstack]@
         * 'Proto.Protos.Perfetto.Trace.InternedData.InternedData_Fields.vec'callstacks' @:: Lens' InternedData (Data.Vector.Vector Proto.Protos.Perfetto.Trace.Profiling.ProfileCommon.Callstack)@
         * 'Proto.Protos.Perfetto.Trace.InternedData.InternedData_Fields.vulkanMemoryKeys' @:: Lens' InternedData [Proto.Protos.Perfetto.Trace.Profiling.ProfileCommon.InternedString]@
         * 'Proto.Protos.Perfetto.Trace.InternedData.InternedData_Fields.vec'vulkanMemoryKeys' @:: Lens' InternedData (Data.Vector.Vector Proto.Protos.Perfetto.Trace.Profiling.ProfileCommon.InternedString)@
         * 'Proto.Protos.Perfetto.Trace.InternedData.InternedData_Fields.kernelSymbols' @:: Lens' InternedData [Proto.Protos.Perfetto.Trace.Profiling.ProfileCommon.InternedString]@
         * 'Proto.Protos.Perfetto.Trace.InternedData.InternedData_Fields.vec'kernelSymbols' @:: Lens' InternedData (Data.Vector.Vector Proto.Protos.Perfetto.Trace.Profiling.ProfileCommon.InternedString)@
         * 'Proto.Protos.Perfetto.Trace.InternedData.InternedData_Fields.debugAnnotationStringValues' @:: Lens' InternedData [Proto.Protos.Perfetto.Trace.Profiling.ProfileCommon.InternedString]@
         * 'Proto.Protos.Perfetto.Trace.InternedData.InternedData_Fields.vec'debugAnnotationStringValues' @:: Lens' InternedData (Data.Vector.Vector Proto.Protos.Perfetto.Trace.Profiling.ProfileCommon.InternedString)@ -}
data InternedData
  = InternedData'_constructor {_InternedData'eventCategories :: !(Data.Vector.Vector Proto.Protos.Perfetto.Trace.TrackEvent.TrackEvent.EventCategory),
                               _InternedData'eventNames :: !(Data.Vector.Vector Proto.Protos.Perfetto.Trace.TrackEvent.TrackEvent.EventName),
                               _InternedData'debugAnnotationNames :: !(Data.Vector.Vector Proto.Protos.Perfetto.Trace.TrackEvent.DebugAnnotation.DebugAnnotationName),
                               _InternedData'debugAnnotationValueTypeNames :: !(Data.Vector.Vector Proto.Protos.Perfetto.Trace.TrackEvent.DebugAnnotation.DebugAnnotationValueTypeName),
                               _InternedData'sourceLocations :: !(Data.Vector.Vector Proto.Protos.Perfetto.Trace.TrackEvent.SourceLocation.SourceLocation),
                               _InternedData'unsymbolizedSourceLocations :: !(Data.Vector.Vector Proto.Protos.Perfetto.Trace.TrackEvent.SourceLocation.UnsymbolizedSourceLocation),
                               _InternedData'logMessageBody :: !(Data.Vector.Vector Proto.Protos.Perfetto.Trace.TrackEvent.LogMessage.LogMessageBody),
                               _InternedData'buildIds :: !(Data.Vector.Vector Proto.Protos.Perfetto.Trace.Profiling.ProfileCommon.InternedString),
                               _InternedData'mappingPaths :: !(Data.Vector.Vector Proto.Protos.Perfetto.Trace.Profiling.ProfileCommon.InternedString),
                               _InternedData'sourcePaths :: !(Data.Vector.Vector Proto.Protos.Perfetto.Trace.Profiling.ProfileCommon.InternedString),
                               _InternedData'functionNames :: !(Data.Vector.Vector Proto.Protos.Perfetto.Trace.Profiling.ProfileCommon.InternedString),
                               _InternedData'profiledFrameSymbols :: !(Data.Vector.Vector Proto.Protos.Perfetto.Trace.Profiling.ProfileCommon.ProfiledFrameSymbols),
                               _InternedData'mappings :: !(Data.Vector.Vector Proto.Protos.Perfetto.Trace.Profiling.ProfileCommon.Mapping),
                               _InternedData'frames :: !(Data.Vector.Vector Proto.Protos.Perfetto.Trace.Profiling.ProfileCommon.Frame),
                               _InternedData'callstacks :: !(Data.Vector.Vector Proto.Protos.Perfetto.Trace.Profiling.ProfileCommon.Callstack),
                               _InternedData'vulkanMemoryKeys :: !(Data.Vector.Vector Proto.Protos.Perfetto.Trace.Profiling.ProfileCommon.InternedString),
                               _InternedData'kernelSymbols :: !(Data.Vector.Vector Proto.Protos.Perfetto.Trace.Profiling.ProfileCommon.InternedString),
                               _InternedData'debugAnnotationStringValues :: !(Data.Vector.Vector Proto.Protos.Perfetto.Trace.Profiling.ProfileCommon.InternedString),
                               _InternedData'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show InternedData where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField InternedData "eventCategories" [Proto.Protos.Perfetto.Trace.TrackEvent.TrackEvent.EventCategory] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _InternedData'eventCategories
           (\ x__ y__ -> x__ {_InternedData'eventCategories = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField InternedData "vec'eventCategories" (Data.Vector.Vector Proto.Protos.Perfetto.Trace.TrackEvent.TrackEvent.EventCategory) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _InternedData'eventCategories
           (\ x__ y__ -> x__ {_InternedData'eventCategories = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField InternedData "eventNames" [Proto.Protos.Perfetto.Trace.TrackEvent.TrackEvent.EventName] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _InternedData'eventNames
           (\ x__ y__ -> x__ {_InternedData'eventNames = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField InternedData "vec'eventNames" (Data.Vector.Vector Proto.Protos.Perfetto.Trace.TrackEvent.TrackEvent.EventName) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _InternedData'eventNames
           (\ x__ y__ -> x__ {_InternedData'eventNames = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField InternedData "debugAnnotationNames" [Proto.Protos.Perfetto.Trace.TrackEvent.DebugAnnotation.DebugAnnotationName] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _InternedData'debugAnnotationNames
           (\ x__ y__ -> x__ {_InternedData'debugAnnotationNames = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField InternedData "vec'debugAnnotationNames" (Data.Vector.Vector Proto.Protos.Perfetto.Trace.TrackEvent.DebugAnnotation.DebugAnnotationName) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _InternedData'debugAnnotationNames
           (\ x__ y__ -> x__ {_InternedData'debugAnnotationNames = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField InternedData "debugAnnotationValueTypeNames" [Proto.Protos.Perfetto.Trace.TrackEvent.DebugAnnotation.DebugAnnotationValueTypeName] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _InternedData'debugAnnotationValueTypeNames
           (\ x__ y__
              -> x__ {_InternedData'debugAnnotationValueTypeNames = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField InternedData "vec'debugAnnotationValueTypeNames" (Data.Vector.Vector Proto.Protos.Perfetto.Trace.TrackEvent.DebugAnnotation.DebugAnnotationValueTypeName) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _InternedData'debugAnnotationValueTypeNames
           (\ x__ y__
              -> x__ {_InternedData'debugAnnotationValueTypeNames = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField InternedData "sourceLocations" [Proto.Protos.Perfetto.Trace.TrackEvent.SourceLocation.SourceLocation] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _InternedData'sourceLocations
           (\ x__ y__ -> x__ {_InternedData'sourceLocations = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField InternedData "vec'sourceLocations" (Data.Vector.Vector Proto.Protos.Perfetto.Trace.TrackEvent.SourceLocation.SourceLocation) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _InternedData'sourceLocations
           (\ x__ y__ -> x__ {_InternedData'sourceLocations = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField InternedData "unsymbolizedSourceLocations" [Proto.Protos.Perfetto.Trace.TrackEvent.SourceLocation.UnsymbolizedSourceLocation] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _InternedData'unsymbolizedSourceLocations
           (\ x__ y__
              -> x__ {_InternedData'unsymbolizedSourceLocations = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField InternedData "vec'unsymbolizedSourceLocations" (Data.Vector.Vector Proto.Protos.Perfetto.Trace.TrackEvent.SourceLocation.UnsymbolizedSourceLocation) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _InternedData'unsymbolizedSourceLocations
           (\ x__ y__
              -> x__ {_InternedData'unsymbolizedSourceLocations = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField InternedData "logMessageBody" [Proto.Protos.Perfetto.Trace.TrackEvent.LogMessage.LogMessageBody] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _InternedData'logMessageBody
           (\ x__ y__ -> x__ {_InternedData'logMessageBody = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField InternedData "vec'logMessageBody" (Data.Vector.Vector Proto.Protos.Perfetto.Trace.TrackEvent.LogMessage.LogMessageBody) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _InternedData'logMessageBody
           (\ x__ y__ -> x__ {_InternedData'logMessageBody = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField InternedData "buildIds" [Proto.Protos.Perfetto.Trace.Profiling.ProfileCommon.InternedString] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _InternedData'buildIds
           (\ x__ y__ -> x__ {_InternedData'buildIds = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField InternedData "vec'buildIds" (Data.Vector.Vector Proto.Protos.Perfetto.Trace.Profiling.ProfileCommon.InternedString) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _InternedData'buildIds
           (\ x__ y__ -> x__ {_InternedData'buildIds = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField InternedData "mappingPaths" [Proto.Protos.Perfetto.Trace.Profiling.ProfileCommon.InternedString] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _InternedData'mappingPaths
           (\ x__ y__ -> x__ {_InternedData'mappingPaths = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField InternedData "vec'mappingPaths" (Data.Vector.Vector Proto.Protos.Perfetto.Trace.Profiling.ProfileCommon.InternedString) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _InternedData'mappingPaths
           (\ x__ y__ -> x__ {_InternedData'mappingPaths = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField InternedData "sourcePaths" [Proto.Protos.Perfetto.Trace.Profiling.ProfileCommon.InternedString] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _InternedData'sourcePaths
           (\ x__ y__ -> x__ {_InternedData'sourcePaths = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField InternedData "vec'sourcePaths" (Data.Vector.Vector Proto.Protos.Perfetto.Trace.Profiling.ProfileCommon.InternedString) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _InternedData'sourcePaths
           (\ x__ y__ -> x__ {_InternedData'sourcePaths = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField InternedData "functionNames" [Proto.Protos.Perfetto.Trace.Profiling.ProfileCommon.InternedString] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _InternedData'functionNames
           (\ x__ y__ -> x__ {_InternedData'functionNames = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField InternedData "vec'functionNames" (Data.Vector.Vector Proto.Protos.Perfetto.Trace.Profiling.ProfileCommon.InternedString) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _InternedData'functionNames
           (\ x__ y__ -> x__ {_InternedData'functionNames = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField InternedData "profiledFrameSymbols" [Proto.Protos.Perfetto.Trace.Profiling.ProfileCommon.ProfiledFrameSymbols] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _InternedData'profiledFrameSymbols
           (\ x__ y__ -> x__ {_InternedData'profiledFrameSymbols = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField InternedData "vec'profiledFrameSymbols" (Data.Vector.Vector Proto.Protos.Perfetto.Trace.Profiling.ProfileCommon.ProfiledFrameSymbols) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _InternedData'profiledFrameSymbols
           (\ x__ y__ -> x__ {_InternedData'profiledFrameSymbols = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField InternedData "mappings" [Proto.Protos.Perfetto.Trace.Profiling.ProfileCommon.Mapping] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _InternedData'mappings
           (\ x__ y__ -> x__ {_InternedData'mappings = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField InternedData "vec'mappings" (Data.Vector.Vector Proto.Protos.Perfetto.Trace.Profiling.ProfileCommon.Mapping) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _InternedData'mappings
           (\ x__ y__ -> x__ {_InternedData'mappings = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField InternedData "frames" [Proto.Protos.Perfetto.Trace.Profiling.ProfileCommon.Frame] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _InternedData'frames
           (\ x__ y__ -> x__ {_InternedData'frames = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField InternedData "vec'frames" (Data.Vector.Vector Proto.Protos.Perfetto.Trace.Profiling.ProfileCommon.Frame) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _InternedData'frames
           (\ x__ y__ -> x__ {_InternedData'frames = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField InternedData "callstacks" [Proto.Protos.Perfetto.Trace.Profiling.ProfileCommon.Callstack] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _InternedData'callstacks
           (\ x__ y__ -> x__ {_InternedData'callstacks = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField InternedData "vec'callstacks" (Data.Vector.Vector Proto.Protos.Perfetto.Trace.Profiling.ProfileCommon.Callstack) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _InternedData'callstacks
           (\ x__ y__ -> x__ {_InternedData'callstacks = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField InternedData "vulkanMemoryKeys" [Proto.Protos.Perfetto.Trace.Profiling.ProfileCommon.InternedString] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _InternedData'vulkanMemoryKeys
           (\ x__ y__ -> x__ {_InternedData'vulkanMemoryKeys = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField InternedData "vec'vulkanMemoryKeys" (Data.Vector.Vector Proto.Protos.Perfetto.Trace.Profiling.ProfileCommon.InternedString) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _InternedData'vulkanMemoryKeys
           (\ x__ y__ -> x__ {_InternedData'vulkanMemoryKeys = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField InternedData "kernelSymbols" [Proto.Protos.Perfetto.Trace.Profiling.ProfileCommon.InternedString] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _InternedData'kernelSymbols
           (\ x__ y__ -> x__ {_InternedData'kernelSymbols = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField InternedData "vec'kernelSymbols" (Data.Vector.Vector Proto.Protos.Perfetto.Trace.Profiling.ProfileCommon.InternedString) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _InternedData'kernelSymbols
           (\ x__ y__ -> x__ {_InternedData'kernelSymbols = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField InternedData "debugAnnotationStringValues" [Proto.Protos.Perfetto.Trace.Profiling.ProfileCommon.InternedString] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _InternedData'debugAnnotationStringValues
           (\ x__ y__
              -> x__ {_InternedData'debugAnnotationStringValues = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField InternedData "vec'debugAnnotationStringValues" (Data.Vector.Vector Proto.Protos.Perfetto.Trace.Profiling.ProfileCommon.InternedString) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _InternedData'debugAnnotationStringValues
           (\ x__ y__
              -> x__ {_InternedData'debugAnnotationStringValues = y__}))
        Prelude.id
instance Data.ProtoLens.Message InternedData where
  messageName _ = Data.Text.pack "perfetto.protos.InternedData"
  packedMessageDescriptor _
    = "\n\
      \\fInternedData\DC2I\n\
      \\DLEevent_categories\CAN\SOH \ETX(\v2\RS.perfetto.protos.EventCategoryR\SIeventCategories\DC2;\n\
      \\vevent_names\CAN\STX \ETX(\v2\SUB.perfetto.protos.EventNameR\n\
      \eventNames\DC2Z\n\
      \\SYNdebug_annotation_names\CAN\ETX \ETX(\v2$.perfetto.protos.DebugAnnotationNameR\DC4debugAnnotationNames\DC2w\n\
      \!debug_annotation_value_type_names\CAN\ESC \ETX(\v2-.perfetto.protos.DebugAnnotationValueTypeNameR\GSdebugAnnotationValueTypeNames\DC2J\n\
      \\DLEsource_locations\CAN\EOT \ETX(\v2\US.perfetto.protos.SourceLocationR\SIsourceLocations\DC2o\n\
      \\GSunsymbolized_source_locations\CAN\FS \ETX(\v2+.perfetto.protos.UnsymbolizedSourceLocationR\ESCunsymbolizedSourceLocations\DC2I\n\
      \\DLElog_message_body\CAN\DC4 \ETX(\v2\US.perfetto.protos.LogMessageBodyR\SOlogMessageBody\DC2<\n\
      \\tbuild_ids\CAN\DLE \ETX(\v2\US.perfetto.protos.InternedStringR\bbuildIds\DC2D\n\
      \\rmapping_paths\CAN\DC1 \ETX(\v2\US.perfetto.protos.InternedStringR\fmappingPaths\DC2B\n\
      \\fsource_paths\CAN\DC2 \ETX(\v2\US.perfetto.protos.InternedStringR\vsourcePaths\DC2F\n\
      \\SOfunction_names\CAN\ENQ \ETX(\v2\US.perfetto.protos.InternedStringR\rfunctionNames\DC2[\n\
      \\SYNprofiled_frame_symbols\CAN\NAK \ETX(\v2%.perfetto.protos.ProfiledFrameSymbolsR\DC4profiledFrameSymbols\DC24\n\
      \\bmappings\CAN\DC3 \ETX(\v2\CAN.perfetto.protos.MappingR\bmappings\DC2.\n\
      \\ACKframes\CAN\ACK \ETX(\v2\SYN.perfetto.protos.FrameR\ACKframes\DC2:\n\
      \\n\
      \callstacks\CAN\a \ETX(\v2\SUB.perfetto.protos.CallstackR\n\
      \callstacks\DC2M\n\
      \\DC2vulkan_memory_keys\CAN\SYN \ETX(\v2\US.perfetto.protos.InternedStringR\DLEvulkanMemoryKeys\DC2F\n\
      \\SOkernel_symbols\CAN\SUB \ETX(\v2\US.perfetto.protos.InternedStringR\rkernelSymbols\DC2d\n\
      \\RSdebug_annotation_string_values\CAN\GS \ETX(\v2\US.perfetto.protos.InternedStringR\ESCdebugAnnotationStringValues"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        eventCategories__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "event_categories"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Protos.Perfetto.Trace.TrackEvent.TrackEvent.EventCategory)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"eventCategories")) ::
              Data.ProtoLens.FieldDescriptor InternedData
        eventNames__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "event_names"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Protos.Perfetto.Trace.TrackEvent.TrackEvent.EventName)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"eventNames")) ::
              Data.ProtoLens.FieldDescriptor InternedData
        debugAnnotationNames__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "debug_annotation_names"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Protos.Perfetto.Trace.TrackEvent.DebugAnnotation.DebugAnnotationName)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"debugAnnotationNames")) ::
              Data.ProtoLens.FieldDescriptor InternedData
        debugAnnotationValueTypeNames__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "debug_annotation_value_type_names"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Protos.Perfetto.Trace.TrackEvent.DebugAnnotation.DebugAnnotationValueTypeName)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"debugAnnotationValueTypeNames")) ::
              Data.ProtoLens.FieldDescriptor InternedData
        sourceLocations__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "source_locations"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Protos.Perfetto.Trace.TrackEvent.SourceLocation.SourceLocation)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"sourceLocations")) ::
              Data.ProtoLens.FieldDescriptor InternedData
        unsymbolizedSourceLocations__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "unsymbolized_source_locations"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Protos.Perfetto.Trace.TrackEvent.SourceLocation.UnsymbolizedSourceLocation)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"unsymbolizedSourceLocations")) ::
              Data.ProtoLens.FieldDescriptor InternedData
        logMessageBody__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "log_message_body"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Protos.Perfetto.Trace.TrackEvent.LogMessage.LogMessageBody)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"logMessageBody")) ::
              Data.ProtoLens.FieldDescriptor InternedData
        buildIds__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "build_ids"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Protos.Perfetto.Trace.Profiling.ProfileCommon.InternedString)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"buildIds")) ::
              Data.ProtoLens.FieldDescriptor InternedData
        mappingPaths__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "mapping_paths"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Protos.Perfetto.Trace.Profiling.ProfileCommon.InternedString)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"mappingPaths")) ::
              Data.ProtoLens.FieldDescriptor InternedData
        sourcePaths__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "source_paths"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Protos.Perfetto.Trace.Profiling.ProfileCommon.InternedString)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"sourcePaths")) ::
              Data.ProtoLens.FieldDescriptor InternedData
        functionNames__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "function_names"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Protos.Perfetto.Trace.Profiling.ProfileCommon.InternedString)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"functionNames")) ::
              Data.ProtoLens.FieldDescriptor InternedData
        profiledFrameSymbols__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "profiled_frame_symbols"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Protos.Perfetto.Trace.Profiling.ProfileCommon.ProfiledFrameSymbols)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"profiledFrameSymbols")) ::
              Data.ProtoLens.FieldDescriptor InternedData
        mappings__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "mappings"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Protos.Perfetto.Trace.Profiling.ProfileCommon.Mapping)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"mappings")) ::
              Data.ProtoLens.FieldDescriptor InternedData
        frames__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "frames"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Protos.Perfetto.Trace.Profiling.ProfileCommon.Frame)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"frames")) ::
              Data.ProtoLens.FieldDescriptor InternedData
        callstacks__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "callstacks"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Protos.Perfetto.Trace.Profiling.ProfileCommon.Callstack)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"callstacks")) ::
              Data.ProtoLens.FieldDescriptor InternedData
        vulkanMemoryKeys__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "vulkan_memory_keys"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Protos.Perfetto.Trace.Profiling.ProfileCommon.InternedString)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"vulkanMemoryKeys")) ::
              Data.ProtoLens.FieldDescriptor InternedData
        kernelSymbols__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "kernel_symbols"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Protos.Perfetto.Trace.Profiling.ProfileCommon.InternedString)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"kernelSymbols")) ::
              Data.ProtoLens.FieldDescriptor InternedData
        debugAnnotationStringValues__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "debug_annotation_string_values"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Protos.Perfetto.Trace.Profiling.ProfileCommon.InternedString)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"debugAnnotationStringValues")) ::
              Data.ProtoLens.FieldDescriptor InternedData
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, eventCategories__field_descriptor),
           (Data.ProtoLens.Tag 2, eventNames__field_descriptor),
           (Data.ProtoLens.Tag 3, debugAnnotationNames__field_descriptor),
           (Data.ProtoLens.Tag 27, 
            debugAnnotationValueTypeNames__field_descriptor),
           (Data.ProtoLens.Tag 4, sourceLocations__field_descriptor),
           (Data.ProtoLens.Tag 28, 
            unsymbolizedSourceLocations__field_descriptor),
           (Data.ProtoLens.Tag 20, logMessageBody__field_descriptor),
           (Data.ProtoLens.Tag 16, buildIds__field_descriptor),
           (Data.ProtoLens.Tag 17, mappingPaths__field_descriptor),
           (Data.ProtoLens.Tag 18, sourcePaths__field_descriptor),
           (Data.ProtoLens.Tag 5, functionNames__field_descriptor),
           (Data.ProtoLens.Tag 21, profiledFrameSymbols__field_descriptor),
           (Data.ProtoLens.Tag 19, mappings__field_descriptor),
           (Data.ProtoLens.Tag 6, frames__field_descriptor),
           (Data.ProtoLens.Tag 7, callstacks__field_descriptor),
           (Data.ProtoLens.Tag 22, vulkanMemoryKeys__field_descriptor),
           (Data.ProtoLens.Tag 26, kernelSymbols__field_descriptor),
           (Data.ProtoLens.Tag 29, 
            debugAnnotationStringValues__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _InternedData'_unknownFields
        (\ x__ y__ -> x__ {_InternedData'_unknownFields = y__})
  defMessage
    = InternedData'_constructor
        {_InternedData'eventCategories = Data.Vector.Generic.empty,
         _InternedData'eventNames = Data.Vector.Generic.empty,
         _InternedData'debugAnnotationNames = Data.Vector.Generic.empty,
         _InternedData'debugAnnotationValueTypeNames = Data.Vector.Generic.empty,
         _InternedData'sourceLocations = Data.Vector.Generic.empty,
         _InternedData'unsymbolizedSourceLocations = Data.Vector.Generic.empty,
         _InternedData'logMessageBody = Data.Vector.Generic.empty,
         _InternedData'buildIds = Data.Vector.Generic.empty,
         _InternedData'mappingPaths = Data.Vector.Generic.empty,
         _InternedData'sourcePaths = Data.Vector.Generic.empty,
         _InternedData'functionNames = Data.Vector.Generic.empty,
         _InternedData'profiledFrameSymbols = Data.Vector.Generic.empty,
         _InternedData'mappings = Data.Vector.Generic.empty,
         _InternedData'frames = Data.Vector.Generic.empty,
         _InternedData'callstacks = Data.Vector.Generic.empty,
         _InternedData'vulkanMemoryKeys = Data.Vector.Generic.empty,
         _InternedData'kernelSymbols = Data.Vector.Generic.empty,
         _InternedData'debugAnnotationStringValues = Data.Vector.Generic.empty,
         _InternedData'_unknownFields = []}
  parseMessage
    = let
        loop ::
          InternedData
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Protos.Perfetto.Trace.Profiling.ProfileCommon.InternedString
             -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Protos.Perfetto.Trace.Profiling.ProfileCommon.Callstack
                -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Protos.Perfetto.Trace.TrackEvent.DebugAnnotation.DebugAnnotationName
                   -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Protos.Perfetto.Trace.Profiling.ProfileCommon.InternedString
                      -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Protos.Perfetto.Trace.TrackEvent.DebugAnnotation.DebugAnnotationValueTypeName
                         -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Protos.Perfetto.Trace.TrackEvent.TrackEvent.EventCategory
                            -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Protos.Perfetto.Trace.TrackEvent.TrackEvent.EventName
                               -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Protos.Perfetto.Trace.Profiling.ProfileCommon.Frame
                                  -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Protos.Perfetto.Trace.Profiling.ProfileCommon.InternedString
                                     -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Protos.Perfetto.Trace.Profiling.ProfileCommon.InternedString
                                        -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Protos.Perfetto.Trace.TrackEvent.LogMessage.LogMessageBody
                                           -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Protos.Perfetto.Trace.Profiling.ProfileCommon.InternedString
                                              -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Protos.Perfetto.Trace.Profiling.ProfileCommon.Mapping
                                                 -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Protos.Perfetto.Trace.Profiling.ProfileCommon.ProfiledFrameSymbols
                                                    -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Protos.Perfetto.Trace.TrackEvent.SourceLocation.SourceLocation
                                                       -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Protos.Perfetto.Trace.Profiling.ProfileCommon.InternedString
                                                          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Protos.Perfetto.Trace.TrackEvent.SourceLocation.UnsymbolizedSourceLocation
                                                             -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Protos.Perfetto.Trace.Profiling.ProfileCommon.InternedString
                                                                -> Data.ProtoLens.Encoding.Bytes.Parser InternedData
        loop
          x
          mutable'buildIds
          mutable'callstacks
          mutable'debugAnnotationNames
          mutable'debugAnnotationStringValues
          mutable'debugAnnotationValueTypeNames
          mutable'eventCategories
          mutable'eventNames
          mutable'frames
          mutable'functionNames
          mutable'kernelSymbols
          mutable'logMessageBody
          mutable'mappingPaths
          mutable'mappings
          mutable'profiledFrameSymbols
          mutable'sourceLocations
          mutable'sourcePaths
          mutable'unsymbolizedSourceLocations
          mutable'vulkanMemoryKeys
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'buildIds <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                           (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                              mutable'buildIds)
                      frozen'callstacks <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                             (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                mutable'callstacks)
                      frozen'debugAnnotationNames <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                       (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                          mutable'debugAnnotationNames)
                      frozen'debugAnnotationStringValues <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                              (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                                 mutable'debugAnnotationStringValues)
                      frozen'debugAnnotationValueTypeNames <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                                (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                                   mutable'debugAnnotationValueTypeNames)
                      frozen'eventCategories <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                  (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                     mutable'eventCategories)
                      frozen'eventNames <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                             (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                mutable'eventNames)
                      frozen'frames <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                         (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                            mutable'frames)
                      frozen'functionNames <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                   mutable'functionNames)
                      frozen'kernelSymbols <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                   mutable'kernelSymbols)
                      frozen'logMessageBody <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                 (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                    mutable'logMessageBody)
                      frozen'mappingPaths <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                               (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                  mutable'mappingPaths)
                      frozen'mappings <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                           (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                              mutable'mappings)
                      frozen'profiledFrameSymbols <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                       (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                          mutable'profiledFrameSymbols)
                      frozen'sourceLocations <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                  (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                     mutable'sourceLocations)
                      frozen'sourcePaths <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                              (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                 mutable'sourcePaths)
                      frozen'unsymbolizedSourceLocations <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                              (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                                 mutable'unsymbolizedSourceLocations)
                      frozen'vulkanMemoryKeys <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                   (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                      mutable'vulkanMemoryKeys)
                      (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t)
                           (Lens.Family2.set
                              (Data.ProtoLens.Field.field @"vec'buildIds") frozen'buildIds
                              (Lens.Family2.set
                                 (Data.ProtoLens.Field.field @"vec'callstacks") frozen'callstacks
                                 (Lens.Family2.set
                                    (Data.ProtoLens.Field.field @"vec'debugAnnotationNames")
                                    frozen'debugAnnotationNames
                                    (Lens.Family2.set
                                       (Data.ProtoLens.Field.field
                                          @"vec'debugAnnotationStringValues")
                                       frozen'debugAnnotationStringValues
                                       (Lens.Family2.set
                                          (Data.ProtoLens.Field.field
                                             @"vec'debugAnnotationValueTypeNames")
                                          frozen'debugAnnotationValueTypeNames
                                          (Lens.Family2.set
                                             (Data.ProtoLens.Field.field @"vec'eventCategories")
                                             frozen'eventCategories
                                             (Lens.Family2.set
                                                (Data.ProtoLens.Field.field @"vec'eventNames")
                                                frozen'eventNames
                                                (Lens.Family2.set
                                                   (Data.ProtoLens.Field.field @"vec'frames")
                                                   frozen'frames
                                                   (Lens.Family2.set
                                                      (Data.ProtoLens.Field.field
                                                         @"vec'functionNames")
                                                      frozen'functionNames
                                                      (Lens.Family2.set
                                                         (Data.ProtoLens.Field.field
                                                            @"vec'kernelSymbols")
                                                         frozen'kernelSymbols
                                                         (Lens.Family2.set
                                                            (Data.ProtoLens.Field.field
                                                               @"vec'logMessageBody")
                                                            frozen'logMessageBody
                                                            (Lens.Family2.set
                                                               (Data.ProtoLens.Field.field
                                                                  @"vec'mappingPaths")
                                                               frozen'mappingPaths
                                                               (Lens.Family2.set
                                                                  (Data.ProtoLens.Field.field
                                                                     @"vec'mappings")
                                                                  frozen'mappings
                                                                  (Lens.Family2.set
                                                                     (Data.ProtoLens.Field.field
                                                                        @"vec'profiledFrameSymbols")
                                                                     frozen'profiledFrameSymbols
                                                                     (Lens.Family2.set
                                                                        (Data.ProtoLens.Field.field
                                                                           @"vec'sourceLocations")
                                                                        frozen'sourceLocations
                                                                        (Lens.Family2.set
                                                                           (Data.ProtoLens.Field.field
                                                                              @"vec'sourcePaths")
                                                                           frozen'sourcePaths
                                                                           (Lens.Family2.set
                                                                              (Data.ProtoLens.Field.field
                                                                                 @"vec'unsymbolizedSourceLocations")
                                                                              frozen'unsymbolizedSourceLocations
                                                                              (Lens.Family2.set
                                                                                 (Data.ProtoLens.Field.field
                                                                                    @"vec'vulkanMemoryKeys")
                                                                                 frozen'vulkanMemoryKeys
                                                                                 x)))))))))))))))))))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "event_categories"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'eventCategories y)
                                loop
                                  x mutable'buildIds mutable'callstacks mutable'debugAnnotationNames
                                  mutable'debugAnnotationStringValues
                                  mutable'debugAnnotationValueTypeNames v mutable'eventNames
                                  mutable'frames mutable'functionNames mutable'kernelSymbols
                                  mutable'logMessageBody mutable'mappingPaths mutable'mappings
                                  mutable'profiledFrameSymbols mutable'sourceLocations
                                  mutable'sourcePaths mutable'unsymbolizedSourceLocations
                                  mutable'vulkanMemoryKeys
                        18
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "event_names"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'eventNames y)
                                loop
                                  x mutable'buildIds mutable'callstacks mutable'debugAnnotationNames
                                  mutable'debugAnnotationStringValues
                                  mutable'debugAnnotationValueTypeNames mutable'eventCategories v
                                  mutable'frames mutable'functionNames mutable'kernelSymbols
                                  mutable'logMessageBody mutable'mappingPaths mutable'mappings
                                  mutable'profiledFrameSymbols mutable'sourceLocations
                                  mutable'sourcePaths mutable'unsymbolizedSourceLocations
                                  mutable'vulkanMemoryKeys
                        26
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "debug_annotation_names"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'debugAnnotationNames y)
                                loop
                                  x mutable'buildIds mutable'callstacks v
                                  mutable'debugAnnotationStringValues
                                  mutable'debugAnnotationValueTypeNames mutable'eventCategories
                                  mutable'eventNames mutable'frames mutable'functionNames
                                  mutable'kernelSymbols mutable'logMessageBody mutable'mappingPaths
                                  mutable'mappings mutable'profiledFrameSymbols
                                  mutable'sourceLocations mutable'sourcePaths
                                  mutable'unsymbolizedSourceLocations mutable'vulkanMemoryKeys
                        218
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "debug_annotation_value_type_names"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'debugAnnotationValueTypeNames y)
                                loop
                                  x mutable'buildIds mutable'callstacks mutable'debugAnnotationNames
                                  mutable'debugAnnotationStringValues v mutable'eventCategories
                                  mutable'eventNames mutable'frames mutable'functionNames
                                  mutable'kernelSymbols mutable'logMessageBody mutable'mappingPaths
                                  mutable'mappings mutable'profiledFrameSymbols
                                  mutable'sourceLocations mutable'sourcePaths
                                  mutable'unsymbolizedSourceLocations mutable'vulkanMemoryKeys
                        34
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "source_locations"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'sourceLocations y)
                                loop
                                  x mutable'buildIds mutable'callstacks mutable'debugAnnotationNames
                                  mutable'debugAnnotationStringValues
                                  mutable'debugAnnotationValueTypeNames mutable'eventCategories
                                  mutable'eventNames mutable'frames mutable'functionNames
                                  mutable'kernelSymbols mutable'logMessageBody mutable'mappingPaths
                                  mutable'mappings mutable'profiledFrameSymbols v
                                  mutable'sourcePaths mutable'unsymbolizedSourceLocations
                                  mutable'vulkanMemoryKeys
                        226
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "unsymbolized_source_locations"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'unsymbolizedSourceLocations y)
                                loop
                                  x mutable'buildIds mutable'callstacks mutable'debugAnnotationNames
                                  mutable'debugAnnotationStringValues
                                  mutable'debugAnnotationValueTypeNames mutable'eventCategories
                                  mutable'eventNames mutable'frames mutable'functionNames
                                  mutable'kernelSymbols mutable'logMessageBody mutable'mappingPaths
                                  mutable'mappings mutable'profiledFrameSymbols
                                  mutable'sourceLocations mutable'sourcePaths v
                                  mutable'vulkanMemoryKeys
                        162
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "log_message_body"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'logMessageBody y)
                                loop
                                  x mutable'buildIds mutable'callstacks mutable'debugAnnotationNames
                                  mutable'debugAnnotationStringValues
                                  mutable'debugAnnotationValueTypeNames mutable'eventCategories
                                  mutable'eventNames mutable'frames mutable'functionNames
                                  mutable'kernelSymbols v mutable'mappingPaths mutable'mappings
                                  mutable'profiledFrameSymbols mutable'sourceLocations
                                  mutable'sourcePaths mutable'unsymbolizedSourceLocations
                                  mutable'vulkanMemoryKeys
                        130
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "build_ids"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'buildIds y)
                                loop
                                  x v mutable'callstacks mutable'debugAnnotationNames
                                  mutable'debugAnnotationStringValues
                                  mutable'debugAnnotationValueTypeNames mutable'eventCategories
                                  mutable'eventNames mutable'frames mutable'functionNames
                                  mutable'kernelSymbols mutable'logMessageBody mutable'mappingPaths
                                  mutable'mappings mutable'profiledFrameSymbols
                                  mutable'sourceLocations mutable'sourcePaths
                                  mutable'unsymbolizedSourceLocations mutable'vulkanMemoryKeys
                        138
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "mapping_paths"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'mappingPaths y)
                                loop
                                  x mutable'buildIds mutable'callstacks mutable'debugAnnotationNames
                                  mutable'debugAnnotationStringValues
                                  mutable'debugAnnotationValueTypeNames mutable'eventCategories
                                  mutable'eventNames mutable'frames mutable'functionNames
                                  mutable'kernelSymbols mutable'logMessageBody v mutable'mappings
                                  mutable'profiledFrameSymbols mutable'sourceLocations
                                  mutable'sourcePaths mutable'unsymbolizedSourceLocations
                                  mutable'vulkanMemoryKeys
                        146
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "source_paths"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'sourcePaths y)
                                loop
                                  x mutable'buildIds mutable'callstacks mutable'debugAnnotationNames
                                  mutable'debugAnnotationStringValues
                                  mutable'debugAnnotationValueTypeNames mutable'eventCategories
                                  mutable'eventNames mutable'frames mutable'functionNames
                                  mutable'kernelSymbols mutable'logMessageBody mutable'mappingPaths
                                  mutable'mappings mutable'profiledFrameSymbols
                                  mutable'sourceLocations v mutable'unsymbolizedSourceLocations
                                  mutable'vulkanMemoryKeys
                        42
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "function_names"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'functionNames y)
                                loop
                                  x mutable'buildIds mutable'callstacks mutable'debugAnnotationNames
                                  mutable'debugAnnotationStringValues
                                  mutable'debugAnnotationValueTypeNames mutable'eventCategories
                                  mutable'eventNames mutable'frames v mutable'kernelSymbols
                                  mutable'logMessageBody mutable'mappingPaths mutable'mappings
                                  mutable'profiledFrameSymbols mutable'sourceLocations
                                  mutable'sourcePaths mutable'unsymbolizedSourceLocations
                                  mutable'vulkanMemoryKeys
                        170
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "profiled_frame_symbols"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'profiledFrameSymbols y)
                                loop
                                  x mutable'buildIds mutable'callstacks mutable'debugAnnotationNames
                                  mutable'debugAnnotationStringValues
                                  mutable'debugAnnotationValueTypeNames mutable'eventCategories
                                  mutable'eventNames mutable'frames mutable'functionNames
                                  mutable'kernelSymbols mutable'logMessageBody mutable'mappingPaths
                                  mutable'mappings v mutable'sourceLocations mutable'sourcePaths
                                  mutable'unsymbolizedSourceLocations mutable'vulkanMemoryKeys
                        154
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "mappings"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'mappings y)
                                loop
                                  x mutable'buildIds mutable'callstacks mutable'debugAnnotationNames
                                  mutable'debugAnnotationStringValues
                                  mutable'debugAnnotationValueTypeNames mutable'eventCategories
                                  mutable'eventNames mutable'frames mutable'functionNames
                                  mutable'kernelSymbols mutable'logMessageBody mutable'mappingPaths
                                  v mutable'profiledFrameSymbols mutable'sourceLocations
                                  mutable'sourcePaths mutable'unsymbolizedSourceLocations
                                  mutable'vulkanMemoryKeys
                        50
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "frames"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'frames y)
                                loop
                                  x mutable'buildIds mutable'callstacks mutable'debugAnnotationNames
                                  mutable'debugAnnotationStringValues
                                  mutable'debugAnnotationValueTypeNames mutable'eventCategories
                                  mutable'eventNames v mutable'functionNames mutable'kernelSymbols
                                  mutable'logMessageBody mutable'mappingPaths mutable'mappings
                                  mutable'profiledFrameSymbols mutable'sourceLocations
                                  mutable'sourcePaths mutable'unsymbolizedSourceLocations
                                  mutable'vulkanMemoryKeys
                        58
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "callstacks"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'callstacks y)
                                loop
                                  x mutable'buildIds v mutable'debugAnnotationNames
                                  mutable'debugAnnotationStringValues
                                  mutable'debugAnnotationValueTypeNames mutable'eventCategories
                                  mutable'eventNames mutable'frames mutable'functionNames
                                  mutable'kernelSymbols mutable'logMessageBody mutable'mappingPaths
                                  mutable'mappings mutable'profiledFrameSymbols
                                  mutable'sourceLocations mutable'sourcePaths
                                  mutable'unsymbolizedSourceLocations mutable'vulkanMemoryKeys
                        178
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "vulkan_memory_keys"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'vulkanMemoryKeys y)
                                loop
                                  x mutable'buildIds mutable'callstacks mutable'debugAnnotationNames
                                  mutable'debugAnnotationStringValues
                                  mutable'debugAnnotationValueTypeNames mutable'eventCategories
                                  mutable'eventNames mutable'frames mutable'functionNames
                                  mutable'kernelSymbols mutable'logMessageBody mutable'mappingPaths
                                  mutable'mappings mutable'profiledFrameSymbols
                                  mutable'sourceLocations mutable'sourcePaths
                                  mutable'unsymbolizedSourceLocations v
                        210
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "kernel_symbols"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'kernelSymbols y)
                                loop
                                  x mutable'buildIds mutable'callstacks mutable'debugAnnotationNames
                                  mutable'debugAnnotationStringValues
                                  mutable'debugAnnotationValueTypeNames mutable'eventCategories
                                  mutable'eventNames mutable'frames mutable'functionNames v
                                  mutable'logMessageBody mutable'mappingPaths mutable'mappings
                                  mutable'profiledFrameSymbols mutable'sourceLocations
                                  mutable'sourcePaths mutable'unsymbolizedSourceLocations
                                  mutable'vulkanMemoryKeys
                        234
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "debug_annotation_string_values"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'debugAnnotationStringValues y)
                                loop
                                  x mutable'buildIds mutable'callstacks mutable'debugAnnotationNames
                                  v mutable'debugAnnotationValueTypeNames mutable'eventCategories
                                  mutable'eventNames mutable'frames mutable'functionNames
                                  mutable'kernelSymbols mutable'logMessageBody mutable'mappingPaths
                                  mutable'mappings mutable'profiledFrameSymbols
                                  mutable'sourceLocations mutable'sourcePaths
                                  mutable'unsymbolizedSourceLocations mutable'vulkanMemoryKeys
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'buildIds mutable'callstacks mutable'debugAnnotationNames
                                  mutable'debugAnnotationStringValues
                                  mutable'debugAnnotationValueTypeNames mutable'eventCategories
                                  mutable'eventNames mutable'frames mutable'functionNames
                                  mutable'kernelSymbols mutable'logMessageBody mutable'mappingPaths
                                  mutable'mappings mutable'profiledFrameSymbols
                                  mutable'sourceLocations mutable'sourcePaths
                                  mutable'unsymbolizedSourceLocations mutable'vulkanMemoryKeys
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'buildIds <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                    Data.ProtoLens.Encoding.Growing.new
              mutable'callstacks <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                      Data.ProtoLens.Encoding.Growing.new
              mutable'debugAnnotationNames <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                Data.ProtoLens.Encoding.Growing.new
              mutable'debugAnnotationStringValues <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                       Data.ProtoLens.Encoding.Growing.new
              mutable'debugAnnotationValueTypeNames <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                         Data.ProtoLens.Encoding.Growing.new
              mutable'eventCategories <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                           Data.ProtoLens.Encoding.Growing.new
              mutable'eventNames <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                      Data.ProtoLens.Encoding.Growing.new
              mutable'frames <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                  Data.ProtoLens.Encoding.Growing.new
              mutable'functionNames <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                         Data.ProtoLens.Encoding.Growing.new
              mutable'kernelSymbols <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                         Data.ProtoLens.Encoding.Growing.new
              mutable'logMessageBody <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                          Data.ProtoLens.Encoding.Growing.new
              mutable'mappingPaths <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                        Data.ProtoLens.Encoding.Growing.new
              mutable'mappings <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                    Data.ProtoLens.Encoding.Growing.new
              mutable'profiledFrameSymbols <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                Data.ProtoLens.Encoding.Growing.new
              mutable'sourceLocations <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                           Data.ProtoLens.Encoding.Growing.new
              mutable'sourcePaths <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       Data.ProtoLens.Encoding.Growing.new
              mutable'unsymbolizedSourceLocations <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                       Data.ProtoLens.Encoding.Growing.new
              mutable'vulkanMemoryKeys <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                            Data.ProtoLens.Encoding.Growing.new
              loop
                Data.ProtoLens.defMessage mutable'buildIds mutable'callstacks
                mutable'debugAnnotationNames mutable'debugAnnotationStringValues
                mutable'debugAnnotationValueTypeNames mutable'eventCategories
                mutable'eventNames mutable'frames mutable'functionNames
                mutable'kernelSymbols mutable'logMessageBody mutable'mappingPaths
                mutable'mappings mutable'profiledFrameSymbols
                mutable'sourceLocations mutable'sourcePaths
                mutable'unsymbolizedSourceLocations mutable'vulkanMemoryKeys)
          "InternedData"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                (\ _v
                   -> (Data.Monoid.<>)
                        (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                        ((Prelude..)
                           (\ bs
                              -> (Data.Monoid.<>)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt
                                      (Prelude.fromIntegral (Data.ByteString.length bs)))
                                   (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                           Data.ProtoLens.encodeMessage _v))
                (Lens.Family2.view
                   (Data.ProtoLens.Field.field @"vec'eventCategories") _x))
             ((Data.Monoid.<>)
                (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                   (\ _v
                      -> (Data.Monoid.<>)
                           (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                           ((Prelude..)
                              (\ bs
                                 -> (Data.Monoid.<>)
                                      (Data.ProtoLens.Encoding.Bytes.putVarInt
                                         (Prelude.fromIntegral (Data.ByteString.length bs)))
                                      (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                              Data.ProtoLens.encodeMessage _v))
                   (Lens.Family2.view
                      (Data.ProtoLens.Field.field @"vec'eventNames") _x))
                ((Data.Monoid.<>)
                   (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                      (\ _v
                         -> (Data.Monoid.<>)
                              (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
                              ((Prelude..)
                                 (\ bs
                                    -> (Data.Monoid.<>)
                                         (Data.ProtoLens.Encoding.Bytes.putVarInt
                                            (Prelude.fromIntegral (Data.ByteString.length bs)))
                                         (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                 Data.ProtoLens.encodeMessage _v))
                      (Lens.Family2.view
                         (Data.ProtoLens.Field.field @"vec'debugAnnotationNames") _x))
                   ((Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                         (\ _v
                            -> (Data.Monoid.<>)
                                 (Data.ProtoLens.Encoding.Bytes.putVarInt 218)
                                 ((Prelude..)
                                    (\ bs
                                       -> (Data.Monoid.<>)
                                            (Data.ProtoLens.Encoding.Bytes.putVarInt
                                               (Prelude.fromIntegral (Data.ByteString.length bs)))
                                            (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                    Data.ProtoLens.encodeMessage _v))
                         (Lens.Family2.view
                            (Data.ProtoLens.Field.field @"vec'debugAnnotationValueTypeNames")
                            _x))
                      ((Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                            (\ _v
                               -> (Data.Monoid.<>)
                                    (Data.ProtoLens.Encoding.Bytes.putVarInt 34)
                                    ((Prelude..)
                                       (\ bs
                                          -> (Data.Monoid.<>)
                                               (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                  (Prelude.fromIntegral
                                                     (Data.ByteString.length bs)))
                                               (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                       Data.ProtoLens.encodeMessage _v))
                            (Lens.Family2.view
                               (Data.ProtoLens.Field.field @"vec'sourceLocations") _x))
                         ((Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                               (\ _v
                                  -> (Data.Monoid.<>)
                                       (Data.ProtoLens.Encoding.Bytes.putVarInt 226)
                                       ((Prelude..)
                                          (\ bs
                                             -> (Data.Monoid.<>)
                                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                     (Prelude.fromIntegral
                                                        (Data.ByteString.length bs)))
                                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                          Data.ProtoLens.encodeMessage _v))
                               (Lens.Family2.view
                                  (Data.ProtoLens.Field.field @"vec'unsymbolizedSourceLocations")
                                  _x))
                            ((Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                                  (\ _v
                                     -> (Data.Monoid.<>)
                                          (Data.ProtoLens.Encoding.Bytes.putVarInt 162)
                                          ((Prelude..)
                                             (\ bs
                                                -> (Data.Monoid.<>)
                                                     (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                        (Prelude.fromIntegral
                                                           (Data.ByteString.length bs)))
                                                     (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                             Data.ProtoLens.encodeMessage _v))
                                  (Lens.Family2.view
                                     (Data.ProtoLens.Field.field @"vec'logMessageBody") _x))
                               ((Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                                     (\ _v
                                        -> (Data.Monoid.<>)
                                             (Data.ProtoLens.Encoding.Bytes.putVarInt 130)
                                             ((Prelude..)
                                                (\ bs
                                                   -> (Data.Monoid.<>)
                                                        (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                           (Prelude.fromIntegral
                                                              (Data.ByteString.length bs)))
                                                        (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                                Data.ProtoLens.encodeMessage _v))
                                     (Lens.Family2.view
                                        (Data.ProtoLens.Field.field @"vec'buildIds") _x))
                                  ((Data.Monoid.<>)
                                     (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                                        (\ _v
                                           -> (Data.Monoid.<>)
                                                (Data.ProtoLens.Encoding.Bytes.putVarInt 138)
                                                ((Prelude..)
                                                   (\ bs
                                                      -> (Data.Monoid.<>)
                                                           (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                              (Prelude.fromIntegral
                                                                 (Data.ByteString.length bs)))
                                                           (Data.ProtoLens.Encoding.Bytes.putBytes
                                                              bs))
                                                   Data.ProtoLens.encodeMessage _v))
                                        (Lens.Family2.view
                                           (Data.ProtoLens.Field.field @"vec'mappingPaths") _x))
                                     ((Data.Monoid.<>)
                                        (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                                           (\ _v
                                              -> (Data.Monoid.<>)
                                                   (Data.ProtoLens.Encoding.Bytes.putVarInt 146)
                                                   ((Prelude..)
                                                      (\ bs
                                                         -> (Data.Monoid.<>)
                                                              (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                 (Prelude.fromIntegral
                                                                    (Data.ByteString.length bs)))
                                                              (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                 bs))
                                                      Data.ProtoLens.encodeMessage _v))
                                           (Lens.Family2.view
                                              (Data.ProtoLens.Field.field @"vec'sourcePaths") _x))
                                        ((Data.Monoid.<>)
                                           (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                                              (\ _v
                                                 -> (Data.Monoid.<>)
                                                      (Data.ProtoLens.Encoding.Bytes.putVarInt 42)
                                                      ((Prelude..)
                                                         (\ bs
                                                            -> (Data.Monoid.<>)
                                                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                    (Prelude.fromIntegral
                                                                       (Data.ByteString.length bs)))
                                                                 (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                    bs))
                                                         Data.ProtoLens.encodeMessage _v))
                                              (Lens.Family2.view
                                                 (Data.ProtoLens.Field.field @"vec'functionNames")
                                                 _x))
                                           ((Data.Monoid.<>)
                                              (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                                                 (\ _v
                                                    -> (Data.Monoid.<>)
                                                         (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                            170)
                                                         ((Prelude..)
                                                            (\ bs
                                                               -> (Data.Monoid.<>)
                                                                    (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                       (Prelude.fromIntegral
                                                                          (Data.ByteString.length
                                                                             bs)))
                                                                    (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                       bs))
                                                            Data.ProtoLens.encodeMessage _v))
                                                 (Lens.Family2.view
                                                    (Data.ProtoLens.Field.field
                                                       @"vec'profiledFrameSymbols")
                                                    _x))
                                              ((Data.Monoid.<>)
                                                 (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                                                    (\ _v
                                                       -> (Data.Monoid.<>)
                                                            (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                               154)
                                                            ((Prelude..)
                                                               (\ bs
                                                                  -> (Data.Monoid.<>)
                                                                       (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                          (Prelude.fromIntegral
                                                                             (Data.ByteString.length
                                                                                bs)))
                                                                       (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                          bs))
                                                               Data.ProtoLens.encodeMessage _v))
                                                    (Lens.Family2.view
                                                       (Data.ProtoLens.Field.field @"vec'mappings")
                                                       _x))
                                                 ((Data.Monoid.<>)
                                                    (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                                                       (\ _v
                                                          -> (Data.Monoid.<>)
                                                               (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                  50)
                                                               ((Prelude..)
                                                                  (\ bs
                                                                     -> (Data.Monoid.<>)
                                                                          (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                             (Prelude.fromIntegral
                                                                                (Data.ByteString.length
                                                                                   bs)))
                                                                          (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                             bs))
                                                                  Data.ProtoLens.encodeMessage _v))
                                                       (Lens.Family2.view
                                                          (Data.ProtoLens.Field.field @"vec'frames")
                                                          _x))
                                                    ((Data.Monoid.<>)
                                                       (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                                                          (\ _v
                                                             -> (Data.Monoid.<>)
                                                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                     58)
                                                                  ((Prelude..)
                                                                     (\ bs
                                                                        -> (Data.Monoid.<>)
                                                                             (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                (Prelude.fromIntegral
                                                                                   (Data.ByteString.length
                                                                                      bs)))
                                                                             (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                                bs))
                                                                     Data.ProtoLens.encodeMessage
                                                                     _v))
                                                          (Lens.Family2.view
                                                             (Data.ProtoLens.Field.field
                                                                @"vec'callstacks")
                                                             _x))
                                                       ((Data.Monoid.<>)
                                                          (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                                                             (\ _v
                                                                -> (Data.Monoid.<>)
                                                                     (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                        178)
                                                                     ((Prelude..)
                                                                        (\ bs
                                                                           -> (Data.Monoid.<>)
                                                                                (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                   (Prelude.fromIntegral
                                                                                      (Data.ByteString.length
                                                                                         bs)))
                                                                                (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                                   bs))
                                                                        Data.ProtoLens.encodeMessage
                                                                        _v))
                                                             (Lens.Family2.view
                                                                (Data.ProtoLens.Field.field
                                                                   @"vec'vulkanMemoryKeys")
                                                                _x))
                                                          ((Data.Monoid.<>)
                                                             (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                                                                (\ _v
                                                                   -> (Data.Monoid.<>)
                                                                        (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                           210)
                                                                        ((Prelude..)
                                                                           (\ bs
                                                                              -> (Data.Monoid.<>)
                                                                                   (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                      (Prelude.fromIntegral
                                                                                         (Data.ByteString.length
                                                                                            bs)))
                                                                                   (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                                      bs))
                                                                           Data.ProtoLens.encodeMessage
                                                                           _v))
                                                                (Lens.Family2.view
                                                                   (Data.ProtoLens.Field.field
                                                                      @"vec'kernelSymbols")
                                                                   _x))
                                                             ((Data.Monoid.<>)
                                                                (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                                                                   (\ _v
                                                                      -> (Data.Monoid.<>)
                                                                           (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                              234)
                                                                           ((Prelude..)
                                                                              (\ bs
                                                                                 -> (Data.Monoid.<>)
                                                                                      (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                         (Prelude.fromIntegral
                                                                                            (Data.ByteString.length
                                                                                               bs)))
                                                                                      (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                                         bs))
                                                                              Data.ProtoLens.encodeMessage
                                                                              _v))
                                                                   (Lens.Family2.view
                                                                      (Data.ProtoLens.Field.field
                                                                         @"vec'debugAnnotationStringValues")
                                                                      _x))
                                                                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                                                   (Lens.Family2.view
                                                                      Data.ProtoLens.unknownFields
                                                                      _x)))))))))))))))))))
instance Control.DeepSeq.NFData InternedData where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_InternedData'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_InternedData'eventCategories x__)
                (Control.DeepSeq.deepseq
                   (_InternedData'eventNames x__)
                   (Control.DeepSeq.deepseq
                      (_InternedData'debugAnnotationNames x__)
                      (Control.DeepSeq.deepseq
                         (_InternedData'debugAnnotationValueTypeNames x__)
                         (Control.DeepSeq.deepseq
                            (_InternedData'sourceLocations x__)
                            (Control.DeepSeq.deepseq
                               (_InternedData'unsymbolizedSourceLocations x__)
                               (Control.DeepSeq.deepseq
                                  (_InternedData'logMessageBody x__)
                                  (Control.DeepSeq.deepseq
                                     (_InternedData'buildIds x__)
                                     (Control.DeepSeq.deepseq
                                        (_InternedData'mappingPaths x__)
                                        (Control.DeepSeq.deepseq
                                           (_InternedData'sourcePaths x__)
                                           (Control.DeepSeq.deepseq
                                              (_InternedData'functionNames x__)
                                              (Control.DeepSeq.deepseq
                                                 (_InternedData'profiledFrameSymbols x__)
                                                 (Control.DeepSeq.deepseq
                                                    (_InternedData'mappings x__)
                                                    (Control.DeepSeq.deepseq
                                                       (_InternedData'frames x__)
                                                       (Control.DeepSeq.deepseq
                                                          (_InternedData'callstacks x__)
                                                          (Control.DeepSeq.deepseq
                                                             (_InternedData'vulkanMemoryKeys x__)
                                                             (Control.DeepSeq.deepseq
                                                                (_InternedData'kernelSymbols x__)
                                                                (Control.DeepSeq.deepseq
                                                                   (_InternedData'debugAnnotationStringValues
                                                                      x__)
                                                                   ()))))))))))))))))))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \7protos/perfetto/trace/interned_data/interned_data.proto\DC2\SIperfetto.protos\SUB8protos/perfetto/trace/track_event/debug_annotation.proto\SUB3protos/perfetto/trace/track_event/log_message.proto\SUB3protos/perfetto/trace/track_event/track_event.proto\SUB7protos/perfetto/trace/track_event/source_location.proto\SUB4protos/perfetto/trace/profiling/profile_common.proto\"\255\n\
    \\n\
    \\fInternedData\DC2I\n\
    \\DLEevent_categories\CAN\SOH \ETX(\v2\RS.perfetto.protos.EventCategoryR\SIeventCategories\DC2;\n\
    \\vevent_names\CAN\STX \ETX(\v2\SUB.perfetto.protos.EventNameR\n\
    \eventNames\DC2Z\n\
    \\SYNdebug_annotation_names\CAN\ETX \ETX(\v2$.perfetto.protos.DebugAnnotationNameR\DC4debugAnnotationNames\DC2w\n\
    \!debug_annotation_value_type_names\CAN\ESC \ETX(\v2-.perfetto.protos.DebugAnnotationValueTypeNameR\GSdebugAnnotationValueTypeNames\DC2J\n\
    \\DLEsource_locations\CAN\EOT \ETX(\v2\US.perfetto.protos.SourceLocationR\SIsourceLocations\DC2o\n\
    \\GSunsymbolized_source_locations\CAN\FS \ETX(\v2+.perfetto.protos.UnsymbolizedSourceLocationR\ESCunsymbolizedSourceLocations\DC2I\n\
    \\DLElog_message_body\CAN\DC4 \ETX(\v2\US.perfetto.protos.LogMessageBodyR\SOlogMessageBody\DC2<\n\
    \\tbuild_ids\CAN\DLE \ETX(\v2\US.perfetto.protos.InternedStringR\bbuildIds\DC2D\n\
    \\rmapping_paths\CAN\DC1 \ETX(\v2\US.perfetto.protos.InternedStringR\fmappingPaths\DC2B\n\
    \\fsource_paths\CAN\DC2 \ETX(\v2\US.perfetto.protos.InternedStringR\vsourcePaths\DC2F\n\
    \\SOfunction_names\CAN\ENQ \ETX(\v2\US.perfetto.protos.InternedStringR\rfunctionNames\DC2[\n\
    \\SYNprofiled_frame_symbols\CAN\NAK \ETX(\v2%.perfetto.protos.ProfiledFrameSymbolsR\DC4profiledFrameSymbols\DC24\n\
    \\bmappings\CAN\DC3 \ETX(\v2\CAN.perfetto.protos.MappingR\bmappings\DC2.\n\
    \\ACKframes\CAN\ACK \ETX(\v2\SYN.perfetto.protos.FrameR\ACKframes\DC2:\n\
    \\n\
    \callstacks\CAN\a \ETX(\v2\SUB.perfetto.protos.CallstackR\n\
    \callstacks\DC2M\n\
    \\DC2vulkan_memory_keys\CAN\SYN \ETX(\v2\US.perfetto.protos.InternedStringR\DLEvulkanMemoryKeys\DC2F\n\
    \\SOkernel_symbols\CAN\SUB \ETX(\v2\US.perfetto.protos.InternedStringR\rkernelSymbols\DC2d\n\
    \\RSdebug_annotation_string_values\CAN\GS \ETX(\v2\US.perfetto.protos.InternedStringR\ESCdebugAnnotationStringValuesJ\206*\n\
    \\ACK\DC2\EOT\DLE\NULx\SOH\n\
    \\215\EOT\n\
    \\SOH\f\DC2\ETX\DLE\NUL\DC22\204\EOT\n\
    \ Copyright (C) 2019 The Android Open Source Project\n\
    \\n\
    \ Licensed under the Apache License, Version 2.0 (the \"License\");\n\
    \ you may not use this file except in compliance with the License.\n\
    \ You may obtain a copy of the License at\n\
    \\n\
    \      http://www.apache.org/licenses/LICENSE-2.0\n\
    \\n\
    \ Unless required by applicable law or agreed to in writing, software\n\
    \ distributed under the License is distributed on an \"AS IS\" BASIS,\n\
    \ WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.\n\
    \ See the License for the specific language governing permissions and\n\
    \ limitations under the License.\n\
    \\n\
    \\214\SOH\n\
    \\STX\ETX\NUL\DC2\ETX\NAK\NULB\SUB\202\SOH import \"protos/perfetto/trace/android/network_trace.proto\";\n\
    \ import \"protos/perfetto/trace/gpu/gpu_render_stage_event.proto\";\n\
    \ import \"protos/perfetto/trace/track_event/chrome_histogram_sample.proto\";\n\
    \\n\
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\SYN\NUL=\n\
    \\t\n\
    \\STX\ETX\STX\DC2\ETX\ETB\NUL=\n\
    \\t\n\
    \\STX\ETX\ETX\DC2\ETX\CAN\NULA\n\
    \\t\n\
    \\STX\ETX\EOT\DC2\ETX\EM\NUL>\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\ESC\NUL\CAN\n\
    \\233\f\n\
    \\STX\EOT\NUL\DC2\EOT9\NULx\SOH\SUB\229\STX Message that contains new entries for the interning indices of a packet\n\
    \ sequence.\n\
    \\n\
    \ The writer will usually emit new entries in the same TracePacket that first\n\
    \ refers to them (since the last reset of interning state). They may also be\n\
    \ emitted proactively in advance of referring to them in later packets.\n\
    \\n\
    \ Next reserved id: 8 (up to 15).\n\
    \ Next id: 31.\n\
    \\"r TODO(eseckler): Replace iid fields inside interned messages with\n\
    \ map<iid, message> type fields in InternedData.\n\
    \2\128\t ------------------------------ DATA INTERNING: ------------------------------\n\
    \ Interning indexes are built up gradually by adding the entries contained in\n\
    \ each TracePacket of the same packet sequence (packets emitted by the same\n\
    \ producer and TraceWriter, see |trusted_packet_sequence_id|). Thus, packets\n\
    \ can only refer to interned data from other packets in the same sequence.\n\
    \\n\
    \ The writer will emit new entries when it encounters new internable values\n\
    \ that aren't yet in the index. Data in current and subsequent TracePackets can\n\
    \ then refer to the entry by its position (interning ID, abbreviated \"iid\") in\n\
    \ its index. An interning ID with value 0 is considered invalid (not set).\n\
    \\n\
    \ Because of the incremental build-up, the interning index will miss data when\n\
    \ TracePackets are lost, e.g. because a chunk was overridden in the central\n\
    \ ring buffer. To avoid invalidation of the whole trace in such a case, the\n\
    \ index is periodically reset (see SEQ_INCREMENTAL_STATE_CLEARED).\n\
    \ When packet loss occurs, the reader will only lose interning data up to the\n\
    \ next reset.\n\
    \ -----------------------------------------------------------------------------\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX9\b\DC4\n\
    \\216\ETX\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETXD\STX.\SUB\202\ETX Each field's message type needs to specify an |iid| field, which is the ID\n\
    \ of the entry in the field's interning index. Each field constructs its own\n\
    \ index, thus interning IDs are scoped to the tracing session and field\n\
    \ (usually as a counter for efficient var-int encoding). It is illegal to\n\
    \ override entries in an index (using the same iid for two different values)\n\
    \ within the same tracing session, even after a reset of the emitted\n\
    \ interning state.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\EOT\DC2\ETXD\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ACK\DC2\ETXD\v\CAN\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETXD\EM)\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETXD,-\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETXE\STX%\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\EOT\DC2\ETXE\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ACK\DC2\ETXE\v\DC4\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETXE\NAK \n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETXE#$\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETXF\STX:\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\EOT\DC2\ETXF\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ACK\DC2\ETXF\v\RS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETXF\US5\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETXF89\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\ETX\DC2\ETXG\STXO\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\EOT\DC2\ETXG\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ACK\DC2\ETXG\v'\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\SOH\DC2\ETXG(I\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ETX\DC2\ETXGLN\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\EOT\DC2\ETXH\STX/\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\EOT\DC2\ETXH\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ACK\DC2\ETXH\v\EM\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\SOH\DC2\ETXH\SUB*\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ETX\DC2\ETXH-.\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\ENQ\DC2\ETXI\STXI\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\EOT\DC2\ETXI\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\ACK\DC2\ETXI\v%\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\SOH\DC2\ETXI&C\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\ETX\DC2\ETXIFH\n\
    \;\n\
    \\EOT\EOT\NUL\STX\ACK\DC2\ETXJ\STX0\". repeated HistogramName histogram_names = 25;\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ACK\EOT\DC2\ETXJ\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ACK\ACK\DC2\ETXJ\v\EM\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ACK\SOH\DC2\ETXJ\SUB*\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ACK\ETX\DC2\ETXJ-/\n\
    \p\n\
    \\EOT\EOT\NUL\STX\a\DC2\ETXP\STX)\SUB  Build IDs of exectuable files.\n\
    \2A Note: field IDs up to 15 should be used for frequent data only.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\a\EOT\DC2\ETXP\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\a\ACK\DC2\ETXP\v\EM\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\a\SOH\DC2\ETXP\SUB#\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\a\ETX\DC2\ETXP&(\n\
    \)\n\
    \\EOT\EOT\NUL\STX\b\DC2\ETXR\STX-\SUB\FS Paths to executable files.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\b\EOT\DC2\ETXR\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\b\ACK\DC2\ETXR\v\EM\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\b\SOH\DC2\ETXR\SUB'\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\b\ETX\DC2\ETXR*,\n\
    \%\n\
    \\EOT\EOT\NUL\STX\t\DC2\ETXT\STX,\SUB\CAN Paths to source files.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\t\EOT\DC2\ETXT\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\t\ACK\DC2\ETXT\v\EM\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\t\SOH\DC2\ETXT\SUB&\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\t\ETX\DC2\ETXT)+\n\
    \7\n\
    \\EOT\EOT\NUL\STX\n\
    \\DC2\ETXV\STX-\SUB* Names of functions used in frames below.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\n\
    \\EOT\DC2\ETXV\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\n\
    \\ACK\DC2\ETXV\v\EM\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\n\
    \\SOH\DC2\ETXV\SUB(\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\n\
    \\ETX\DC2\ETXV+,\n\
    \D\n\
    \\EOT\EOT\NUL\STX\v\DC2\ETXX\STX<\SUB7 Symbols that were added to this trace after the fact.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\v\EOT\DC2\ETXX\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\v\ACK\DC2\ETXX\v\US\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\v\SOH\DC2\ETXX 6\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\v\ETX\DC2\ETXX9;\n\
    \6\n\
    \\EOT\EOT\NUL\STX\f\DC2\ETX[\STX!\SUB) Executable files mapped into processes.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\f\EOT\DC2\ETX[\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\f\ACK\DC2\ETX[\v\DC2\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\f\SOH\DC2\ETX[\DC3\ESC\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\f\ETX\DC2\ETX[\RS \n\
    \1\n\
    \\EOT\EOT\NUL\STX\r\DC2\ETX]\STX\FS\SUB$ Frames of callstacks of a program.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\r\EOT\DC2\ETX]\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\r\ACK\DC2\ETX]\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\r\SOH\DC2\ETX]\DC1\ETB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\r\ETX\DC2\ETX]\SUB\ESC\n\
    \(\n\
    \\EOT\EOT\NUL\STX\SO\DC2\ETX_\STX$\SUB\ESC A callstack of a program.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SO\EOT\DC2\ETX_\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SO\ACK\DC2\ETX_\v\DC4\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SO\SOH\DC2\ETX_\NAK\US\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SO\ETX\DC2\ETX_\"#\n\
    \P\n\
    \\EOT\EOT\NUL\STX\SI\DC2\ETXb\STX2\SUBC Additional Vulkan information sent in a VulkanMemoryEvent message\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SI\EOT\DC2\ETXb\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SI\ACK\DC2\ETXb\v\EM\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SI\SOH\DC2\ETXb\SUB,\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SI\ETX\DC2\ETXb/1\n\
    \\170\ENQ\n\
    \\EOT\EOT\NUL\STX\DLE\DC2\ETXq\STX.\SUB\225\STX This is set when FtraceConfig.symbolize_ksyms = true.\n\
    \ The id of each symbol the number that will be reported in ftrace events\n\
    \ like sched_block_reason.caller and is obtained from a monotonic counter.\n\
    \ The same symbol can have different indexes in different bundles.\n\
    \ This is is NOT the real address. This is to avoid disclosing KASLR through\n\
    \ traces.\n\
    \2\185\SOH Graphics context of a render stage event.  This represent the GL\n\
    \ context for an OpenGl app or the VkDevice for a Vulkan app.\n\
    \ repeated InternedGraphicsContext graphics_contexts = 23;\n\
    \2} Description of a GPU hardware queue or render stage.\n\
    \ repeated InternedGpuRenderStageSpecification gpu_specifications = 24;\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\DLE\EOT\DC2\ETXq\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\DLE\ACK\DC2\ETXq\v\EM\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\DLE\SOH\DC2\ETXq\SUB(\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\DLE\ETX\DC2\ETXq+-\n\
    \C\n\
    \\EOT\EOT\NUL\STX\DC1\DC2\ETXt\STX>\SUB6 Interned string values in the DebugAnnotation proto.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\DC1\EOT\DC2\ETXt\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\DC1\ACK\DC2\ETXt\v\EM\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\DC1\SOH\DC2\ETXt\SUB8\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\DC1\ETX\DC2\ETXt;="