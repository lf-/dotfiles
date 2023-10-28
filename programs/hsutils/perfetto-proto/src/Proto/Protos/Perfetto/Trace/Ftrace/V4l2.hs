{- This file was auto-generated from protos/perfetto/trace/ftrace/v4l2.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Protos.Perfetto.Trace.Ftrace.V4l2 (
        V4l2DqbufFtraceEvent(), V4l2QbufFtraceEvent(),
        Vb2V4l2BufDoneFtraceEvent(), Vb2V4l2BufQueueFtraceEvent(),
        Vb2V4l2DqbufFtraceEvent(), Vb2V4l2QbufFtraceEvent()
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
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.V4l2_Fields.bytesused' @:: Lens' V4l2DqbufFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.V4l2_Fields.maybe'bytesused' @:: Lens' V4l2DqbufFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.V4l2_Fields.field' @:: Lens' V4l2DqbufFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.V4l2_Fields.maybe'field' @:: Lens' V4l2DqbufFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.V4l2_Fields.flags' @:: Lens' V4l2DqbufFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.V4l2_Fields.maybe'flags' @:: Lens' V4l2DqbufFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.V4l2_Fields.index' @:: Lens' V4l2DqbufFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.V4l2_Fields.maybe'index' @:: Lens' V4l2DqbufFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.V4l2_Fields.minor' @:: Lens' V4l2DqbufFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.V4l2_Fields.maybe'minor' @:: Lens' V4l2DqbufFtraceEvent (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.V4l2_Fields.sequence' @:: Lens' V4l2DqbufFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.V4l2_Fields.maybe'sequence' @:: Lens' V4l2DqbufFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.V4l2_Fields.timecodeFlags' @:: Lens' V4l2DqbufFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.V4l2_Fields.maybe'timecodeFlags' @:: Lens' V4l2DqbufFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.V4l2_Fields.timecodeFrames' @:: Lens' V4l2DqbufFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.V4l2_Fields.maybe'timecodeFrames' @:: Lens' V4l2DqbufFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.V4l2_Fields.timecodeHours' @:: Lens' V4l2DqbufFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.V4l2_Fields.maybe'timecodeHours' @:: Lens' V4l2DqbufFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.V4l2_Fields.timecodeMinutes' @:: Lens' V4l2DqbufFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.V4l2_Fields.maybe'timecodeMinutes' @:: Lens' V4l2DqbufFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.V4l2_Fields.timecodeSeconds' @:: Lens' V4l2DqbufFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.V4l2_Fields.maybe'timecodeSeconds' @:: Lens' V4l2DqbufFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.V4l2_Fields.timecodeType' @:: Lens' V4l2DqbufFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.V4l2_Fields.maybe'timecodeType' @:: Lens' V4l2DqbufFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.V4l2_Fields.timecodeUserbits0' @:: Lens' V4l2DqbufFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.V4l2_Fields.maybe'timecodeUserbits0' @:: Lens' V4l2DqbufFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.V4l2_Fields.timecodeUserbits1' @:: Lens' V4l2DqbufFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.V4l2_Fields.maybe'timecodeUserbits1' @:: Lens' V4l2DqbufFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.V4l2_Fields.timecodeUserbits2' @:: Lens' V4l2DqbufFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.V4l2_Fields.maybe'timecodeUserbits2' @:: Lens' V4l2DqbufFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.V4l2_Fields.timecodeUserbits3' @:: Lens' V4l2DqbufFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.V4l2_Fields.maybe'timecodeUserbits3' @:: Lens' V4l2DqbufFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.V4l2_Fields.timestamp' @:: Lens' V4l2DqbufFtraceEvent Data.Int.Int64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.V4l2_Fields.maybe'timestamp' @:: Lens' V4l2DqbufFtraceEvent (Prelude.Maybe Data.Int.Int64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.V4l2_Fields.type'' @:: Lens' V4l2DqbufFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.V4l2_Fields.maybe'type'' @:: Lens' V4l2DqbufFtraceEvent (Prelude.Maybe Data.Word.Word32)@ -}
data V4l2DqbufFtraceEvent
  = V4l2DqbufFtraceEvent'_constructor {_V4l2DqbufFtraceEvent'bytesused :: !(Prelude.Maybe Data.Word.Word32),
                                       _V4l2DqbufFtraceEvent'field :: !(Prelude.Maybe Data.Word.Word32),
                                       _V4l2DqbufFtraceEvent'flags :: !(Prelude.Maybe Data.Word.Word32),
                                       _V4l2DqbufFtraceEvent'index :: !(Prelude.Maybe Data.Word.Word32),
                                       _V4l2DqbufFtraceEvent'minor :: !(Prelude.Maybe Data.Int.Int32),
                                       _V4l2DqbufFtraceEvent'sequence :: !(Prelude.Maybe Data.Word.Word32),
                                       _V4l2DqbufFtraceEvent'timecodeFlags :: !(Prelude.Maybe Data.Word.Word32),
                                       _V4l2DqbufFtraceEvent'timecodeFrames :: !(Prelude.Maybe Data.Word.Word32),
                                       _V4l2DqbufFtraceEvent'timecodeHours :: !(Prelude.Maybe Data.Word.Word32),
                                       _V4l2DqbufFtraceEvent'timecodeMinutes :: !(Prelude.Maybe Data.Word.Word32),
                                       _V4l2DqbufFtraceEvent'timecodeSeconds :: !(Prelude.Maybe Data.Word.Word32),
                                       _V4l2DqbufFtraceEvent'timecodeType :: !(Prelude.Maybe Data.Word.Word32),
                                       _V4l2DqbufFtraceEvent'timecodeUserbits0 :: !(Prelude.Maybe Data.Word.Word32),
                                       _V4l2DqbufFtraceEvent'timecodeUserbits1 :: !(Prelude.Maybe Data.Word.Word32),
                                       _V4l2DqbufFtraceEvent'timecodeUserbits2 :: !(Prelude.Maybe Data.Word.Word32),
                                       _V4l2DqbufFtraceEvent'timecodeUserbits3 :: !(Prelude.Maybe Data.Word.Word32),
                                       _V4l2DqbufFtraceEvent'timestamp :: !(Prelude.Maybe Data.Int.Int64),
                                       _V4l2DqbufFtraceEvent'type' :: !(Prelude.Maybe Data.Word.Word32),
                                       _V4l2DqbufFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show V4l2DqbufFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField V4l2DqbufFtraceEvent "bytesused" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _V4l2DqbufFtraceEvent'bytesused
           (\ x__ y__ -> x__ {_V4l2DqbufFtraceEvent'bytesused = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField V4l2DqbufFtraceEvent "maybe'bytesused" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _V4l2DqbufFtraceEvent'bytesused
           (\ x__ y__ -> x__ {_V4l2DqbufFtraceEvent'bytesused = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField V4l2DqbufFtraceEvent "field" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _V4l2DqbufFtraceEvent'field
           (\ x__ y__ -> x__ {_V4l2DqbufFtraceEvent'field = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField V4l2DqbufFtraceEvent "maybe'field" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _V4l2DqbufFtraceEvent'field
           (\ x__ y__ -> x__ {_V4l2DqbufFtraceEvent'field = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField V4l2DqbufFtraceEvent "flags" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _V4l2DqbufFtraceEvent'flags
           (\ x__ y__ -> x__ {_V4l2DqbufFtraceEvent'flags = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField V4l2DqbufFtraceEvent "maybe'flags" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _V4l2DqbufFtraceEvent'flags
           (\ x__ y__ -> x__ {_V4l2DqbufFtraceEvent'flags = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField V4l2DqbufFtraceEvent "index" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _V4l2DqbufFtraceEvent'index
           (\ x__ y__ -> x__ {_V4l2DqbufFtraceEvent'index = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField V4l2DqbufFtraceEvent "maybe'index" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _V4l2DqbufFtraceEvent'index
           (\ x__ y__ -> x__ {_V4l2DqbufFtraceEvent'index = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField V4l2DqbufFtraceEvent "minor" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _V4l2DqbufFtraceEvent'minor
           (\ x__ y__ -> x__ {_V4l2DqbufFtraceEvent'minor = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField V4l2DqbufFtraceEvent "maybe'minor" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _V4l2DqbufFtraceEvent'minor
           (\ x__ y__ -> x__ {_V4l2DqbufFtraceEvent'minor = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField V4l2DqbufFtraceEvent "sequence" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _V4l2DqbufFtraceEvent'sequence
           (\ x__ y__ -> x__ {_V4l2DqbufFtraceEvent'sequence = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField V4l2DqbufFtraceEvent "maybe'sequence" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _V4l2DqbufFtraceEvent'sequence
           (\ x__ y__ -> x__ {_V4l2DqbufFtraceEvent'sequence = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField V4l2DqbufFtraceEvent "timecodeFlags" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _V4l2DqbufFtraceEvent'timecodeFlags
           (\ x__ y__ -> x__ {_V4l2DqbufFtraceEvent'timecodeFlags = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField V4l2DqbufFtraceEvent "maybe'timecodeFlags" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _V4l2DqbufFtraceEvent'timecodeFlags
           (\ x__ y__ -> x__ {_V4l2DqbufFtraceEvent'timecodeFlags = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField V4l2DqbufFtraceEvent "timecodeFrames" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _V4l2DqbufFtraceEvent'timecodeFrames
           (\ x__ y__ -> x__ {_V4l2DqbufFtraceEvent'timecodeFrames = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField V4l2DqbufFtraceEvent "maybe'timecodeFrames" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _V4l2DqbufFtraceEvent'timecodeFrames
           (\ x__ y__ -> x__ {_V4l2DqbufFtraceEvent'timecodeFrames = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField V4l2DqbufFtraceEvent "timecodeHours" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _V4l2DqbufFtraceEvent'timecodeHours
           (\ x__ y__ -> x__ {_V4l2DqbufFtraceEvent'timecodeHours = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField V4l2DqbufFtraceEvent "maybe'timecodeHours" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _V4l2DqbufFtraceEvent'timecodeHours
           (\ x__ y__ -> x__ {_V4l2DqbufFtraceEvent'timecodeHours = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField V4l2DqbufFtraceEvent "timecodeMinutes" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _V4l2DqbufFtraceEvent'timecodeMinutes
           (\ x__ y__ -> x__ {_V4l2DqbufFtraceEvent'timecodeMinutes = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField V4l2DqbufFtraceEvent "maybe'timecodeMinutes" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _V4l2DqbufFtraceEvent'timecodeMinutes
           (\ x__ y__ -> x__ {_V4l2DqbufFtraceEvent'timecodeMinutes = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField V4l2DqbufFtraceEvent "timecodeSeconds" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _V4l2DqbufFtraceEvent'timecodeSeconds
           (\ x__ y__ -> x__ {_V4l2DqbufFtraceEvent'timecodeSeconds = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField V4l2DqbufFtraceEvent "maybe'timecodeSeconds" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _V4l2DqbufFtraceEvent'timecodeSeconds
           (\ x__ y__ -> x__ {_V4l2DqbufFtraceEvent'timecodeSeconds = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField V4l2DqbufFtraceEvent "timecodeType" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _V4l2DqbufFtraceEvent'timecodeType
           (\ x__ y__ -> x__ {_V4l2DqbufFtraceEvent'timecodeType = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField V4l2DqbufFtraceEvent "maybe'timecodeType" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _V4l2DqbufFtraceEvent'timecodeType
           (\ x__ y__ -> x__ {_V4l2DqbufFtraceEvent'timecodeType = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField V4l2DqbufFtraceEvent "timecodeUserbits0" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _V4l2DqbufFtraceEvent'timecodeUserbits0
           (\ x__ y__ -> x__ {_V4l2DqbufFtraceEvent'timecodeUserbits0 = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField V4l2DqbufFtraceEvent "maybe'timecodeUserbits0" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _V4l2DqbufFtraceEvent'timecodeUserbits0
           (\ x__ y__ -> x__ {_V4l2DqbufFtraceEvent'timecodeUserbits0 = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField V4l2DqbufFtraceEvent "timecodeUserbits1" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _V4l2DqbufFtraceEvent'timecodeUserbits1
           (\ x__ y__ -> x__ {_V4l2DqbufFtraceEvent'timecodeUserbits1 = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField V4l2DqbufFtraceEvent "maybe'timecodeUserbits1" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _V4l2DqbufFtraceEvent'timecodeUserbits1
           (\ x__ y__ -> x__ {_V4l2DqbufFtraceEvent'timecodeUserbits1 = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField V4l2DqbufFtraceEvent "timecodeUserbits2" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _V4l2DqbufFtraceEvent'timecodeUserbits2
           (\ x__ y__ -> x__ {_V4l2DqbufFtraceEvent'timecodeUserbits2 = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField V4l2DqbufFtraceEvent "maybe'timecodeUserbits2" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _V4l2DqbufFtraceEvent'timecodeUserbits2
           (\ x__ y__ -> x__ {_V4l2DqbufFtraceEvent'timecodeUserbits2 = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField V4l2DqbufFtraceEvent "timecodeUserbits3" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _V4l2DqbufFtraceEvent'timecodeUserbits3
           (\ x__ y__ -> x__ {_V4l2DqbufFtraceEvent'timecodeUserbits3 = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField V4l2DqbufFtraceEvent "maybe'timecodeUserbits3" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _V4l2DqbufFtraceEvent'timecodeUserbits3
           (\ x__ y__ -> x__ {_V4l2DqbufFtraceEvent'timecodeUserbits3 = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField V4l2DqbufFtraceEvent "timestamp" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _V4l2DqbufFtraceEvent'timestamp
           (\ x__ y__ -> x__ {_V4l2DqbufFtraceEvent'timestamp = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField V4l2DqbufFtraceEvent "maybe'timestamp" (Prelude.Maybe Data.Int.Int64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _V4l2DqbufFtraceEvent'timestamp
           (\ x__ y__ -> x__ {_V4l2DqbufFtraceEvent'timestamp = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField V4l2DqbufFtraceEvent "type'" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _V4l2DqbufFtraceEvent'type'
           (\ x__ y__ -> x__ {_V4l2DqbufFtraceEvent'type' = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField V4l2DqbufFtraceEvent "maybe'type'" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _V4l2DqbufFtraceEvent'type'
           (\ x__ y__ -> x__ {_V4l2DqbufFtraceEvent'type' = y__}))
        Prelude.id
instance Data.ProtoLens.Message V4l2DqbufFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.V4l2DqbufFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\DC4V4l2DqbufFtraceEvent\DC2\FS\n\
      \\tbytesused\CAN\SOH \SOH(\rR\tbytesused\DC2\DC4\n\
      \\ENQfield\CAN\STX \SOH(\rR\ENQfield\DC2\DC4\n\
      \\ENQflags\CAN\ETX \SOH(\rR\ENQflags\DC2\DC4\n\
      \\ENQindex\CAN\EOT \SOH(\rR\ENQindex\DC2\DC4\n\
      \\ENQminor\CAN\ENQ \SOH(\ENQR\ENQminor\DC2\SUB\n\
      \\bsequence\CAN\ACK \SOH(\rR\bsequence\DC2%\n\
      \\SOtimecode_flags\CAN\a \SOH(\rR\rtimecodeFlags\DC2'\n\
      \\SItimecode_frames\CAN\b \SOH(\rR\SOtimecodeFrames\DC2%\n\
      \\SOtimecode_hours\CAN\t \SOH(\rR\rtimecodeHours\DC2)\n\
      \\DLEtimecode_minutes\CAN\n\
      \ \SOH(\rR\SItimecodeMinutes\DC2)\n\
      \\DLEtimecode_seconds\CAN\v \SOH(\rR\SItimecodeSeconds\DC2#\n\
      \\rtimecode_type\CAN\f \SOH(\rR\ftimecodeType\DC2-\n\
      \\DC2timecode_userbits0\CAN\r \SOH(\rR\DC1timecodeUserbits0\DC2-\n\
      \\DC2timecode_userbits1\CAN\SO \SOH(\rR\DC1timecodeUserbits1\DC2-\n\
      \\DC2timecode_userbits2\CAN\SI \SOH(\rR\DC1timecodeUserbits2\DC2-\n\
      \\DC2timecode_userbits3\CAN\DLE \SOH(\rR\DC1timecodeUserbits3\DC2\FS\n\
      \\ttimestamp\CAN\DC1 \SOH(\ETXR\ttimestamp\DC2\DC2\n\
      \\EOTtype\CAN\DC2 \SOH(\rR\EOTtype"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        bytesused__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "bytesused"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'bytesused")) ::
              Data.ProtoLens.FieldDescriptor V4l2DqbufFtraceEvent
        field__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "field"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'field")) ::
              Data.ProtoLens.FieldDescriptor V4l2DqbufFtraceEvent
        flags__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "flags"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'flags")) ::
              Data.ProtoLens.FieldDescriptor V4l2DqbufFtraceEvent
        index__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "index"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'index")) ::
              Data.ProtoLens.FieldDescriptor V4l2DqbufFtraceEvent
        minor__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "minor"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'minor")) ::
              Data.ProtoLens.FieldDescriptor V4l2DqbufFtraceEvent
        sequence__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "sequence"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'sequence")) ::
              Data.ProtoLens.FieldDescriptor V4l2DqbufFtraceEvent
        timecodeFlags__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "timecode_flags"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'timecodeFlags")) ::
              Data.ProtoLens.FieldDescriptor V4l2DqbufFtraceEvent
        timecodeFrames__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "timecode_frames"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'timecodeFrames")) ::
              Data.ProtoLens.FieldDescriptor V4l2DqbufFtraceEvent
        timecodeHours__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "timecode_hours"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'timecodeHours")) ::
              Data.ProtoLens.FieldDescriptor V4l2DqbufFtraceEvent
        timecodeMinutes__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "timecode_minutes"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'timecodeMinutes")) ::
              Data.ProtoLens.FieldDescriptor V4l2DqbufFtraceEvent
        timecodeSeconds__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "timecode_seconds"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'timecodeSeconds")) ::
              Data.ProtoLens.FieldDescriptor V4l2DqbufFtraceEvent
        timecodeType__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "timecode_type"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'timecodeType")) ::
              Data.ProtoLens.FieldDescriptor V4l2DqbufFtraceEvent
        timecodeUserbits0__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "timecode_userbits0"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'timecodeUserbits0")) ::
              Data.ProtoLens.FieldDescriptor V4l2DqbufFtraceEvent
        timecodeUserbits1__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "timecode_userbits1"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'timecodeUserbits1")) ::
              Data.ProtoLens.FieldDescriptor V4l2DqbufFtraceEvent
        timecodeUserbits2__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "timecode_userbits2"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'timecodeUserbits2")) ::
              Data.ProtoLens.FieldDescriptor V4l2DqbufFtraceEvent
        timecodeUserbits3__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "timecode_userbits3"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'timecodeUserbits3")) ::
              Data.ProtoLens.FieldDescriptor V4l2DqbufFtraceEvent
        timestamp__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "timestamp"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'timestamp")) ::
              Data.ProtoLens.FieldDescriptor V4l2DqbufFtraceEvent
        type'__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "type"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'type'")) ::
              Data.ProtoLens.FieldDescriptor V4l2DqbufFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, bytesused__field_descriptor),
           (Data.ProtoLens.Tag 2, field__field_descriptor),
           (Data.ProtoLens.Tag 3, flags__field_descriptor),
           (Data.ProtoLens.Tag 4, index__field_descriptor),
           (Data.ProtoLens.Tag 5, minor__field_descriptor),
           (Data.ProtoLens.Tag 6, sequence__field_descriptor),
           (Data.ProtoLens.Tag 7, timecodeFlags__field_descriptor),
           (Data.ProtoLens.Tag 8, timecodeFrames__field_descriptor),
           (Data.ProtoLens.Tag 9, timecodeHours__field_descriptor),
           (Data.ProtoLens.Tag 10, timecodeMinutes__field_descriptor),
           (Data.ProtoLens.Tag 11, timecodeSeconds__field_descriptor),
           (Data.ProtoLens.Tag 12, timecodeType__field_descriptor),
           (Data.ProtoLens.Tag 13, timecodeUserbits0__field_descriptor),
           (Data.ProtoLens.Tag 14, timecodeUserbits1__field_descriptor),
           (Data.ProtoLens.Tag 15, timecodeUserbits2__field_descriptor),
           (Data.ProtoLens.Tag 16, timecodeUserbits3__field_descriptor),
           (Data.ProtoLens.Tag 17, timestamp__field_descriptor),
           (Data.ProtoLens.Tag 18, type'__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _V4l2DqbufFtraceEvent'_unknownFields
        (\ x__ y__ -> x__ {_V4l2DqbufFtraceEvent'_unknownFields = y__})
  defMessage
    = V4l2DqbufFtraceEvent'_constructor
        {_V4l2DqbufFtraceEvent'bytesused = Prelude.Nothing,
         _V4l2DqbufFtraceEvent'field = Prelude.Nothing,
         _V4l2DqbufFtraceEvent'flags = Prelude.Nothing,
         _V4l2DqbufFtraceEvent'index = Prelude.Nothing,
         _V4l2DqbufFtraceEvent'minor = Prelude.Nothing,
         _V4l2DqbufFtraceEvent'sequence = Prelude.Nothing,
         _V4l2DqbufFtraceEvent'timecodeFlags = Prelude.Nothing,
         _V4l2DqbufFtraceEvent'timecodeFrames = Prelude.Nothing,
         _V4l2DqbufFtraceEvent'timecodeHours = Prelude.Nothing,
         _V4l2DqbufFtraceEvent'timecodeMinutes = Prelude.Nothing,
         _V4l2DqbufFtraceEvent'timecodeSeconds = Prelude.Nothing,
         _V4l2DqbufFtraceEvent'timecodeType = Prelude.Nothing,
         _V4l2DqbufFtraceEvent'timecodeUserbits0 = Prelude.Nothing,
         _V4l2DqbufFtraceEvent'timecodeUserbits1 = Prelude.Nothing,
         _V4l2DqbufFtraceEvent'timecodeUserbits2 = Prelude.Nothing,
         _V4l2DqbufFtraceEvent'timecodeUserbits3 = Prelude.Nothing,
         _V4l2DqbufFtraceEvent'timestamp = Prelude.Nothing,
         _V4l2DqbufFtraceEvent'type' = Prelude.Nothing,
         _V4l2DqbufFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          V4l2DqbufFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser V4l2DqbufFtraceEvent
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
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
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        8 -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "bytesused"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"bytesused") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "field"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"field") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "flags"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"flags") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "index"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"index") y x)
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "minor"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"minor") y x)
                        48
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "sequence"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"sequence") y x)
                        56
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "timecode_flags"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"timecodeFlags") y x)
                        64
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "timecode_frames"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"timecodeFrames") y x)
                        72
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "timecode_hours"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"timecodeHours") y x)
                        80
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "timecode_minutes"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"timecodeMinutes") y x)
                        88
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "timecode_seconds"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"timecodeSeconds") y x)
                        96
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "timecode_type"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"timecodeType") y x)
                        104
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "timecode_userbits0"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"timecodeUserbits0") y x)
                        112
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "timecode_userbits1"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"timecodeUserbits1") y x)
                        120
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "timecode_userbits2"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"timecodeUserbits2") y x)
                        128
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "timecode_userbits3"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"timecodeUserbits3") y x)
                        136
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "timestamp"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"timestamp") y x)
                        144
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "type"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"type'") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "V4l2DqbufFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'bytesused") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       ((Prelude..)
                          Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'field") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          ((Prelude..)
                             Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'flags") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             ((Prelude..)
                                Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'index") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                                ((Prelude..)
                                   Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                      ((Data.Monoid.<>)
                         (case
                              Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'minor") _x
                          of
                            Prelude.Nothing -> Data.Monoid.mempty
                            (Prelude.Just _v)
                              -> (Data.Monoid.<>)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt 40)
                                   ((Prelude..)
                                      Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral
                                      _v))
                         ((Data.Monoid.<>)
                            (case
                                 Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'sequence") _x
                             of
                               Prelude.Nothing -> Data.Monoid.mempty
                               (Prelude.Just _v)
                                 -> (Data.Monoid.<>)
                                      (Data.ProtoLens.Encoding.Bytes.putVarInt 48)
                                      ((Prelude..)
                                         Data.ProtoLens.Encoding.Bytes.putVarInt
                                         Prelude.fromIntegral _v))
                            ((Data.Monoid.<>)
                               (case
                                    Lens.Family2.view
                                      (Data.ProtoLens.Field.field @"maybe'timecodeFlags") _x
                                of
                                  Prelude.Nothing -> Data.Monoid.mempty
                                  (Prelude.Just _v)
                                    -> (Data.Monoid.<>)
                                         (Data.ProtoLens.Encoding.Bytes.putVarInt 56)
                                         ((Prelude..)
                                            Data.ProtoLens.Encoding.Bytes.putVarInt
                                            Prelude.fromIntegral _v))
                               ((Data.Monoid.<>)
                                  (case
                                       Lens.Family2.view
                                         (Data.ProtoLens.Field.field @"maybe'timecodeFrames") _x
                                   of
                                     Prelude.Nothing -> Data.Monoid.mempty
                                     (Prelude.Just _v)
                                       -> (Data.Monoid.<>)
                                            (Data.ProtoLens.Encoding.Bytes.putVarInt 64)
                                            ((Prelude..)
                                               Data.ProtoLens.Encoding.Bytes.putVarInt
                                               Prelude.fromIntegral _v))
                                  ((Data.Monoid.<>)
                                     (case
                                          Lens.Family2.view
                                            (Data.ProtoLens.Field.field @"maybe'timecodeHours") _x
                                      of
                                        Prelude.Nothing -> Data.Monoid.mempty
                                        (Prelude.Just _v)
                                          -> (Data.Monoid.<>)
                                               (Data.ProtoLens.Encoding.Bytes.putVarInt 72)
                                               ((Prelude..)
                                                  Data.ProtoLens.Encoding.Bytes.putVarInt
                                                  Prelude.fromIntegral _v))
                                     ((Data.Monoid.<>)
                                        (case
                                             Lens.Family2.view
                                               (Data.ProtoLens.Field.field @"maybe'timecodeMinutes")
                                               _x
                                         of
                                           Prelude.Nothing -> Data.Monoid.mempty
                                           (Prelude.Just _v)
                                             -> (Data.Monoid.<>)
                                                  (Data.ProtoLens.Encoding.Bytes.putVarInt 80)
                                                  ((Prelude..)
                                                     Data.ProtoLens.Encoding.Bytes.putVarInt
                                                     Prelude.fromIntegral _v))
                                        ((Data.Monoid.<>)
                                           (case
                                                Lens.Family2.view
                                                  (Data.ProtoLens.Field.field
                                                     @"maybe'timecodeSeconds")
                                                  _x
                                            of
                                              Prelude.Nothing -> Data.Monoid.mempty
                                              (Prelude.Just _v)
                                                -> (Data.Monoid.<>)
                                                     (Data.ProtoLens.Encoding.Bytes.putVarInt 88)
                                                     ((Prelude..)
                                                        Data.ProtoLens.Encoding.Bytes.putVarInt
                                                        Prelude.fromIntegral _v))
                                           ((Data.Monoid.<>)
                                              (case
                                                   Lens.Family2.view
                                                     (Data.ProtoLens.Field.field
                                                        @"maybe'timecodeType")
                                                     _x
                                               of
                                                 Prelude.Nothing -> Data.Monoid.mempty
                                                 (Prelude.Just _v)
                                                   -> (Data.Monoid.<>)
                                                        (Data.ProtoLens.Encoding.Bytes.putVarInt 96)
                                                        ((Prelude..)
                                                           Data.ProtoLens.Encoding.Bytes.putVarInt
                                                           Prelude.fromIntegral _v))
                                              ((Data.Monoid.<>)
                                                 (case
                                                      Lens.Family2.view
                                                        (Data.ProtoLens.Field.field
                                                           @"maybe'timecodeUserbits0")
                                                        _x
                                                  of
                                                    Prelude.Nothing -> Data.Monoid.mempty
                                                    (Prelude.Just _v)
                                                      -> (Data.Monoid.<>)
                                                           (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                              104)
                                                           ((Prelude..)
                                                              Data.ProtoLens.Encoding.Bytes.putVarInt
                                                              Prelude.fromIntegral _v))
                                                 ((Data.Monoid.<>)
                                                    (case
                                                         Lens.Family2.view
                                                           (Data.ProtoLens.Field.field
                                                              @"maybe'timecodeUserbits1")
                                                           _x
                                                     of
                                                       Prelude.Nothing -> Data.Monoid.mempty
                                                       (Prelude.Just _v)
                                                         -> (Data.Monoid.<>)
                                                              (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                 112)
                                                              ((Prelude..)
                                                                 Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                 Prelude.fromIntegral _v))
                                                    ((Data.Monoid.<>)
                                                       (case
                                                            Lens.Family2.view
                                                              (Data.ProtoLens.Field.field
                                                                 @"maybe'timecodeUserbits2")
                                                              _x
                                                        of
                                                          Prelude.Nothing -> Data.Monoid.mempty
                                                          (Prelude.Just _v)
                                                            -> (Data.Monoid.<>)
                                                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                    120)
                                                                 ((Prelude..)
                                                                    Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                    Prelude.fromIntegral _v))
                                                       ((Data.Monoid.<>)
                                                          (case
                                                               Lens.Family2.view
                                                                 (Data.ProtoLens.Field.field
                                                                    @"maybe'timecodeUserbits3")
                                                                 _x
                                                           of
                                                             Prelude.Nothing -> Data.Monoid.mempty
                                                             (Prelude.Just _v)
                                                               -> (Data.Monoid.<>)
                                                                    (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                       128)
                                                                    ((Prelude..)
                                                                       Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                       Prelude.fromIntegral _v))
                                                          ((Data.Monoid.<>)
                                                             (case
                                                                  Lens.Family2.view
                                                                    (Data.ProtoLens.Field.field
                                                                       @"maybe'timestamp")
                                                                    _x
                                                              of
                                                                Prelude.Nothing
                                                                  -> Data.Monoid.mempty
                                                                (Prelude.Just _v)
                                                                  -> (Data.Monoid.<>)
                                                                       (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                          136)
                                                                       ((Prelude..)
                                                                          Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                          Prelude.fromIntegral _v))
                                                             ((Data.Monoid.<>)
                                                                (case
                                                                     Lens.Family2.view
                                                                       (Data.ProtoLens.Field.field
                                                                          @"maybe'type'")
                                                                       _x
                                                                 of
                                                                   Prelude.Nothing
                                                                     -> Data.Monoid.mempty
                                                                   (Prelude.Just _v)
                                                                     -> (Data.Monoid.<>)
                                                                          (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                             144)
                                                                          ((Prelude..)
                                                                             Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                             Prelude.fromIntegral
                                                                             _v))
                                                                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                                                   (Lens.Family2.view
                                                                      Data.ProtoLens.unknownFields
                                                                      _x)))))))))))))))))))
instance Control.DeepSeq.NFData V4l2DqbufFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_V4l2DqbufFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_V4l2DqbufFtraceEvent'bytesused x__)
                (Control.DeepSeq.deepseq
                   (_V4l2DqbufFtraceEvent'field x__)
                   (Control.DeepSeq.deepseq
                      (_V4l2DqbufFtraceEvent'flags x__)
                      (Control.DeepSeq.deepseq
                         (_V4l2DqbufFtraceEvent'index x__)
                         (Control.DeepSeq.deepseq
                            (_V4l2DqbufFtraceEvent'minor x__)
                            (Control.DeepSeq.deepseq
                               (_V4l2DqbufFtraceEvent'sequence x__)
                               (Control.DeepSeq.deepseq
                                  (_V4l2DqbufFtraceEvent'timecodeFlags x__)
                                  (Control.DeepSeq.deepseq
                                     (_V4l2DqbufFtraceEvent'timecodeFrames x__)
                                     (Control.DeepSeq.deepseq
                                        (_V4l2DqbufFtraceEvent'timecodeHours x__)
                                        (Control.DeepSeq.deepseq
                                           (_V4l2DqbufFtraceEvent'timecodeMinutes x__)
                                           (Control.DeepSeq.deepseq
                                              (_V4l2DqbufFtraceEvent'timecodeSeconds x__)
                                              (Control.DeepSeq.deepseq
                                                 (_V4l2DqbufFtraceEvent'timecodeType x__)
                                                 (Control.DeepSeq.deepseq
                                                    (_V4l2DqbufFtraceEvent'timecodeUserbits0 x__)
                                                    (Control.DeepSeq.deepseq
                                                       (_V4l2DqbufFtraceEvent'timecodeUserbits1 x__)
                                                       (Control.DeepSeq.deepseq
                                                          (_V4l2DqbufFtraceEvent'timecodeUserbits2
                                                             x__)
                                                          (Control.DeepSeq.deepseq
                                                             (_V4l2DqbufFtraceEvent'timecodeUserbits3
                                                                x__)
                                                             (Control.DeepSeq.deepseq
                                                                (_V4l2DqbufFtraceEvent'timestamp
                                                                   x__)
                                                                (Control.DeepSeq.deepseq
                                                                   (_V4l2DqbufFtraceEvent'type' x__)
                                                                   ()))))))))))))))))))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.V4l2_Fields.bytesused' @:: Lens' V4l2QbufFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.V4l2_Fields.maybe'bytesused' @:: Lens' V4l2QbufFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.V4l2_Fields.field' @:: Lens' V4l2QbufFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.V4l2_Fields.maybe'field' @:: Lens' V4l2QbufFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.V4l2_Fields.flags' @:: Lens' V4l2QbufFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.V4l2_Fields.maybe'flags' @:: Lens' V4l2QbufFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.V4l2_Fields.index' @:: Lens' V4l2QbufFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.V4l2_Fields.maybe'index' @:: Lens' V4l2QbufFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.V4l2_Fields.minor' @:: Lens' V4l2QbufFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.V4l2_Fields.maybe'minor' @:: Lens' V4l2QbufFtraceEvent (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.V4l2_Fields.sequence' @:: Lens' V4l2QbufFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.V4l2_Fields.maybe'sequence' @:: Lens' V4l2QbufFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.V4l2_Fields.timecodeFlags' @:: Lens' V4l2QbufFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.V4l2_Fields.maybe'timecodeFlags' @:: Lens' V4l2QbufFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.V4l2_Fields.timecodeFrames' @:: Lens' V4l2QbufFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.V4l2_Fields.maybe'timecodeFrames' @:: Lens' V4l2QbufFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.V4l2_Fields.timecodeHours' @:: Lens' V4l2QbufFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.V4l2_Fields.maybe'timecodeHours' @:: Lens' V4l2QbufFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.V4l2_Fields.timecodeMinutes' @:: Lens' V4l2QbufFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.V4l2_Fields.maybe'timecodeMinutes' @:: Lens' V4l2QbufFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.V4l2_Fields.timecodeSeconds' @:: Lens' V4l2QbufFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.V4l2_Fields.maybe'timecodeSeconds' @:: Lens' V4l2QbufFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.V4l2_Fields.timecodeType' @:: Lens' V4l2QbufFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.V4l2_Fields.maybe'timecodeType' @:: Lens' V4l2QbufFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.V4l2_Fields.timecodeUserbits0' @:: Lens' V4l2QbufFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.V4l2_Fields.maybe'timecodeUserbits0' @:: Lens' V4l2QbufFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.V4l2_Fields.timecodeUserbits1' @:: Lens' V4l2QbufFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.V4l2_Fields.maybe'timecodeUserbits1' @:: Lens' V4l2QbufFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.V4l2_Fields.timecodeUserbits2' @:: Lens' V4l2QbufFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.V4l2_Fields.maybe'timecodeUserbits2' @:: Lens' V4l2QbufFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.V4l2_Fields.timecodeUserbits3' @:: Lens' V4l2QbufFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.V4l2_Fields.maybe'timecodeUserbits3' @:: Lens' V4l2QbufFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.V4l2_Fields.timestamp' @:: Lens' V4l2QbufFtraceEvent Data.Int.Int64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.V4l2_Fields.maybe'timestamp' @:: Lens' V4l2QbufFtraceEvent (Prelude.Maybe Data.Int.Int64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.V4l2_Fields.type'' @:: Lens' V4l2QbufFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.V4l2_Fields.maybe'type'' @:: Lens' V4l2QbufFtraceEvent (Prelude.Maybe Data.Word.Word32)@ -}
data V4l2QbufFtraceEvent
  = V4l2QbufFtraceEvent'_constructor {_V4l2QbufFtraceEvent'bytesused :: !(Prelude.Maybe Data.Word.Word32),
                                      _V4l2QbufFtraceEvent'field :: !(Prelude.Maybe Data.Word.Word32),
                                      _V4l2QbufFtraceEvent'flags :: !(Prelude.Maybe Data.Word.Word32),
                                      _V4l2QbufFtraceEvent'index :: !(Prelude.Maybe Data.Word.Word32),
                                      _V4l2QbufFtraceEvent'minor :: !(Prelude.Maybe Data.Int.Int32),
                                      _V4l2QbufFtraceEvent'sequence :: !(Prelude.Maybe Data.Word.Word32),
                                      _V4l2QbufFtraceEvent'timecodeFlags :: !(Prelude.Maybe Data.Word.Word32),
                                      _V4l2QbufFtraceEvent'timecodeFrames :: !(Prelude.Maybe Data.Word.Word32),
                                      _V4l2QbufFtraceEvent'timecodeHours :: !(Prelude.Maybe Data.Word.Word32),
                                      _V4l2QbufFtraceEvent'timecodeMinutes :: !(Prelude.Maybe Data.Word.Word32),
                                      _V4l2QbufFtraceEvent'timecodeSeconds :: !(Prelude.Maybe Data.Word.Word32),
                                      _V4l2QbufFtraceEvent'timecodeType :: !(Prelude.Maybe Data.Word.Word32),
                                      _V4l2QbufFtraceEvent'timecodeUserbits0 :: !(Prelude.Maybe Data.Word.Word32),
                                      _V4l2QbufFtraceEvent'timecodeUserbits1 :: !(Prelude.Maybe Data.Word.Word32),
                                      _V4l2QbufFtraceEvent'timecodeUserbits2 :: !(Prelude.Maybe Data.Word.Word32),
                                      _V4l2QbufFtraceEvent'timecodeUserbits3 :: !(Prelude.Maybe Data.Word.Word32),
                                      _V4l2QbufFtraceEvent'timestamp :: !(Prelude.Maybe Data.Int.Int64),
                                      _V4l2QbufFtraceEvent'type' :: !(Prelude.Maybe Data.Word.Word32),
                                      _V4l2QbufFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show V4l2QbufFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField V4l2QbufFtraceEvent "bytesused" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _V4l2QbufFtraceEvent'bytesused
           (\ x__ y__ -> x__ {_V4l2QbufFtraceEvent'bytesused = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField V4l2QbufFtraceEvent "maybe'bytesused" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _V4l2QbufFtraceEvent'bytesused
           (\ x__ y__ -> x__ {_V4l2QbufFtraceEvent'bytesused = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField V4l2QbufFtraceEvent "field" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _V4l2QbufFtraceEvent'field
           (\ x__ y__ -> x__ {_V4l2QbufFtraceEvent'field = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField V4l2QbufFtraceEvent "maybe'field" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _V4l2QbufFtraceEvent'field
           (\ x__ y__ -> x__ {_V4l2QbufFtraceEvent'field = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField V4l2QbufFtraceEvent "flags" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _V4l2QbufFtraceEvent'flags
           (\ x__ y__ -> x__ {_V4l2QbufFtraceEvent'flags = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField V4l2QbufFtraceEvent "maybe'flags" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _V4l2QbufFtraceEvent'flags
           (\ x__ y__ -> x__ {_V4l2QbufFtraceEvent'flags = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField V4l2QbufFtraceEvent "index" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _V4l2QbufFtraceEvent'index
           (\ x__ y__ -> x__ {_V4l2QbufFtraceEvent'index = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField V4l2QbufFtraceEvent "maybe'index" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _V4l2QbufFtraceEvent'index
           (\ x__ y__ -> x__ {_V4l2QbufFtraceEvent'index = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField V4l2QbufFtraceEvent "minor" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _V4l2QbufFtraceEvent'minor
           (\ x__ y__ -> x__ {_V4l2QbufFtraceEvent'minor = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField V4l2QbufFtraceEvent "maybe'minor" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _V4l2QbufFtraceEvent'minor
           (\ x__ y__ -> x__ {_V4l2QbufFtraceEvent'minor = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField V4l2QbufFtraceEvent "sequence" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _V4l2QbufFtraceEvent'sequence
           (\ x__ y__ -> x__ {_V4l2QbufFtraceEvent'sequence = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField V4l2QbufFtraceEvent "maybe'sequence" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _V4l2QbufFtraceEvent'sequence
           (\ x__ y__ -> x__ {_V4l2QbufFtraceEvent'sequence = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField V4l2QbufFtraceEvent "timecodeFlags" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _V4l2QbufFtraceEvent'timecodeFlags
           (\ x__ y__ -> x__ {_V4l2QbufFtraceEvent'timecodeFlags = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField V4l2QbufFtraceEvent "maybe'timecodeFlags" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _V4l2QbufFtraceEvent'timecodeFlags
           (\ x__ y__ -> x__ {_V4l2QbufFtraceEvent'timecodeFlags = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField V4l2QbufFtraceEvent "timecodeFrames" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _V4l2QbufFtraceEvent'timecodeFrames
           (\ x__ y__ -> x__ {_V4l2QbufFtraceEvent'timecodeFrames = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField V4l2QbufFtraceEvent "maybe'timecodeFrames" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _V4l2QbufFtraceEvent'timecodeFrames
           (\ x__ y__ -> x__ {_V4l2QbufFtraceEvent'timecodeFrames = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField V4l2QbufFtraceEvent "timecodeHours" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _V4l2QbufFtraceEvent'timecodeHours
           (\ x__ y__ -> x__ {_V4l2QbufFtraceEvent'timecodeHours = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField V4l2QbufFtraceEvent "maybe'timecodeHours" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _V4l2QbufFtraceEvent'timecodeHours
           (\ x__ y__ -> x__ {_V4l2QbufFtraceEvent'timecodeHours = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField V4l2QbufFtraceEvent "timecodeMinutes" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _V4l2QbufFtraceEvent'timecodeMinutes
           (\ x__ y__ -> x__ {_V4l2QbufFtraceEvent'timecodeMinutes = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField V4l2QbufFtraceEvent "maybe'timecodeMinutes" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _V4l2QbufFtraceEvent'timecodeMinutes
           (\ x__ y__ -> x__ {_V4l2QbufFtraceEvent'timecodeMinutes = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField V4l2QbufFtraceEvent "timecodeSeconds" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _V4l2QbufFtraceEvent'timecodeSeconds
           (\ x__ y__ -> x__ {_V4l2QbufFtraceEvent'timecodeSeconds = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField V4l2QbufFtraceEvent "maybe'timecodeSeconds" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _V4l2QbufFtraceEvent'timecodeSeconds
           (\ x__ y__ -> x__ {_V4l2QbufFtraceEvent'timecodeSeconds = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField V4l2QbufFtraceEvent "timecodeType" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _V4l2QbufFtraceEvent'timecodeType
           (\ x__ y__ -> x__ {_V4l2QbufFtraceEvent'timecodeType = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField V4l2QbufFtraceEvent "maybe'timecodeType" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _V4l2QbufFtraceEvent'timecodeType
           (\ x__ y__ -> x__ {_V4l2QbufFtraceEvent'timecodeType = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField V4l2QbufFtraceEvent "timecodeUserbits0" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _V4l2QbufFtraceEvent'timecodeUserbits0
           (\ x__ y__ -> x__ {_V4l2QbufFtraceEvent'timecodeUserbits0 = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField V4l2QbufFtraceEvent "maybe'timecodeUserbits0" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _V4l2QbufFtraceEvent'timecodeUserbits0
           (\ x__ y__ -> x__ {_V4l2QbufFtraceEvent'timecodeUserbits0 = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField V4l2QbufFtraceEvent "timecodeUserbits1" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _V4l2QbufFtraceEvent'timecodeUserbits1
           (\ x__ y__ -> x__ {_V4l2QbufFtraceEvent'timecodeUserbits1 = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField V4l2QbufFtraceEvent "maybe'timecodeUserbits1" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _V4l2QbufFtraceEvent'timecodeUserbits1
           (\ x__ y__ -> x__ {_V4l2QbufFtraceEvent'timecodeUserbits1 = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField V4l2QbufFtraceEvent "timecodeUserbits2" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _V4l2QbufFtraceEvent'timecodeUserbits2
           (\ x__ y__ -> x__ {_V4l2QbufFtraceEvent'timecodeUserbits2 = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField V4l2QbufFtraceEvent "maybe'timecodeUserbits2" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _V4l2QbufFtraceEvent'timecodeUserbits2
           (\ x__ y__ -> x__ {_V4l2QbufFtraceEvent'timecodeUserbits2 = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField V4l2QbufFtraceEvent "timecodeUserbits3" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _V4l2QbufFtraceEvent'timecodeUserbits3
           (\ x__ y__ -> x__ {_V4l2QbufFtraceEvent'timecodeUserbits3 = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField V4l2QbufFtraceEvent "maybe'timecodeUserbits3" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _V4l2QbufFtraceEvent'timecodeUserbits3
           (\ x__ y__ -> x__ {_V4l2QbufFtraceEvent'timecodeUserbits3 = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField V4l2QbufFtraceEvent "timestamp" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _V4l2QbufFtraceEvent'timestamp
           (\ x__ y__ -> x__ {_V4l2QbufFtraceEvent'timestamp = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField V4l2QbufFtraceEvent "maybe'timestamp" (Prelude.Maybe Data.Int.Int64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _V4l2QbufFtraceEvent'timestamp
           (\ x__ y__ -> x__ {_V4l2QbufFtraceEvent'timestamp = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField V4l2QbufFtraceEvent "type'" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _V4l2QbufFtraceEvent'type'
           (\ x__ y__ -> x__ {_V4l2QbufFtraceEvent'type' = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField V4l2QbufFtraceEvent "maybe'type'" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _V4l2QbufFtraceEvent'type'
           (\ x__ y__ -> x__ {_V4l2QbufFtraceEvent'type' = y__}))
        Prelude.id
instance Data.ProtoLens.Message V4l2QbufFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.V4l2QbufFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\DC3V4l2QbufFtraceEvent\DC2\FS\n\
      \\tbytesused\CAN\SOH \SOH(\rR\tbytesused\DC2\DC4\n\
      \\ENQfield\CAN\STX \SOH(\rR\ENQfield\DC2\DC4\n\
      \\ENQflags\CAN\ETX \SOH(\rR\ENQflags\DC2\DC4\n\
      \\ENQindex\CAN\EOT \SOH(\rR\ENQindex\DC2\DC4\n\
      \\ENQminor\CAN\ENQ \SOH(\ENQR\ENQminor\DC2\SUB\n\
      \\bsequence\CAN\ACK \SOH(\rR\bsequence\DC2%\n\
      \\SOtimecode_flags\CAN\a \SOH(\rR\rtimecodeFlags\DC2'\n\
      \\SItimecode_frames\CAN\b \SOH(\rR\SOtimecodeFrames\DC2%\n\
      \\SOtimecode_hours\CAN\t \SOH(\rR\rtimecodeHours\DC2)\n\
      \\DLEtimecode_minutes\CAN\n\
      \ \SOH(\rR\SItimecodeMinutes\DC2)\n\
      \\DLEtimecode_seconds\CAN\v \SOH(\rR\SItimecodeSeconds\DC2#\n\
      \\rtimecode_type\CAN\f \SOH(\rR\ftimecodeType\DC2-\n\
      \\DC2timecode_userbits0\CAN\r \SOH(\rR\DC1timecodeUserbits0\DC2-\n\
      \\DC2timecode_userbits1\CAN\SO \SOH(\rR\DC1timecodeUserbits1\DC2-\n\
      \\DC2timecode_userbits2\CAN\SI \SOH(\rR\DC1timecodeUserbits2\DC2-\n\
      \\DC2timecode_userbits3\CAN\DLE \SOH(\rR\DC1timecodeUserbits3\DC2\FS\n\
      \\ttimestamp\CAN\DC1 \SOH(\ETXR\ttimestamp\DC2\DC2\n\
      \\EOTtype\CAN\DC2 \SOH(\rR\EOTtype"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        bytesused__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "bytesused"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'bytesused")) ::
              Data.ProtoLens.FieldDescriptor V4l2QbufFtraceEvent
        field__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "field"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'field")) ::
              Data.ProtoLens.FieldDescriptor V4l2QbufFtraceEvent
        flags__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "flags"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'flags")) ::
              Data.ProtoLens.FieldDescriptor V4l2QbufFtraceEvent
        index__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "index"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'index")) ::
              Data.ProtoLens.FieldDescriptor V4l2QbufFtraceEvent
        minor__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "minor"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'minor")) ::
              Data.ProtoLens.FieldDescriptor V4l2QbufFtraceEvent
        sequence__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "sequence"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'sequence")) ::
              Data.ProtoLens.FieldDescriptor V4l2QbufFtraceEvent
        timecodeFlags__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "timecode_flags"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'timecodeFlags")) ::
              Data.ProtoLens.FieldDescriptor V4l2QbufFtraceEvent
        timecodeFrames__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "timecode_frames"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'timecodeFrames")) ::
              Data.ProtoLens.FieldDescriptor V4l2QbufFtraceEvent
        timecodeHours__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "timecode_hours"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'timecodeHours")) ::
              Data.ProtoLens.FieldDescriptor V4l2QbufFtraceEvent
        timecodeMinutes__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "timecode_minutes"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'timecodeMinutes")) ::
              Data.ProtoLens.FieldDescriptor V4l2QbufFtraceEvent
        timecodeSeconds__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "timecode_seconds"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'timecodeSeconds")) ::
              Data.ProtoLens.FieldDescriptor V4l2QbufFtraceEvent
        timecodeType__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "timecode_type"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'timecodeType")) ::
              Data.ProtoLens.FieldDescriptor V4l2QbufFtraceEvent
        timecodeUserbits0__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "timecode_userbits0"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'timecodeUserbits0")) ::
              Data.ProtoLens.FieldDescriptor V4l2QbufFtraceEvent
        timecodeUserbits1__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "timecode_userbits1"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'timecodeUserbits1")) ::
              Data.ProtoLens.FieldDescriptor V4l2QbufFtraceEvent
        timecodeUserbits2__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "timecode_userbits2"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'timecodeUserbits2")) ::
              Data.ProtoLens.FieldDescriptor V4l2QbufFtraceEvent
        timecodeUserbits3__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "timecode_userbits3"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'timecodeUserbits3")) ::
              Data.ProtoLens.FieldDescriptor V4l2QbufFtraceEvent
        timestamp__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "timestamp"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'timestamp")) ::
              Data.ProtoLens.FieldDescriptor V4l2QbufFtraceEvent
        type'__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "type"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'type'")) ::
              Data.ProtoLens.FieldDescriptor V4l2QbufFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, bytesused__field_descriptor),
           (Data.ProtoLens.Tag 2, field__field_descriptor),
           (Data.ProtoLens.Tag 3, flags__field_descriptor),
           (Data.ProtoLens.Tag 4, index__field_descriptor),
           (Data.ProtoLens.Tag 5, minor__field_descriptor),
           (Data.ProtoLens.Tag 6, sequence__field_descriptor),
           (Data.ProtoLens.Tag 7, timecodeFlags__field_descriptor),
           (Data.ProtoLens.Tag 8, timecodeFrames__field_descriptor),
           (Data.ProtoLens.Tag 9, timecodeHours__field_descriptor),
           (Data.ProtoLens.Tag 10, timecodeMinutes__field_descriptor),
           (Data.ProtoLens.Tag 11, timecodeSeconds__field_descriptor),
           (Data.ProtoLens.Tag 12, timecodeType__field_descriptor),
           (Data.ProtoLens.Tag 13, timecodeUserbits0__field_descriptor),
           (Data.ProtoLens.Tag 14, timecodeUserbits1__field_descriptor),
           (Data.ProtoLens.Tag 15, timecodeUserbits2__field_descriptor),
           (Data.ProtoLens.Tag 16, timecodeUserbits3__field_descriptor),
           (Data.ProtoLens.Tag 17, timestamp__field_descriptor),
           (Data.ProtoLens.Tag 18, type'__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _V4l2QbufFtraceEvent'_unknownFields
        (\ x__ y__ -> x__ {_V4l2QbufFtraceEvent'_unknownFields = y__})
  defMessage
    = V4l2QbufFtraceEvent'_constructor
        {_V4l2QbufFtraceEvent'bytesused = Prelude.Nothing,
         _V4l2QbufFtraceEvent'field = Prelude.Nothing,
         _V4l2QbufFtraceEvent'flags = Prelude.Nothing,
         _V4l2QbufFtraceEvent'index = Prelude.Nothing,
         _V4l2QbufFtraceEvent'minor = Prelude.Nothing,
         _V4l2QbufFtraceEvent'sequence = Prelude.Nothing,
         _V4l2QbufFtraceEvent'timecodeFlags = Prelude.Nothing,
         _V4l2QbufFtraceEvent'timecodeFrames = Prelude.Nothing,
         _V4l2QbufFtraceEvent'timecodeHours = Prelude.Nothing,
         _V4l2QbufFtraceEvent'timecodeMinutes = Prelude.Nothing,
         _V4l2QbufFtraceEvent'timecodeSeconds = Prelude.Nothing,
         _V4l2QbufFtraceEvent'timecodeType = Prelude.Nothing,
         _V4l2QbufFtraceEvent'timecodeUserbits0 = Prelude.Nothing,
         _V4l2QbufFtraceEvent'timecodeUserbits1 = Prelude.Nothing,
         _V4l2QbufFtraceEvent'timecodeUserbits2 = Prelude.Nothing,
         _V4l2QbufFtraceEvent'timecodeUserbits3 = Prelude.Nothing,
         _V4l2QbufFtraceEvent'timestamp = Prelude.Nothing,
         _V4l2QbufFtraceEvent'type' = Prelude.Nothing,
         _V4l2QbufFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          V4l2QbufFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser V4l2QbufFtraceEvent
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
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
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        8 -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "bytesused"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"bytesused") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "field"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"field") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "flags"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"flags") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "index"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"index") y x)
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "minor"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"minor") y x)
                        48
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "sequence"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"sequence") y x)
                        56
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "timecode_flags"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"timecodeFlags") y x)
                        64
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "timecode_frames"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"timecodeFrames") y x)
                        72
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "timecode_hours"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"timecodeHours") y x)
                        80
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "timecode_minutes"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"timecodeMinutes") y x)
                        88
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "timecode_seconds"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"timecodeSeconds") y x)
                        96
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "timecode_type"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"timecodeType") y x)
                        104
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "timecode_userbits0"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"timecodeUserbits0") y x)
                        112
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "timecode_userbits1"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"timecodeUserbits1") y x)
                        120
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "timecode_userbits2"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"timecodeUserbits2") y x)
                        128
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "timecode_userbits3"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"timecodeUserbits3") y x)
                        136
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "timestamp"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"timestamp") y x)
                        144
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "type"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"type'") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "V4l2QbufFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'bytesused") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       ((Prelude..)
                          Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'field") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          ((Prelude..)
                             Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'flags") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             ((Prelude..)
                                Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'index") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                                ((Prelude..)
                                   Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                      ((Data.Monoid.<>)
                         (case
                              Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'minor") _x
                          of
                            Prelude.Nothing -> Data.Monoid.mempty
                            (Prelude.Just _v)
                              -> (Data.Monoid.<>)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt 40)
                                   ((Prelude..)
                                      Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral
                                      _v))
                         ((Data.Monoid.<>)
                            (case
                                 Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'sequence") _x
                             of
                               Prelude.Nothing -> Data.Monoid.mempty
                               (Prelude.Just _v)
                                 -> (Data.Monoid.<>)
                                      (Data.ProtoLens.Encoding.Bytes.putVarInt 48)
                                      ((Prelude..)
                                         Data.ProtoLens.Encoding.Bytes.putVarInt
                                         Prelude.fromIntegral _v))
                            ((Data.Monoid.<>)
                               (case
                                    Lens.Family2.view
                                      (Data.ProtoLens.Field.field @"maybe'timecodeFlags") _x
                                of
                                  Prelude.Nothing -> Data.Monoid.mempty
                                  (Prelude.Just _v)
                                    -> (Data.Monoid.<>)
                                         (Data.ProtoLens.Encoding.Bytes.putVarInt 56)
                                         ((Prelude..)
                                            Data.ProtoLens.Encoding.Bytes.putVarInt
                                            Prelude.fromIntegral _v))
                               ((Data.Monoid.<>)
                                  (case
                                       Lens.Family2.view
                                         (Data.ProtoLens.Field.field @"maybe'timecodeFrames") _x
                                   of
                                     Prelude.Nothing -> Data.Monoid.mempty
                                     (Prelude.Just _v)
                                       -> (Data.Monoid.<>)
                                            (Data.ProtoLens.Encoding.Bytes.putVarInt 64)
                                            ((Prelude..)
                                               Data.ProtoLens.Encoding.Bytes.putVarInt
                                               Prelude.fromIntegral _v))
                                  ((Data.Monoid.<>)
                                     (case
                                          Lens.Family2.view
                                            (Data.ProtoLens.Field.field @"maybe'timecodeHours") _x
                                      of
                                        Prelude.Nothing -> Data.Monoid.mempty
                                        (Prelude.Just _v)
                                          -> (Data.Monoid.<>)
                                               (Data.ProtoLens.Encoding.Bytes.putVarInt 72)
                                               ((Prelude..)
                                                  Data.ProtoLens.Encoding.Bytes.putVarInt
                                                  Prelude.fromIntegral _v))
                                     ((Data.Monoid.<>)
                                        (case
                                             Lens.Family2.view
                                               (Data.ProtoLens.Field.field @"maybe'timecodeMinutes")
                                               _x
                                         of
                                           Prelude.Nothing -> Data.Monoid.mempty
                                           (Prelude.Just _v)
                                             -> (Data.Monoid.<>)
                                                  (Data.ProtoLens.Encoding.Bytes.putVarInt 80)
                                                  ((Prelude..)
                                                     Data.ProtoLens.Encoding.Bytes.putVarInt
                                                     Prelude.fromIntegral _v))
                                        ((Data.Monoid.<>)
                                           (case
                                                Lens.Family2.view
                                                  (Data.ProtoLens.Field.field
                                                     @"maybe'timecodeSeconds")
                                                  _x
                                            of
                                              Prelude.Nothing -> Data.Monoid.mempty
                                              (Prelude.Just _v)
                                                -> (Data.Monoid.<>)
                                                     (Data.ProtoLens.Encoding.Bytes.putVarInt 88)
                                                     ((Prelude..)
                                                        Data.ProtoLens.Encoding.Bytes.putVarInt
                                                        Prelude.fromIntegral _v))
                                           ((Data.Monoid.<>)
                                              (case
                                                   Lens.Family2.view
                                                     (Data.ProtoLens.Field.field
                                                        @"maybe'timecodeType")
                                                     _x
                                               of
                                                 Prelude.Nothing -> Data.Monoid.mempty
                                                 (Prelude.Just _v)
                                                   -> (Data.Monoid.<>)
                                                        (Data.ProtoLens.Encoding.Bytes.putVarInt 96)
                                                        ((Prelude..)
                                                           Data.ProtoLens.Encoding.Bytes.putVarInt
                                                           Prelude.fromIntegral _v))
                                              ((Data.Monoid.<>)
                                                 (case
                                                      Lens.Family2.view
                                                        (Data.ProtoLens.Field.field
                                                           @"maybe'timecodeUserbits0")
                                                        _x
                                                  of
                                                    Prelude.Nothing -> Data.Monoid.mempty
                                                    (Prelude.Just _v)
                                                      -> (Data.Monoid.<>)
                                                           (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                              104)
                                                           ((Prelude..)
                                                              Data.ProtoLens.Encoding.Bytes.putVarInt
                                                              Prelude.fromIntegral _v))
                                                 ((Data.Monoid.<>)
                                                    (case
                                                         Lens.Family2.view
                                                           (Data.ProtoLens.Field.field
                                                              @"maybe'timecodeUserbits1")
                                                           _x
                                                     of
                                                       Prelude.Nothing -> Data.Monoid.mempty
                                                       (Prelude.Just _v)
                                                         -> (Data.Monoid.<>)
                                                              (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                 112)
                                                              ((Prelude..)
                                                                 Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                 Prelude.fromIntegral _v))
                                                    ((Data.Monoid.<>)
                                                       (case
                                                            Lens.Family2.view
                                                              (Data.ProtoLens.Field.field
                                                                 @"maybe'timecodeUserbits2")
                                                              _x
                                                        of
                                                          Prelude.Nothing -> Data.Monoid.mempty
                                                          (Prelude.Just _v)
                                                            -> (Data.Monoid.<>)
                                                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                    120)
                                                                 ((Prelude..)
                                                                    Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                    Prelude.fromIntegral _v))
                                                       ((Data.Monoid.<>)
                                                          (case
                                                               Lens.Family2.view
                                                                 (Data.ProtoLens.Field.field
                                                                    @"maybe'timecodeUserbits3")
                                                                 _x
                                                           of
                                                             Prelude.Nothing -> Data.Monoid.mempty
                                                             (Prelude.Just _v)
                                                               -> (Data.Monoid.<>)
                                                                    (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                       128)
                                                                    ((Prelude..)
                                                                       Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                       Prelude.fromIntegral _v))
                                                          ((Data.Monoid.<>)
                                                             (case
                                                                  Lens.Family2.view
                                                                    (Data.ProtoLens.Field.field
                                                                       @"maybe'timestamp")
                                                                    _x
                                                              of
                                                                Prelude.Nothing
                                                                  -> Data.Monoid.mempty
                                                                (Prelude.Just _v)
                                                                  -> (Data.Monoid.<>)
                                                                       (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                          136)
                                                                       ((Prelude..)
                                                                          Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                          Prelude.fromIntegral _v))
                                                             ((Data.Monoid.<>)
                                                                (case
                                                                     Lens.Family2.view
                                                                       (Data.ProtoLens.Field.field
                                                                          @"maybe'type'")
                                                                       _x
                                                                 of
                                                                   Prelude.Nothing
                                                                     -> Data.Monoid.mempty
                                                                   (Prelude.Just _v)
                                                                     -> (Data.Monoid.<>)
                                                                          (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                             144)
                                                                          ((Prelude..)
                                                                             Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                             Prelude.fromIntegral
                                                                             _v))
                                                                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                                                   (Lens.Family2.view
                                                                      Data.ProtoLens.unknownFields
                                                                      _x)))))))))))))))))))
instance Control.DeepSeq.NFData V4l2QbufFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_V4l2QbufFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_V4l2QbufFtraceEvent'bytesused x__)
                (Control.DeepSeq.deepseq
                   (_V4l2QbufFtraceEvent'field x__)
                   (Control.DeepSeq.deepseq
                      (_V4l2QbufFtraceEvent'flags x__)
                      (Control.DeepSeq.deepseq
                         (_V4l2QbufFtraceEvent'index x__)
                         (Control.DeepSeq.deepseq
                            (_V4l2QbufFtraceEvent'minor x__)
                            (Control.DeepSeq.deepseq
                               (_V4l2QbufFtraceEvent'sequence x__)
                               (Control.DeepSeq.deepseq
                                  (_V4l2QbufFtraceEvent'timecodeFlags x__)
                                  (Control.DeepSeq.deepseq
                                     (_V4l2QbufFtraceEvent'timecodeFrames x__)
                                     (Control.DeepSeq.deepseq
                                        (_V4l2QbufFtraceEvent'timecodeHours x__)
                                        (Control.DeepSeq.deepseq
                                           (_V4l2QbufFtraceEvent'timecodeMinutes x__)
                                           (Control.DeepSeq.deepseq
                                              (_V4l2QbufFtraceEvent'timecodeSeconds x__)
                                              (Control.DeepSeq.deepseq
                                                 (_V4l2QbufFtraceEvent'timecodeType x__)
                                                 (Control.DeepSeq.deepseq
                                                    (_V4l2QbufFtraceEvent'timecodeUserbits0 x__)
                                                    (Control.DeepSeq.deepseq
                                                       (_V4l2QbufFtraceEvent'timecodeUserbits1 x__)
                                                       (Control.DeepSeq.deepseq
                                                          (_V4l2QbufFtraceEvent'timecodeUserbits2
                                                             x__)
                                                          (Control.DeepSeq.deepseq
                                                             (_V4l2QbufFtraceEvent'timecodeUserbits3
                                                                x__)
                                                             (Control.DeepSeq.deepseq
                                                                (_V4l2QbufFtraceEvent'timestamp x__)
                                                                (Control.DeepSeq.deepseq
                                                                   (_V4l2QbufFtraceEvent'type' x__)
                                                                   ()))))))))))))))))))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.V4l2_Fields.field' @:: Lens' Vb2V4l2BufDoneFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.V4l2_Fields.maybe'field' @:: Lens' Vb2V4l2BufDoneFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.V4l2_Fields.flags' @:: Lens' Vb2V4l2BufDoneFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.V4l2_Fields.maybe'flags' @:: Lens' Vb2V4l2BufDoneFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.V4l2_Fields.minor' @:: Lens' Vb2V4l2BufDoneFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.V4l2_Fields.maybe'minor' @:: Lens' Vb2V4l2BufDoneFtraceEvent (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.V4l2_Fields.sequence' @:: Lens' Vb2V4l2BufDoneFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.V4l2_Fields.maybe'sequence' @:: Lens' Vb2V4l2BufDoneFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.V4l2_Fields.timecodeFlags' @:: Lens' Vb2V4l2BufDoneFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.V4l2_Fields.maybe'timecodeFlags' @:: Lens' Vb2V4l2BufDoneFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.V4l2_Fields.timecodeFrames' @:: Lens' Vb2V4l2BufDoneFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.V4l2_Fields.maybe'timecodeFrames' @:: Lens' Vb2V4l2BufDoneFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.V4l2_Fields.timecodeHours' @:: Lens' Vb2V4l2BufDoneFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.V4l2_Fields.maybe'timecodeHours' @:: Lens' Vb2V4l2BufDoneFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.V4l2_Fields.timecodeMinutes' @:: Lens' Vb2V4l2BufDoneFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.V4l2_Fields.maybe'timecodeMinutes' @:: Lens' Vb2V4l2BufDoneFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.V4l2_Fields.timecodeSeconds' @:: Lens' Vb2V4l2BufDoneFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.V4l2_Fields.maybe'timecodeSeconds' @:: Lens' Vb2V4l2BufDoneFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.V4l2_Fields.timecodeType' @:: Lens' Vb2V4l2BufDoneFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.V4l2_Fields.maybe'timecodeType' @:: Lens' Vb2V4l2BufDoneFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.V4l2_Fields.timecodeUserbits0' @:: Lens' Vb2V4l2BufDoneFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.V4l2_Fields.maybe'timecodeUserbits0' @:: Lens' Vb2V4l2BufDoneFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.V4l2_Fields.timecodeUserbits1' @:: Lens' Vb2V4l2BufDoneFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.V4l2_Fields.maybe'timecodeUserbits1' @:: Lens' Vb2V4l2BufDoneFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.V4l2_Fields.timecodeUserbits2' @:: Lens' Vb2V4l2BufDoneFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.V4l2_Fields.maybe'timecodeUserbits2' @:: Lens' Vb2V4l2BufDoneFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.V4l2_Fields.timecodeUserbits3' @:: Lens' Vb2V4l2BufDoneFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.V4l2_Fields.maybe'timecodeUserbits3' @:: Lens' Vb2V4l2BufDoneFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.V4l2_Fields.timestamp' @:: Lens' Vb2V4l2BufDoneFtraceEvent Data.Int.Int64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.V4l2_Fields.maybe'timestamp' @:: Lens' Vb2V4l2BufDoneFtraceEvent (Prelude.Maybe Data.Int.Int64)@ -}
data Vb2V4l2BufDoneFtraceEvent
  = Vb2V4l2BufDoneFtraceEvent'_constructor {_Vb2V4l2BufDoneFtraceEvent'field :: !(Prelude.Maybe Data.Word.Word32),
                                            _Vb2V4l2BufDoneFtraceEvent'flags :: !(Prelude.Maybe Data.Word.Word32),
                                            _Vb2V4l2BufDoneFtraceEvent'minor :: !(Prelude.Maybe Data.Int.Int32),
                                            _Vb2V4l2BufDoneFtraceEvent'sequence :: !(Prelude.Maybe Data.Word.Word32),
                                            _Vb2V4l2BufDoneFtraceEvent'timecodeFlags :: !(Prelude.Maybe Data.Word.Word32),
                                            _Vb2V4l2BufDoneFtraceEvent'timecodeFrames :: !(Prelude.Maybe Data.Word.Word32),
                                            _Vb2V4l2BufDoneFtraceEvent'timecodeHours :: !(Prelude.Maybe Data.Word.Word32),
                                            _Vb2V4l2BufDoneFtraceEvent'timecodeMinutes :: !(Prelude.Maybe Data.Word.Word32),
                                            _Vb2V4l2BufDoneFtraceEvent'timecodeSeconds :: !(Prelude.Maybe Data.Word.Word32),
                                            _Vb2V4l2BufDoneFtraceEvent'timecodeType :: !(Prelude.Maybe Data.Word.Word32),
                                            _Vb2V4l2BufDoneFtraceEvent'timecodeUserbits0 :: !(Prelude.Maybe Data.Word.Word32),
                                            _Vb2V4l2BufDoneFtraceEvent'timecodeUserbits1 :: !(Prelude.Maybe Data.Word.Word32),
                                            _Vb2V4l2BufDoneFtraceEvent'timecodeUserbits2 :: !(Prelude.Maybe Data.Word.Word32),
                                            _Vb2V4l2BufDoneFtraceEvent'timecodeUserbits3 :: !(Prelude.Maybe Data.Word.Word32),
                                            _Vb2V4l2BufDoneFtraceEvent'timestamp :: !(Prelude.Maybe Data.Int.Int64),
                                            _Vb2V4l2BufDoneFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Vb2V4l2BufDoneFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Vb2V4l2BufDoneFtraceEvent "field" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Vb2V4l2BufDoneFtraceEvent'field
           (\ x__ y__ -> x__ {_Vb2V4l2BufDoneFtraceEvent'field = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField Vb2V4l2BufDoneFtraceEvent "maybe'field" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Vb2V4l2BufDoneFtraceEvent'field
           (\ x__ y__ -> x__ {_Vb2V4l2BufDoneFtraceEvent'field = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Vb2V4l2BufDoneFtraceEvent "flags" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Vb2V4l2BufDoneFtraceEvent'flags
           (\ x__ y__ -> x__ {_Vb2V4l2BufDoneFtraceEvent'flags = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField Vb2V4l2BufDoneFtraceEvent "maybe'flags" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Vb2V4l2BufDoneFtraceEvent'flags
           (\ x__ y__ -> x__ {_Vb2V4l2BufDoneFtraceEvent'flags = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Vb2V4l2BufDoneFtraceEvent "minor" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Vb2V4l2BufDoneFtraceEvent'minor
           (\ x__ y__ -> x__ {_Vb2V4l2BufDoneFtraceEvent'minor = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField Vb2V4l2BufDoneFtraceEvent "maybe'minor" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Vb2V4l2BufDoneFtraceEvent'minor
           (\ x__ y__ -> x__ {_Vb2V4l2BufDoneFtraceEvent'minor = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Vb2V4l2BufDoneFtraceEvent "sequence" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Vb2V4l2BufDoneFtraceEvent'sequence
           (\ x__ y__ -> x__ {_Vb2V4l2BufDoneFtraceEvent'sequence = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField Vb2V4l2BufDoneFtraceEvent "maybe'sequence" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Vb2V4l2BufDoneFtraceEvent'sequence
           (\ x__ y__ -> x__ {_Vb2V4l2BufDoneFtraceEvent'sequence = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Vb2V4l2BufDoneFtraceEvent "timecodeFlags" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Vb2V4l2BufDoneFtraceEvent'timecodeFlags
           (\ x__ y__
              -> x__ {_Vb2V4l2BufDoneFtraceEvent'timecodeFlags = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField Vb2V4l2BufDoneFtraceEvent "maybe'timecodeFlags" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Vb2V4l2BufDoneFtraceEvent'timecodeFlags
           (\ x__ y__
              -> x__ {_Vb2V4l2BufDoneFtraceEvent'timecodeFlags = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Vb2V4l2BufDoneFtraceEvent "timecodeFrames" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Vb2V4l2BufDoneFtraceEvent'timecodeFrames
           (\ x__ y__
              -> x__ {_Vb2V4l2BufDoneFtraceEvent'timecodeFrames = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField Vb2V4l2BufDoneFtraceEvent "maybe'timecodeFrames" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Vb2V4l2BufDoneFtraceEvent'timecodeFrames
           (\ x__ y__
              -> x__ {_Vb2V4l2BufDoneFtraceEvent'timecodeFrames = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Vb2V4l2BufDoneFtraceEvent "timecodeHours" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Vb2V4l2BufDoneFtraceEvent'timecodeHours
           (\ x__ y__
              -> x__ {_Vb2V4l2BufDoneFtraceEvent'timecodeHours = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField Vb2V4l2BufDoneFtraceEvent "maybe'timecodeHours" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Vb2V4l2BufDoneFtraceEvent'timecodeHours
           (\ x__ y__
              -> x__ {_Vb2V4l2BufDoneFtraceEvent'timecodeHours = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Vb2V4l2BufDoneFtraceEvent "timecodeMinutes" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Vb2V4l2BufDoneFtraceEvent'timecodeMinutes
           (\ x__ y__
              -> x__ {_Vb2V4l2BufDoneFtraceEvent'timecodeMinutes = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField Vb2V4l2BufDoneFtraceEvent "maybe'timecodeMinutes" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Vb2V4l2BufDoneFtraceEvent'timecodeMinutes
           (\ x__ y__
              -> x__ {_Vb2V4l2BufDoneFtraceEvent'timecodeMinutes = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Vb2V4l2BufDoneFtraceEvent "timecodeSeconds" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Vb2V4l2BufDoneFtraceEvent'timecodeSeconds
           (\ x__ y__
              -> x__ {_Vb2V4l2BufDoneFtraceEvent'timecodeSeconds = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField Vb2V4l2BufDoneFtraceEvent "maybe'timecodeSeconds" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Vb2V4l2BufDoneFtraceEvent'timecodeSeconds
           (\ x__ y__
              -> x__ {_Vb2V4l2BufDoneFtraceEvent'timecodeSeconds = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Vb2V4l2BufDoneFtraceEvent "timecodeType" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Vb2V4l2BufDoneFtraceEvent'timecodeType
           (\ x__ y__ -> x__ {_Vb2V4l2BufDoneFtraceEvent'timecodeType = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField Vb2V4l2BufDoneFtraceEvent "maybe'timecodeType" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Vb2V4l2BufDoneFtraceEvent'timecodeType
           (\ x__ y__ -> x__ {_Vb2V4l2BufDoneFtraceEvent'timecodeType = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Vb2V4l2BufDoneFtraceEvent "timecodeUserbits0" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Vb2V4l2BufDoneFtraceEvent'timecodeUserbits0
           (\ x__ y__
              -> x__ {_Vb2V4l2BufDoneFtraceEvent'timecodeUserbits0 = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField Vb2V4l2BufDoneFtraceEvent "maybe'timecodeUserbits0" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Vb2V4l2BufDoneFtraceEvent'timecodeUserbits0
           (\ x__ y__
              -> x__ {_Vb2V4l2BufDoneFtraceEvent'timecodeUserbits0 = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Vb2V4l2BufDoneFtraceEvent "timecodeUserbits1" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Vb2V4l2BufDoneFtraceEvent'timecodeUserbits1
           (\ x__ y__
              -> x__ {_Vb2V4l2BufDoneFtraceEvent'timecodeUserbits1 = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField Vb2V4l2BufDoneFtraceEvent "maybe'timecodeUserbits1" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Vb2V4l2BufDoneFtraceEvent'timecodeUserbits1
           (\ x__ y__
              -> x__ {_Vb2V4l2BufDoneFtraceEvent'timecodeUserbits1 = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Vb2V4l2BufDoneFtraceEvent "timecodeUserbits2" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Vb2V4l2BufDoneFtraceEvent'timecodeUserbits2
           (\ x__ y__
              -> x__ {_Vb2V4l2BufDoneFtraceEvent'timecodeUserbits2 = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField Vb2V4l2BufDoneFtraceEvent "maybe'timecodeUserbits2" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Vb2V4l2BufDoneFtraceEvent'timecodeUserbits2
           (\ x__ y__
              -> x__ {_Vb2V4l2BufDoneFtraceEvent'timecodeUserbits2 = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Vb2V4l2BufDoneFtraceEvent "timecodeUserbits3" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Vb2V4l2BufDoneFtraceEvent'timecodeUserbits3
           (\ x__ y__
              -> x__ {_Vb2V4l2BufDoneFtraceEvent'timecodeUserbits3 = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField Vb2V4l2BufDoneFtraceEvent "maybe'timecodeUserbits3" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Vb2V4l2BufDoneFtraceEvent'timecodeUserbits3
           (\ x__ y__
              -> x__ {_Vb2V4l2BufDoneFtraceEvent'timecodeUserbits3 = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Vb2V4l2BufDoneFtraceEvent "timestamp" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Vb2V4l2BufDoneFtraceEvent'timestamp
           (\ x__ y__ -> x__ {_Vb2V4l2BufDoneFtraceEvent'timestamp = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField Vb2V4l2BufDoneFtraceEvent "maybe'timestamp" (Prelude.Maybe Data.Int.Int64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Vb2V4l2BufDoneFtraceEvent'timestamp
           (\ x__ y__ -> x__ {_Vb2V4l2BufDoneFtraceEvent'timestamp = y__}))
        Prelude.id
instance Data.ProtoLens.Message Vb2V4l2BufDoneFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.Vb2V4l2BufDoneFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\EMVb2V4l2BufDoneFtraceEvent\DC2\DC4\n\
      \\ENQfield\CAN\SOH \SOH(\rR\ENQfield\DC2\DC4\n\
      \\ENQflags\CAN\STX \SOH(\rR\ENQflags\DC2\DC4\n\
      \\ENQminor\CAN\ETX \SOH(\ENQR\ENQminor\DC2\SUB\n\
      \\bsequence\CAN\EOT \SOH(\rR\bsequence\DC2%\n\
      \\SOtimecode_flags\CAN\ENQ \SOH(\rR\rtimecodeFlags\DC2'\n\
      \\SItimecode_frames\CAN\ACK \SOH(\rR\SOtimecodeFrames\DC2%\n\
      \\SOtimecode_hours\CAN\a \SOH(\rR\rtimecodeHours\DC2)\n\
      \\DLEtimecode_minutes\CAN\b \SOH(\rR\SItimecodeMinutes\DC2)\n\
      \\DLEtimecode_seconds\CAN\t \SOH(\rR\SItimecodeSeconds\DC2#\n\
      \\rtimecode_type\CAN\n\
      \ \SOH(\rR\ftimecodeType\DC2-\n\
      \\DC2timecode_userbits0\CAN\v \SOH(\rR\DC1timecodeUserbits0\DC2-\n\
      \\DC2timecode_userbits1\CAN\f \SOH(\rR\DC1timecodeUserbits1\DC2-\n\
      \\DC2timecode_userbits2\CAN\r \SOH(\rR\DC1timecodeUserbits2\DC2-\n\
      \\DC2timecode_userbits3\CAN\SO \SOH(\rR\DC1timecodeUserbits3\DC2\FS\n\
      \\ttimestamp\CAN\SI \SOH(\ETXR\ttimestamp"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        field__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "field"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'field")) ::
              Data.ProtoLens.FieldDescriptor Vb2V4l2BufDoneFtraceEvent
        flags__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "flags"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'flags")) ::
              Data.ProtoLens.FieldDescriptor Vb2V4l2BufDoneFtraceEvent
        minor__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "minor"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'minor")) ::
              Data.ProtoLens.FieldDescriptor Vb2V4l2BufDoneFtraceEvent
        sequence__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "sequence"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'sequence")) ::
              Data.ProtoLens.FieldDescriptor Vb2V4l2BufDoneFtraceEvent
        timecodeFlags__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "timecode_flags"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'timecodeFlags")) ::
              Data.ProtoLens.FieldDescriptor Vb2V4l2BufDoneFtraceEvent
        timecodeFrames__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "timecode_frames"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'timecodeFrames")) ::
              Data.ProtoLens.FieldDescriptor Vb2V4l2BufDoneFtraceEvent
        timecodeHours__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "timecode_hours"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'timecodeHours")) ::
              Data.ProtoLens.FieldDescriptor Vb2V4l2BufDoneFtraceEvent
        timecodeMinutes__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "timecode_minutes"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'timecodeMinutes")) ::
              Data.ProtoLens.FieldDescriptor Vb2V4l2BufDoneFtraceEvent
        timecodeSeconds__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "timecode_seconds"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'timecodeSeconds")) ::
              Data.ProtoLens.FieldDescriptor Vb2V4l2BufDoneFtraceEvent
        timecodeType__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "timecode_type"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'timecodeType")) ::
              Data.ProtoLens.FieldDescriptor Vb2V4l2BufDoneFtraceEvent
        timecodeUserbits0__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "timecode_userbits0"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'timecodeUserbits0")) ::
              Data.ProtoLens.FieldDescriptor Vb2V4l2BufDoneFtraceEvent
        timecodeUserbits1__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "timecode_userbits1"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'timecodeUserbits1")) ::
              Data.ProtoLens.FieldDescriptor Vb2V4l2BufDoneFtraceEvent
        timecodeUserbits2__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "timecode_userbits2"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'timecodeUserbits2")) ::
              Data.ProtoLens.FieldDescriptor Vb2V4l2BufDoneFtraceEvent
        timecodeUserbits3__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "timecode_userbits3"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'timecodeUserbits3")) ::
              Data.ProtoLens.FieldDescriptor Vb2V4l2BufDoneFtraceEvent
        timestamp__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "timestamp"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'timestamp")) ::
              Data.ProtoLens.FieldDescriptor Vb2V4l2BufDoneFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, field__field_descriptor),
           (Data.ProtoLens.Tag 2, flags__field_descriptor),
           (Data.ProtoLens.Tag 3, minor__field_descriptor),
           (Data.ProtoLens.Tag 4, sequence__field_descriptor),
           (Data.ProtoLens.Tag 5, timecodeFlags__field_descriptor),
           (Data.ProtoLens.Tag 6, timecodeFrames__field_descriptor),
           (Data.ProtoLens.Tag 7, timecodeHours__field_descriptor),
           (Data.ProtoLens.Tag 8, timecodeMinutes__field_descriptor),
           (Data.ProtoLens.Tag 9, timecodeSeconds__field_descriptor),
           (Data.ProtoLens.Tag 10, timecodeType__field_descriptor),
           (Data.ProtoLens.Tag 11, timecodeUserbits0__field_descriptor),
           (Data.ProtoLens.Tag 12, timecodeUserbits1__field_descriptor),
           (Data.ProtoLens.Tag 13, timecodeUserbits2__field_descriptor),
           (Data.ProtoLens.Tag 14, timecodeUserbits3__field_descriptor),
           (Data.ProtoLens.Tag 15, timestamp__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Vb2V4l2BufDoneFtraceEvent'_unknownFields
        (\ x__ y__
           -> x__ {_Vb2V4l2BufDoneFtraceEvent'_unknownFields = y__})
  defMessage
    = Vb2V4l2BufDoneFtraceEvent'_constructor
        {_Vb2V4l2BufDoneFtraceEvent'field = Prelude.Nothing,
         _Vb2V4l2BufDoneFtraceEvent'flags = Prelude.Nothing,
         _Vb2V4l2BufDoneFtraceEvent'minor = Prelude.Nothing,
         _Vb2V4l2BufDoneFtraceEvent'sequence = Prelude.Nothing,
         _Vb2V4l2BufDoneFtraceEvent'timecodeFlags = Prelude.Nothing,
         _Vb2V4l2BufDoneFtraceEvent'timecodeFrames = Prelude.Nothing,
         _Vb2V4l2BufDoneFtraceEvent'timecodeHours = Prelude.Nothing,
         _Vb2V4l2BufDoneFtraceEvent'timecodeMinutes = Prelude.Nothing,
         _Vb2V4l2BufDoneFtraceEvent'timecodeSeconds = Prelude.Nothing,
         _Vb2V4l2BufDoneFtraceEvent'timecodeType = Prelude.Nothing,
         _Vb2V4l2BufDoneFtraceEvent'timecodeUserbits0 = Prelude.Nothing,
         _Vb2V4l2BufDoneFtraceEvent'timecodeUserbits1 = Prelude.Nothing,
         _Vb2V4l2BufDoneFtraceEvent'timecodeUserbits2 = Prelude.Nothing,
         _Vb2V4l2BufDoneFtraceEvent'timecodeUserbits3 = Prelude.Nothing,
         _Vb2V4l2BufDoneFtraceEvent'timestamp = Prelude.Nothing,
         _Vb2V4l2BufDoneFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          Vb2V4l2BufDoneFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser Vb2V4l2BufDoneFtraceEvent
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
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
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        8 -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "field"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"field") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "flags"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"flags") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "minor"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"minor") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "sequence"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"sequence") y x)
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "timecode_flags"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"timecodeFlags") y x)
                        48
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "timecode_frames"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"timecodeFrames") y x)
                        56
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "timecode_hours"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"timecodeHours") y x)
                        64
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "timecode_minutes"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"timecodeMinutes") y x)
                        72
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "timecode_seconds"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"timecodeSeconds") y x)
                        80
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "timecode_type"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"timecodeType") y x)
                        88
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "timecode_userbits0"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"timecodeUserbits0") y x)
                        96
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "timecode_userbits1"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"timecodeUserbits1") y x)
                        104
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "timecode_userbits2"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"timecodeUserbits2") y x)
                        112
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "timecode_userbits3"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"timecodeUserbits3") y x)
                        120
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "timestamp"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"timestamp") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Vb2V4l2BufDoneFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'field") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       ((Prelude..)
                          Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'flags") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          ((Prelude..)
                             Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'minor") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             ((Prelude..)
                                Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'sequence") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                                ((Prelude..)
                                   Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                      ((Data.Monoid.<>)
                         (case
                              Lens.Family2.view
                                (Data.ProtoLens.Field.field @"maybe'timecodeFlags") _x
                          of
                            Prelude.Nothing -> Data.Monoid.mempty
                            (Prelude.Just _v)
                              -> (Data.Monoid.<>)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt 40)
                                   ((Prelude..)
                                      Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral
                                      _v))
                         ((Data.Monoid.<>)
                            (case
                                 Lens.Family2.view
                                   (Data.ProtoLens.Field.field @"maybe'timecodeFrames") _x
                             of
                               Prelude.Nothing -> Data.Monoid.mempty
                               (Prelude.Just _v)
                                 -> (Data.Monoid.<>)
                                      (Data.ProtoLens.Encoding.Bytes.putVarInt 48)
                                      ((Prelude..)
                                         Data.ProtoLens.Encoding.Bytes.putVarInt
                                         Prelude.fromIntegral _v))
                            ((Data.Monoid.<>)
                               (case
                                    Lens.Family2.view
                                      (Data.ProtoLens.Field.field @"maybe'timecodeHours") _x
                                of
                                  Prelude.Nothing -> Data.Monoid.mempty
                                  (Prelude.Just _v)
                                    -> (Data.Monoid.<>)
                                         (Data.ProtoLens.Encoding.Bytes.putVarInt 56)
                                         ((Prelude..)
                                            Data.ProtoLens.Encoding.Bytes.putVarInt
                                            Prelude.fromIntegral _v))
                               ((Data.Monoid.<>)
                                  (case
                                       Lens.Family2.view
                                         (Data.ProtoLens.Field.field @"maybe'timecodeMinutes") _x
                                   of
                                     Prelude.Nothing -> Data.Monoid.mempty
                                     (Prelude.Just _v)
                                       -> (Data.Monoid.<>)
                                            (Data.ProtoLens.Encoding.Bytes.putVarInt 64)
                                            ((Prelude..)
                                               Data.ProtoLens.Encoding.Bytes.putVarInt
                                               Prelude.fromIntegral _v))
                                  ((Data.Monoid.<>)
                                     (case
                                          Lens.Family2.view
                                            (Data.ProtoLens.Field.field @"maybe'timecodeSeconds") _x
                                      of
                                        Prelude.Nothing -> Data.Monoid.mempty
                                        (Prelude.Just _v)
                                          -> (Data.Monoid.<>)
                                               (Data.ProtoLens.Encoding.Bytes.putVarInt 72)
                                               ((Prelude..)
                                                  Data.ProtoLens.Encoding.Bytes.putVarInt
                                                  Prelude.fromIntegral _v))
                                     ((Data.Monoid.<>)
                                        (case
                                             Lens.Family2.view
                                               (Data.ProtoLens.Field.field @"maybe'timecodeType") _x
                                         of
                                           Prelude.Nothing -> Data.Monoid.mempty
                                           (Prelude.Just _v)
                                             -> (Data.Monoid.<>)
                                                  (Data.ProtoLens.Encoding.Bytes.putVarInt 80)
                                                  ((Prelude..)
                                                     Data.ProtoLens.Encoding.Bytes.putVarInt
                                                     Prelude.fromIntegral _v))
                                        ((Data.Monoid.<>)
                                           (case
                                                Lens.Family2.view
                                                  (Data.ProtoLens.Field.field
                                                     @"maybe'timecodeUserbits0")
                                                  _x
                                            of
                                              Prelude.Nothing -> Data.Monoid.mempty
                                              (Prelude.Just _v)
                                                -> (Data.Monoid.<>)
                                                     (Data.ProtoLens.Encoding.Bytes.putVarInt 88)
                                                     ((Prelude..)
                                                        Data.ProtoLens.Encoding.Bytes.putVarInt
                                                        Prelude.fromIntegral _v))
                                           ((Data.Monoid.<>)
                                              (case
                                                   Lens.Family2.view
                                                     (Data.ProtoLens.Field.field
                                                        @"maybe'timecodeUserbits1")
                                                     _x
                                               of
                                                 Prelude.Nothing -> Data.Monoid.mempty
                                                 (Prelude.Just _v)
                                                   -> (Data.Monoid.<>)
                                                        (Data.ProtoLens.Encoding.Bytes.putVarInt 96)
                                                        ((Prelude..)
                                                           Data.ProtoLens.Encoding.Bytes.putVarInt
                                                           Prelude.fromIntegral _v))
                                              ((Data.Monoid.<>)
                                                 (case
                                                      Lens.Family2.view
                                                        (Data.ProtoLens.Field.field
                                                           @"maybe'timecodeUserbits2")
                                                        _x
                                                  of
                                                    Prelude.Nothing -> Data.Monoid.mempty
                                                    (Prelude.Just _v)
                                                      -> (Data.Monoid.<>)
                                                           (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                              104)
                                                           ((Prelude..)
                                                              Data.ProtoLens.Encoding.Bytes.putVarInt
                                                              Prelude.fromIntegral _v))
                                                 ((Data.Monoid.<>)
                                                    (case
                                                         Lens.Family2.view
                                                           (Data.ProtoLens.Field.field
                                                              @"maybe'timecodeUserbits3")
                                                           _x
                                                     of
                                                       Prelude.Nothing -> Data.Monoid.mempty
                                                       (Prelude.Just _v)
                                                         -> (Data.Monoid.<>)
                                                              (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                 112)
                                                              ((Prelude..)
                                                                 Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                 Prelude.fromIntegral _v))
                                                    ((Data.Monoid.<>)
                                                       (case
                                                            Lens.Family2.view
                                                              (Data.ProtoLens.Field.field
                                                                 @"maybe'timestamp")
                                                              _x
                                                        of
                                                          Prelude.Nothing -> Data.Monoid.mempty
                                                          (Prelude.Just _v)
                                                            -> (Data.Monoid.<>)
                                                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                    120)
                                                                 ((Prelude..)
                                                                    Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                    Prelude.fromIntegral _v))
                                                       (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                                          (Lens.Family2.view
                                                             Data.ProtoLens.unknownFields
                                                             _x))))))))))))))))
instance Control.DeepSeq.NFData Vb2V4l2BufDoneFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Vb2V4l2BufDoneFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Vb2V4l2BufDoneFtraceEvent'field x__)
                (Control.DeepSeq.deepseq
                   (_Vb2V4l2BufDoneFtraceEvent'flags x__)
                   (Control.DeepSeq.deepseq
                      (_Vb2V4l2BufDoneFtraceEvent'minor x__)
                      (Control.DeepSeq.deepseq
                         (_Vb2V4l2BufDoneFtraceEvent'sequence x__)
                         (Control.DeepSeq.deepseq
                            (_Vb2V4l2BufDoneFtraceEvent'timecodeFlags x__)
                            (Control.DeepSeq.deepseq
                               (_Vb2V4l2BufDoneFtraceEvent'timecodeFrames x__)
                               (Control.DeepSeq.deepseq
                                  (_Vb2V4l2BufDoneFtraceEvent'timecodeHours x__)
                                  (Control.DeepSeq.deepseq
                                     (_Vb2V4l2BufDoneFtraceEvent'timecodeMinutes x__)
                                     (Control.DeepSeq.deepseq
                                        (_Vb2V4l2BufDoneFtraceEvent'timecodeSeconds x__)
                                        (Control.DeepSeq.deepseq
                                           (_Vb2V4l2BufDoneFtraceEvent'timecodeType x__)
                                           (Control.DeepSeq.deepseq
                                              (_Vb2V4l2BufDoneFtraceEvent'timecodeUserbits0 x__)
                                              (Control.DeepSeq.deepseq
                                                 (_Vb2V4l2BufDoneFtraceEvent'timecodeUserbits1 x__)
                                                 (Control.DeepSeq.deepseq
                                                    (_Vb2V4l2BufDoneFtraceEvent'timecodeUserbits2
                                                       x__)
                                                    (Control.DeepSeq.deepseq
                                                       (_Vb2V4l2BufDoneFtraceEvent'timecodeUserbits3
                                                          x__)
                                                       (Control.DeepSeq.deepseq
                                                          (_Vb2V4l2BufDoneFtraceEvent'timestamp x__)
                                                          ())))))))))))))))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.V4l2_Fields.field' @:: Lens' Vb2V4l2BufQueueFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.V4l2_Fields.maybe'field' @:: Lens' Vb2V4l2BufQueueFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.V4l2_Fields.flags' @:: Lens' Vb2V4l2BufQueueFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.V4l2_Fields.maybe'flags' @:: Lens' Vb2V4l2BufQueueFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.V4l2_Fields.minor' @:: Lens' Vb2V4l2BufQueueFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.V4l2_Fields.maybe'minor' @:: Lens' Vb2V4l2BufQueueFtraceEvent (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.V4l2_Fields.sequence' @:: Lens' Vb2V4l2BufQueueFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.V4l2_Fields.maybe'sequence' @:: Lens' Vb2V4l2BufQueueFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.V4l2_Fields.timecodeFlags' @:: Lens' Vb2V4l2BufQueueFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.V4l2_Fields.maybe'timecodeFlags' @:: Lens' Vb2V4l2BufQueueFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.V4l2_Fields.timecodeFrames' @:: Lens' Vb2V4l2BufQueueFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.V4l2_Fields.maybe'timecodeFrames' @:: Lens' Vb2V4l2BufQueueFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.V4l2_Fields.timecodeHours' @:: Lens' Vb2V4l2BufQueueFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.V4l2_Fields.maybe'timecodeHours' @:: Lens' Vb2V4l2BufQueueFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.V4l2_Fields.timecodeMinutes' @:: Lens' Vb2V4l2BufQueueFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.V4l2_Fields.maybe'timecodeMinutes' @:: Lens' Vb2V4l2BufQueueFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.V4l2_Fields.timecodeSeconds' @:: Lens' Vb2V4l2BufQueueFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.V4l2_Fields.maybe'timecodeSeconds' @:: Lens' Vb2V4l2BufQueueFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.V4l2_Fields.timecodeType' @:: Lens' Vb2V4l2BufQueueFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.V4l2_Fields.maybe'timecodeType' @:: Lens' Vb2V4l2BufQueueFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.V4l2_Fields.timecodeUserbits0' @:: Lens' Vb2V4l2BufQueueFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.V4l2_Fields.maybe'timecodeUserbits0' @:: Lens' Vb2V4l2BufQueueFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.V4l2_Fields.timecodeUserbits1' @:: Lens' Vb2V4l2BufQueueFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.V4l2_Fields.maybe'timecodeUserbits1' @:: Lens' Vb2V4l2BufQueueFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.V4l2_Fields.timecodeUserbits2' @:: Lens' Vb2V4l2BufQueueFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.V4l2_Fields.maybe'timecodeUserbits2' @:: Lens' Vb2V4l2BufQueueFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.V4l2_Fields.timecodeUserbits3' @:: Lens' Vb2V4l2BufQueueFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.V4l2_Fields.maybe'timecodeUserbits3' @:: Lens' Vb2V4l2BufQueueFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.V4l2_Fields.timestamp' @:: Lens' Vb2V4l2BufQueueFtraceEvent Data.Int.Int64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.V4l2_Fields.maybe'timestamp' @:: Lens' Vb2V4l2BufQueueFtraceEvent (Prelude.Maybe Data.Int.Int64)@ -}
data Vb2V4l2BufQueueFtraceEvent
  = Vb2V4l2BufQueueFtraceEvent'_constructor {_Vb2V4l2BufQueueFtraceEvent'field :: !(Prelude.Maybe Data.Word.Word32),
                                             _Vb2V4l2BufQueueFtraceEvent'flags :: !(Prelude.Maybe Data.Word.Word32),
                                             _Vb2V4l2BufQueueFtraceEvent'minor :: !(Prelude.Maybe Data.Int.Int32),
                                             _Vb2V4l2BufQueueFtraceEvent'sequence :: !(Prelude.Maybe Data.Word.Word32),
                                             _Vb2V4l2BufQueueFtraceEvent'timecodeFlags :: !(Prelude.Maybe Data.Word.Word32),
                                             _Vb2V4l2BufQueueFtraceEvent'timecodeFrames :: !(Prelude.Maybe Data.Word.Word32),
                                             _Vb2V4l2BufQueueFtraceEvent'timecodeHours :: !(Prelude.Maybe Data.Word.Word32),
                                             _Vb2V4l2BufQueueFtraceEvent'timecodeMinutes :: !(Prelude.Maybe Data.Word.Word32),
                                             _Vb2V4l2BufQueueFtraceEvent'timecodeSeconds :: !(Prelude.Maybe Data.Word.Word32),
                                             _Vb2V4l2BufQueueFtraceEvent'timecodeType :: !(Prelude.Maybe Data.Word.Word32),
                                             _Vb2V4l2BufQueueFtraceEvent'timecodeUserbits0 :: !(Prelude.Maybe Data.Word.Word32),
                                             _Vb2V4l2BufQueueFtraceEvent'timecodeUserbits1 :: !(Prelude.Maybe Data.Word.Word32),
                                             _Vb2V4l2BufQueueFtraceEvent'timecodeUserbits2 :: !(Prelude.Maybe Data.Word.Word32),
                                             _Vb2V4l2BufQueueFtraceEvent'timecodeUserbits3 :: !(Prelude.Maybe Data.Word.Word32),
                                             _Vb2V4l2BufQueueFtraceEvent'timestamp :: !(Prelude.Maybe Data.Int.Int64),
                                             _Vb2V4l2BufQueueFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Vb2V4l2BufQueueFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Vb2V4l2BufQueueFtraceEvent "field" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Vb2V4l2BufQueueFtraceEvent'field
           (\ x__ y__ -> x__ {_Vb2V4l2BufQueueFtraceEvent'field = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField Vb2V4l2BufQueueFtraceEvent "maybe'field" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Vb2V4l2BufQueueFtraceEvent'field
           (\ x__ y__ -> x__ {_Vb2V4l2BufQueueFtraceEvent'field = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Vb2V4l2BufQueueFtraceEvent "flags" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Vb2V4l2BufQueueFtraceEvent'flags
           (\ x__ y__ -> x__ {_Vb2V4l2BufQueueFtraceEvent'flags = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField Vb2V4l2BufQueueFtraceEvent "maybe'flags" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Vb2V4l2BufQueueFtraceEvent'flags
           (\ x__ y__ -> x__ {_Vb2V4l2BufQueueFtraceEvent'flags = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Vb2V4l2BufQueueFtraceEvent "minor" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Vb2V4l2BufQueueFtraceEvent'minor
           (\ x__ y__ -> x__ {_Vb2V4l2BufQueueFtraceEvent'minor = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField Vb2V4l2BufQueueFtraceEvent "maybe'minor" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Vb2V4l2BufQueueFtraceEvent'minor
           (\ x__ y__ -> x__ {_Vb2V4l2BufQueueFtraceEvent'minor = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Vb2V4l2BufQueueFtraceEvent "sequence" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Vb2V4l2BufQueueFtraceEvent'sequence
           (\ x__ y__ -> x__ {_Vb2V4l2BufQueueFtraceEvent'sequence = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField Vb2V4l2BufQueueFtraceEvent "maybe'sequence" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Vb2V4l2BufQueueFtraceEvent'sequence
           (\ x__ y__ -> x__ {_Vb2V4l2BufQueueFtraceEvent'sequence = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Vb2V4l2BufQueueFtraceEvent "timecodeFlags" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Vb2V4l2BufQueueFtraceEvent'timecodeFlags
           (\ x__ y__
              -> x__ {_Vb2V4l2BufQueueFtraceEvent'timecodeFlags = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField Vb2V4l2BufQueueFtraceEvent "maybe'timecodeFlags" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Vb2V4l2BufQueueFtraceEvent'timecodeFlags
           (\ x__ y__
              -> x__ {_Vb2V4l2BufQueueFtraceEvent'timecodeFlags = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Vb2V4l2BufQueueFtraceEvent "timecodeFrames" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Vb2V4l2BufQueueFtraceEvent'timecodeFrames
           (\ x__ y__
              -> x__ {_Vb2V4l2BufQueueFtraceEvent'timecodeFrames = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField Vb2V4l2BufQueueFtraceEvent "maybe'timecodeFrames" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Vb2V4l2BufQueueFtraceEvent'timecodeFrames
           (\ x__ y__
              -> x__ {_Vb2V4l2BufQueueFtraceEvent'timecodeFrames = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Vb2V4l2BufQueueFtraceEvent "timecodeHours" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Vb2V4l2BufQueueFtraceEvent'timecodeHours
           (\ x__ y__
              -> x__ {_Vb2V4l2BufQueueFtraceEvent'timecodeHours = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField Vb2V4l2BufQueueFtraceEvent "maybe'timecodeHours" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Vb2V4l2BufQueueFtraceEvent'timecodeHours
           (\ x__ y__
              -> x__ {_Vb2V4l2BufQueueFtraceEvent'timecodeHours = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Vb2V4l2BufQueueFtraceEvent "timecodeMinutes" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Vb2V4l2BufQueueFtraceEvent'timecodeMinutes
           (\ x__ y__
              -> x__ {_Vb2V4l2BufQueueFtraceEvent'timecodeMinutes = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField Vb2V4l2BufQueueFtraceEvent "maybe'timecodeMinutes" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Vb2V4l2BufQueueFtraceEvent'timecodeMinutes
           (\ x__ y__
              -> x__ {_Vb2V4l2BufQueueFtraceEvent'timecodeMinutes = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Vb2V4l2BufQueueFtraceEvent "timecodeSeconds" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Vb2V4l2BufQueueFtraceEvent'timecodeSeconds
           (\ x__ y__
              -> x__ {_Vb2V4l2BufQueueFtraceEvent'timecodeSeconds = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField Vb2V4l2BufQueueFtraceEvent "maybe'timecodeSeconds" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Vb2V4l2BufQueueFtraceEvent'timecodeSeconds
           (\ x__ y__
              -> x__ {_Vb2V4l2BufQueueFtraceEvent'timecodeSeconds = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Vb2V4l2BufQueueFtraceEvent "timecodeType" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Vb2V4l2BufQueueFtraceEvent'timecodeType
           (\ x__ y__
              -> x__ {_Vb2V4l2BufQueueFtraceEvent'timecodeType = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField Vb2V4l2BufQueueFtraceEvent "maybe'timecodeType" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Vb2V4l2BufQueueFtraceEvent'timecodeType
           (\ x__ y__
              -> x__ {_Vb2V4l2BufQueueFtraceEvent'timecodeType = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Vb2V4l2BufQueueFtraceEvent "timecodeUserbits0" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Vb2V4l2BufQueueFtraceEvent'timecodeUserbits0
           (\ x__ y__
              -> x__ {_Vb2V4l2BufQueueFtraceEvent'timecodeUserbits0 = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField Vb2V4l2BufQueueFtraceEvent "maybe'timecodeUserbits0" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Vb2V4l2BufQueueFtraceEvent'timecodeUserbits0
           (\ x__ y__
              -> x__ {_Vb2V4l2BufQueueFtraceEvent'timecodeUserbits0 = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Vb2V4l2BufQueueFtraceEvent "timecodeUserbits1" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Vb2V4l2BufQueueFtraceEvent'timecodeUserbits1
           (\ x__ y__
              -> x__ {_Vb2V4l2BufQueueFtraceEvent'timecodeUserbits1 = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField Vb2V4l2BufQueueFtraceEvent "maybe'timecodeUserbits1" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Vb2V4l2BufQueueFtraceEvent'timecodeUserbits1
           (\ x__ y__
              -> x__ {_Vb2V4l2BufQueueFtraceEvent'timecodeUserbits1 = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Vb2V4l2BufQueueFtraceEvent "timecodeUserbits2" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Vb2V4l2BufQueueFtraceEvent'timecodeUserbits2
           (\ x__ y__
              -> x__ {_Vb2V4l2BufQueueFtraceEvent'timecodeUserbits2 = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField Vb2V4l2BufQueueFtraceEvent "maybe'timecodeUserbits2" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Vb2V4l2BufQueueFtraceEvent'timecodeUserbits2
           (\ x__ y__
              -> x__ {_Vb2V4l2BufQueueFtraceEvent'timecodeUserbits2 = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Vb2V4l2BufQueueFtraceEvent "timecodeUserbits3" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Vb2V4l2BufQueueFtraceEvent'timecodeUserbits3
           (\ x__ y__
              -> x__ {_Vb2V4l2BufQueueFtraceEvent'timecodeUserbits3 = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField Vb2V4l2BufQueueFtraceEvent "maybe'timecodeUserbits3" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Vb2V4l2BufQueueFtraceEvent'timecodeUserbits3
           (\ x__ y__
              -> x__ {_Vb2V4l2BufQueueFtraceEvent'timecodeUserbits3 = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Vb2V4l2BufQueueFtraceEvent "timestamp" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Vb2V4l2BufQueueFtraceEvent'timestamp
           (\ x__ y__ -> x__ {_Vb2V4l2BufQueueFtraceEvent'timestamp = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField Vb2V4l2BufQueueFtraceEvent "maybe'timestamp" (Prelude.Maybe Data.Int.Int64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Vb2V4l2BufQueueFtraceEvent'timestamp
           (\ x__ y__ -> x__ {_Vb2V4l2BufQueueFtraceEvent'timestamp = y__}))
        Prelude.id
instance Data.ProtoLens.Message Vb2V4l2BufQueueFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.Vb2V4l2BufQueueFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\SUBVb2V4l2BufQueueFtraceEvent\DC2\DC4\n\
      \\ENQfield\CAN\SOH \SOH(\rR\ENQfield\DC2\DC4\n\
      \\ENQflags\CAN\STX \SOH(\rR\ENQflags\DC2\DC4\n\
      \\ENQminor\CAN\ETX \SOH(\ENQR\ENQminor\DC2\SUB\n\
      \\bsequence\CAN\EOT \SOH(\rR\bsequence\DC2%\n\
      \\SOtimecode_flags\CAN\ENQ \SOH(\rR\rtimecodeFlags\DC2'\n\
      \\SItimecode_frames\CAN\ACK \SOH(\rR\SOtimecodeFrames\DC2%\n\
      \\SOtimecode_hours\CAN\a \SOH(\rR\rtimecodeHours\DC2)\n\
      \\DLEtimecode_minutes\CAN\b \SOH(\rR\SItimecodeMinutes\DC2)\n\
      \\DLEtimecode_seconds\CAN\t \SOH(\rR\SItimecodeSeconds\DC2#\n\
      \\rtimecode_type\CAN\n\
      \ \SOH(\rR\ftimecodeType\DC2-\n\
      \\DC2timecode_userbits0\CAN\v \SOH(\rR\DC1timecodeUserbits0\DC2-\n\
      \\DC2timecode_userbits1\CAN\f \SOH(\rR\DC1timecodeUserbits1\DC2-\n\
      \\DC2timecode_userbits2\CAN\r \SOH(\rR\DC1timecodeUserbits2\DC2-\n\
      \\DC2timecode_userbits3\CAN\SO \SOH(\rR\DC1timecodeUserbits3\DC2\FS\n\
      \\ttimestamp\CAN\SI \SOH(\ETXR\ttimestamp"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        field__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "field"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'field")) ::
              Data.ProtoLens.FieldDescriptor Vb2V4l2BufQueueFtraceEvent
        flags__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "flags"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'flags")) ::
              Data.ProtoLens.FieldDescriptor Vb2V4l2BufQueueFtraceEvent
        minor__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "minor"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'minor")) ::
              Data.ProtoLens.FieldDescriptor Vb2V4l2BufQueueFtraceEvent
        sequence__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "sequence"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'sequence")) ::
              Data.ProtoLens.FieldDescriptor Vb2V4l2BufQueueFtraceEvent
        timecodeFlags__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "timecode_flags"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'timecodeFlags")) ::
              Data.ProtoLens.FieldDescriptor Vb2V4l2BufQueueFtraceEvent
        timecodeFrames__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "timecode_frames"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'timecodeFrames")) ::
              Data.ProtoLens.FieldDescriptor Vb2V4l2BufQueueFtraceEvent
        timecodeHours__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "timecode_hours"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'timecodeHours")) ::
              Data.ProtoLens.FieldDescriptor Vb2V4l2BufQueueFtraceEvent
        timecodeMinutes__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "timecode_minutes"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'timecodeMinutes")) ::
              Data.ProtoLens.FieldDescriptor Vb2V4l2BufQueueFtraceEvent
        timecodeSeconds__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "timecode_seconds"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'timecodeSeconds")) ::
              Data.ProtoLens.FieldDescriptor Vb2V4l2BufQueueFtraceEvent
        timecodeType__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "timecode_type"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'timecodeType")) ::
              Data.ProtoLens.FieldDescriptor Vb2V4l2BufQueueFtraceEvent
        timecodeUserbits0__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "timecode_userbits0"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'timecodeUserbits0")) ::
              Data.ProtoLens.FieldDescriptor Vb2V4l2BufQueueFtraceEvent
        timecodeUserbits1__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "timecode_userbits1"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'timecodeUserbits1")) ::
              Data.ProtoLens.FieldDescriptor Vb2V4l2BufQueueFtraceEvent
        timecodeUserbits2__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "timecode_userbits2"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'timecodeUserbits2")) ::
              Data.ProtoLens.FieldDescriptor Vb2V4l2BufQueueFtraceEvent
        timecodeUserbits3__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "timecode_userbits3"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'timecodeUserbits3")) ::
              Data.ProtoLens.FieldDescriptor Vb2V4l2BufQueueFtraceEvent
        timestamp__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "timestamp"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'timestamp")) ::
              Data.ProtoLens.FieldDescriptor Vb2V4l2BufQueueFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, field__field_descriptor),
           (Data.ProtoLens.Tag 2, flags__field_descriptor),
           (Data.ProtoLens.Tag 3, minor__field_descriptor),
           (Data.ProtoLens.Tag 4, sequence__field_descriptor),
           (Data.ProtoLens.Tag 5, timecodeFlags__field_descriptor),
           (Data.ProtoLens.Tag 6, timecodeFrames__field_descriptor),
           (Data.ProtoLens.Tag 7, timecodeHours__field_descriptor),
           (Data.ProtoLens.Tag 8, timecodeMinutes__field_descriptor),
           (Data.ProtoLens.Tag 9, timecodeSeconds__field_descriptor),
           (Data.ProtoLens.Tag 10, timecodeType__field_descriptor),
           (Data.ProtoLens.Tag 11, timecodeUserbits0__field_descriptor),
           (Data.ProtoLens.Tag 12, timecodeUserbits1__field_descriptor),
           (Data.ProtoLens.Tag 13, timecodeUserbits2__field_descriptor),
           (Data.ProtoLens.Tag 14, timecodeUserbits3__field_descriptor),
           (Data.ProtoLens.Tag 15, timestamp__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Vb2V4l2BufQueueFtraceEvent'_unknownFields
        (\ x__ y__
           -> x__ {_Vb2V4l2BufQueueFtraceEvent'_unknownFields = y__})
  defMessage
    = Vb2V4l2BufQueueFtraceEvent'_constructor
        {_Vb2V4l2BufQueueFtraceEvent'field = Prelude.Nothing,
         _Vb2V4l2BufQueueFtraceEvent'flags = Prelude.Nothing,
         _Vb2V4l2BufQueueFtraceEvent'minor = Prelude.Nothing,
         _Vb2V4l2BufQueueFtraceEvent'sequence = Prelude.Nothing,
         _Vb2V4l2BufQueueFtraceEvent'timecodeFlags = Prelude.Nothing,
         _Vb2V4l2BufQueueFtraceEvent'timecodeFrames = Prelude.Nothing,
         _Vb2V4l2BufQueueFtraceEvent'timecodeHours = Prelude.Nothing,
         _Vb2V4l2BufQueueFtraceEvent'timecodeMinutes = Prelude.Nothing,
         _Vb2V4l2BufQueueFtraceEvent'timecodeSeconds = Prelude.Nothing,
         _Vb2V4l2BufQueueFtraceEvent'timecodeType = Prelude.Nothing,
         _Vb2V4l2BufQueueFtraceEvent'timecodeUserbits0 = Prelude.Nothing,
         _Vb2V4l2BufQueueFtraceEvent'timecodeUserbits1 = Prelude.Nothing,
         _Vb2V4l2BufQueueFtraceEvent'timecodeUserbits2 = Prelude.Nothing,
         _Vb2V4l2BufQueueFtraceEvent'timecodeUserbits3 = Prelude.Nothing,
         _Vb2V4l2BufQueueFtraceEvent'timestamp = Prelude.Nothing,
         _Vb2V4l2BufQueueFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          Vb2V4l2BufQueueFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser Vb2V4l2BufQueueFtraceEvent
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
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
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        8 -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "field"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"field") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "flags"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"flags") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "minor"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"minor") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "sequence"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"sequence") y x)
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "timecode_flags"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"timecodeFlags") y x)
                        48
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "timecode_frames"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"timecodeFrames") y x)
                        56
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "timecode_hours"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"timecodeHours") y x)
                        64
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "timecode_minutes"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"timecodeMinutes") y x)
                        72
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "timecode_seconds"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"timecodeSeconds") y x)
                        80
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "timecode_type"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"timecodeType") y x)
                        88
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "timecode_userbits0"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"timecodeUserbits0") y x)
                        96
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "timecode_userbits1"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"timecodeUserbits1") y x)
                        104
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "timecode_userbits2"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"timecodeUserbits2") y x)
                        112
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "timecode_userbits3"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"timecodeUserbits3") y x)
                        120
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "timestamp"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"timestamp") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Vb2V4l2BufQueueFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'field") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       ((Prelude..)
                          Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'flags") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          ((Prelude..)
                             Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'minor") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             ((Prelude..)
                                Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'sequence") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                                ((Prelude..)
                                   Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                      ((Data.Monoid.<>)
                         (case
                              Lens.Family2.view
                                (Data.ProtoLens.Field.field @"maybe'timecodeFlags") _x
                          of
                            Prelude.Nothing -> Data.Monoid.mempty
                            (Prelude.Just _v)
                              -> (Data.Monoid.<>)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt 40)
                                   ((Prelude..)
                                      Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral
                                      _v))
                         ((Data.Monoid.<>)
                            (case
                                 Lens.Family2.view
                                   (Data.ProtoLens.Field.field @"maybe'timecodeFrames") _x
                             of
                               Prelude.Nothing -> Data.Monoid.mempty
                               (Prelude.Just _v)
                                 -> (Data.Monoid.<>)
                                      (Data.ProtoLens.Encoding.Bytes.putVarInt 48)
                                      ((Prelude..)
                                         Data.ProtoLens.Encoding.Bytes.putVarInt
                                         Prelude.fromIntegral _v))
                            ((Data.Monoid.<>)
                               (case
                                    Lens.Family2.view
                                      (Data.ProtoLens.Field.field @"maybe'timecodeHours") _x
                                of
                                  Prelude.Nothing -> Data.Monoid.mempty
                                  (Prelude.Just _v)
                                    -> (Data.Monoid.<>)
                                         (Data.ProtoLens.Encoding.Bytes.putVarInt 56)
                                         ((Prelude..)
                                            Data.ProtoLens.Encoding.Bytes.putVarInt
                                            Prelude.fromIntegral _v))
                               ((Data.Monoid.<>)
                                  (case
                                       Lens.Family2.view
                                         (Data.ProtoLens.Field.field @"maybe'timecodeMinutes") _x
                                   of
                                     Prelude.Nothing -> Data.Monoid.mempty
                                     (Prelude.Just _v)
                                       -> (Data.Monoid.<>)
                                            (Data.ProtoLens.Encoding.Bytes.putVarInt 64)
                                            ((Prelude..)
                                               Data.ProtoLens.Encoding.Bytes.putVarInt
                                               Prelude.fromIntegral _v))
                                  ((Data.Monoid.<>)
                                     (case
                                          Lens.Family2.view
                                            (Data.ProtoLens.Field.field @"maybe'timecodeSeconds") _x
                                      of
                                        Prelude.Nothing -> Data.Monoid.mempty
                                        (Prelude.Just _v)
                                          -> (Data.Monoid.<>)
                                               (Data.ProtoLens.Encoding.Bytes.putVarInt 72)
                                               ((Prelude..)
                                                  Data.ProtoLens.Encoding.Bytes.putVarInt
                                                  Prelude.fromIntegral _v))
                                     ((Data.Monoid.<>)
                                        (case
                                             Lens.Family2.view
                                               (Data.ProtoLens.Field.field @"maybe'timecodeType") _x
                                         of
                                           Prelude.Nothing -> Data.Monoid.mempty
                                           (Prelude.Just _v)
                                             -> (Data.Monoid.<>)
                                                  (Data.ProtoLens.Encoding.Bytes.putVarInt 80)
                                                  ((Prelude..)
                                                     Data.ProtoLens.Encoding.Bytes.putVarInt
                                                     Prelude.fromIntegral _v))
                                        ((Data.Monoid.<>)
                                           (case
                                                Lens.Family2.view
                                                  (Data.ProtoLens.Field.field
                                                     @"maybe'timecodeUserbits0")
                                                  _x
                                            of
                                              Prelude.Nothing -> Data.Monoid.mempty
                                              (Prelude.Just _v)
                                                -> (Data.Monoid.<>)
                                                     (Data.ProtoLens.Encoding.Bytes.putVarInt 88)
                                                     ((Prelude..)
                                                        Data.ProtoLens.Encoding.Bytes.putVarInt
                                                        Prelude.fromIntegral _v))
                                           ((Data.Monoid.<>)
                                              (case
                                                   Lens.Family2.view
                                                     (Data.ProtoLens.Field.field
                                                        @"maybe'timecodeUserbits1")
                                                     _x
                                               of
                                                 Prelude.Nothing -> Data.Monoid.mempty
                                                 (Prelude.Just _v)
                                                   -> (Data.Monoid.<>)
                                                        (Data.ProtoLens.Encoding.Bytes.putVarInt 96)
                                                        ((Prelude..)
                                                           Data.ProtoLens.Encoding.Bytes.putVarInt
                                                           Prelude.fromIntegral _v))
                                              ((Data.Monoid.<>)
                                                 (case
                                                      Lens.Family2.view
                                                        (Data.ProtoLens.Field.field
                                                           @"maybe'timecodeUserbits2")
                                                        _x
                                                  of
                                                    Prelude.Nothing -> Data.Monoid.mempty
                                                    (Prelude.Just _v)
                                                      -> (Data.Monoid.<>)
                                                           (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                              104)
                                                           ((Prelude..)
                                                              Data.ProtoLens.Encoding.Bytes.putVarInt
                                                              Prelude.fromIntegral _v))
                                                 ((Data.Monoid.<>)
                                                    (case
                                                         Lens.Family2.view
                                                           (Data.ProtoLens.Field.field
                                                              @"maybe'timecodeUserbits3")
                                                           _x
                                                     of
                                                       Prelude.Nothing -> Data.Monoid.mempty
                                                       (Prelude.Just _v)
                                                         -> (Data.Monoid.<>)
                                                              (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                 112)
                                                              ((Prelude..)
                                                                 Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                 Prelude.fromIntegral _v))
                                                    ((Data.Monoid.<>)
                                                       (case
                                                            Lens.Family2.view
                                                              (Data.ProtoLens.Field.field
                                                                 @"maybe'timestamp")
                                                              _x
                                                        of
                                                          Prelude.Nothing -> Data.Monoid.mempty
                                                          (Prelude.Just _v)
                                                            -> (Data.Monoid.<>)
                                                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                    120)
                                                                 ((Prelude..)
                                                                    Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                    Prelude.fromIntegral _v))
                                                       (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                                          (Lens.Family2.view
                                                             Data.ProtoLens.unknownFields
                                                             _x))))))))))))))))
instance Control.DeepSeq.NFData Vb2V4l2BufQueueFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Vb2V4l2BufQueueFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Vb2V4l2BufQueueFtraceEvent'field x__)
                (Control.DeepSeq.deepseq
                   (_Vb2V4l2BufQueueFtraceEvent'flags x__)
                   (Control.DeepSeq.deepseq
                      (_Vb2V4l2BufQueueFtraceEvent'minor x__)
                      (Control.DeepSeq.deepseq
                         (_Vb2V4l2BufQueueFtraceEvent'sequence x__)
                         (Control.DeepSeq.deepseq
                            (_Vb2V4l2BufQueueFtraceEvent'timecodeFlags x__)
                            (Control.DeepSeq.deepseq
                               (_Vb2V4l2BufQueueFtraceEvent'timecodeFrames x__)
                               (Control.DeepSeq.deepseq
                                  (_Vb2V4l2BufQueueFtraceEvent'timecodeHours x__)
                                  (Control.DeepSeq.deepseq
                                     (_Vb2V4l2BufQueueFtraceEvent'timecodeMinutes x__)
                                     (Control.DeepSeq.deepseq
                                        (_Vb2V4l2BufQueueFtraceEvent'timecodeSeconds x__)
                                        (Control.DeepSeq.deepseq
                                           (_Vb2V4l2BufQueueFtraceEvent'timecodeType x__)
                                           (Control.DeepSeq.deepseq
                                              (_Vb2V4l2BufQueueFtraceEvent'timecodeUserbits0 x__)
                                              (Control.DeepSeq.deepseq
                                                 (_Vb2V4l2BufQueueFtraceEvent'timecodeUserbits1 x__)
                                                 (Control.DeepSeq.deepseq
                                                    (_Vb2V4l2BufQueueFtraceEvent'timecodeUserbits2
                                                       x__)
                                                    (Control.DeepSeq.deepseq
                                                       (_Vb2V4l2BufQueueFtraceEvent'timecodeUserbits3
                                                          x__)
                                                       (Control.DeepSeq.deepseq
                                                          (_Vb2V4l2BufQueueFtraceEvent'timestamp
                                                             x__)
                                                          ())))))))))))))))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.V4l2_Fields.field' @:: Lens' Vb2V4l2DqbufFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.V4l2_Fields.maybe'field' @:: Lens' Vb2V4l2DqbufFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.V4l2_Fields.flags' @:: Lens' Vb2V4l2DqbufFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.V4l2_Fields.maybe'flags' @:: Lens' Vb2V4l2DqbufFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.V4l2_Fields.minor' @:: Lens' Vb2V4l2DqbufFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.V4l2_Fields.maybe'minor' @:: Lens' Vb2V4l2DqbufFtraceEvent (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.V4l2_Fields.sequence' @:: Lens' Vb2V4l2DqbufFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.V4l2_Fields.maybe'sequence' @:: Lens' Vb2V4l2DqbufFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.V4l2_Fields.timecodeFlags' @:: Lens' Vb2V4l2DqbufFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.V4l2_Fields.maybe'timecodeFlags' @:: Lens' Vb2V4l2DqbufFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.V4l2_Fields.timecodeFrames' @:: Lens' Vb2V4l2DqbufFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.V4l2_Fields.maybe'timecodeFrames' @:: Lens' Vb2V4l2DqbufFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.V4l2_Fields.timecodeHours' @:: Lens' Vb2V4l2DqbufFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.V4l2_Fields.maybe'timecodeHours' @:: Lens' Vb2V4l2DqbufFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.V4l2_Fields.timecodeMinutes' @:: Lens' Vb2V4l2DqbufFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.V4l2_Fields.maybe'timecodeMinutes' @:: Lens' Vb2V4l2DqbufFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.V4l2_Fields.timecodeSeconds' @:: Lens' Vb2V4l2DqbufFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.V4l2_Fields.maybe'timecodeSeconds' @:: Lens' Vb2V4l2DqbufFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.V4l2_Fields.timecodeType' @:: Lens' Vb2V4l2DqbufFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.V4l2_Fields.maybe'timecodeType' @:: Lens' Vb2V4l2DqbufFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.V4l2_Fields.timecodeUserbits0' @:: Lens' Vb2V4l2DqbufFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.V4l2_Fields.maybe'timecodeUserbits0' @:: Lens' Vb2V4l2DqbufFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.V4l2_Fields.timecodeUserbits1' @:: Lens' Vb2V4l2DqbufFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.V4l2_Fields.maybe'timecodeUserbits1' @:: Lens' Vb2V4l2DqbufFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.V4l2_Fields.timecodeUserbits2' @:: Lens' Vb2V4l2DqbufFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.V4l2_Fields.maybe'timecodeUserbits2' @:: Lens' Vb2V4l2DqbufFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.V4l2_Fields.timecodeUserbits3' @:: Lens' Vb2V4l2DqbufFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.V4l2_Fields.maybe'timecodeUserbits3' @:: Lens' Vb2V4l2DqbufFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.V4l2_Fields.timestamp' @:: Lens' Vb2V4l2DqbufFtraceEvent Data.Int.Int64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.V4l2_Fields.maybe'timestamp' @:: Lens' Vb2V4l2DqbufFtraceEvent (Prelude.Maybe Data.Int.Int64)@ -}
data Vb2V4l2DqbufFtraceEvent
  = Vb2V4l2DqbufFtraceEvent'_constructor {_Vb2V4l2DqbufFtraceEvent'field :: !(Prelude.Maybe Data.Word.Word32),
                                          _Vb2V4l2DqbufFtraceEvent'flags :: !(Prelude.Maybe Data.Word.Word32),
                                          _Vb2V4l2DqbufFtraceEvent'minor :: !(Prelude.Maybe Data.Int.Int32),
                                          _Vb2V4l2DqbufFtraceEvent'sequence :: !(Prelude.Maybe Data.Word.Word32),
                                          _Vb2V4l2DqbufFtraceEvent'timecodeFlags :: !(Prelude.Maybe Data.Word.Word32),
                                          _Vb2V4l2DqbufFtraceEvent'timecodeFrames :: !(Prelude.Maybe Data.Word.Word32),
                                          _Vb2V4l2DqbufFtraceEvent'timecodeHours :: !(Prelude.Maybe Data.Word.Word32),
                                          _Vb2V4l2DqbufFtraceEvent'timecodeMinutes :: !(Prelude.Maybe Data.Word.Word32),
                                          _Vb2V4l2DqbufFtraceEvent'timecodeSeconds :: !(Prelude.Maybe Data.Word.Word32),
                                          _Vb2V4l2DqbufFtraceEvent'timecodeType :: !(Prelude.Maybe Data.Word.Word32),
                                          _Vb2V4l2DqbufFtraceEvent'timecodeUserbits0 :: !(Prelude.Maybe Data.Word.Word32),
                                          _Vb2V4l2DqbufFtraceEvent'timecodeUserbits1 :: !(Prelude.Maybe Data.Word.Word32),
                                          _Vb2V4l2DqbufFtraceEvent'timecodeUserbits2 :: !(Prelude.Maybe Data.Word.Word32),
                                          _Vb2V4l2DqbufFtraceEvent'timecodeUserbits3 :: !(Prelude.Maybe Data.Word.Word32),
                                          _Vb2V4l2DqbufFtraceEvent'timestamp :: !(Prelude.Maybe Data.Int.Int64),
                                          _Vb2V4l2DqbufFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Vb2V4l2DqbufFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Vb2V4l2DqbufFtraceEvent "field" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Vb2V4l2DqbufFtraceEvent'field
           (\ x__ y__ -> x__ {_Vb2V4l2DqbufFtraceEvent'field = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField Vb2V4l2DqbufFtraceEvent "maybe'field" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Vb2V4l2DqbufFtraceEvent'field
           (\ x__ y__ -> x__ {_Vb2V4l2DqbufFtraceEvent'field = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Vb2V4l2DqbufFtraceEvent "flags" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Vb2V4l2DqbufFtraceEvent'flags
           (\ x__ y__ -> x__ {_Vb2V4l2DqbufFtraceEvent'flags = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField Vb2V4l2DqbufFtraceEvent "maybe'flags" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Vb2V4l2DqbufFtraceEvent'flags
           (\ x__ y__ -> x__ {_Vb2V4l2DqbufFtraceEvent'flags = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Vb2V4l2DqbufFtraceEvent "minor" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Vb2V4l2DqbufFtraceEvent'minor
           (\ x__ y__ -> x__ {_Vb2V4l2DqbufFtraceEvent'minor = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField Vb2V4l2DqbufFtraceEvent "maybe'minor" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Vb2V4l2DqbufFtraceEvent'minor
           (\ x__ y__ -> x__ {_Vb2V4l2DqbufFtraceEvent'minor = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Vb2V4l2DqbufFtraceEvent "sequence" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Vb2V4l2DqbufFtraceEvent'sequence
           (\ x__ y__ -> x__ {_Vb2V4l2DqbufFtraceEvent'sequence = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField Vb2V4l2DqbufFtraceEvent "maybe'sequence" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Vb2V4l2DqbufFtraceEvent'sequence
           (\ x__ y__ -> x__ {_Vb2V4l2DqbufFtraceEvent'sequence = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Vb2V4l2DqbufFtraceEvent "timecodeFlags" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Vb2V4l2DqbufFtraceEvent'timecodeFlags
           (\ x__ y__ -> x__ {_Vb2V4l2DqbufFtraceEvent'timecodeFlags = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField Vb2V4l2DqbufFtraceEvent "maybe'timecodeFlags" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Vb2V4l2DqbufFtraceEvent'timecodeFlags
           (\ x__ y__ -> x__ {_Vb2V4l2DqbufFtraceEvent'timecodeFlags = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Vb2V4l2DqbufFtraceEvent "timecodeFrames" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Vb2V4l2DqbufFtraceEvent'timecodeFrames
           (\ x__ y__ -> x__ {_Vb2V4l2DqbufFtraceEvent'timecodeFrames = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField Vb2V4l2DqbufFtraceEvent "maybe'timecodeFrames" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Vb2V4l2DqbufFtraceEvent'timecodeFrames
           (\ x__ y__ -> x__ {_Vb2V4l2DqbufFtraceEvent'timecodeFrames = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Vb2V4l2DqbufFtraceEvent "timecodeHours" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Vb2V4l2DqbufFtraceEvent'timecodeHours
           (\ x__ y__ -> x__ {_Vb2V4l2DqbufFtraceEvent'timecodeHours = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField Vb2V4l2DqbufFtraceEvent "maybe'timecodeHours" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Vb2V4l2DqbufFtraceEvent'timecodeHours
           (\ x__ y__ -> x__ {_Vb2V4l2DqbufFtraceEvent'timecodeHours = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Vb2V4l2DqbufFtraceEvent "timecodeMinutes" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Vb2V4l2DqbufFtraceEvent'timecodeMinutes
           (\ x__ y__
              -> x__ {_Vb2V4l2DqbufFtraceEvent'timecodeMinutes = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField Vb2V4l2DqbufFtraceEvent "maybe'timecodeMinutes" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Vb2V4l2DqbufFtraceEvent'timecodeMinutes
           (\ x__ y__
              -> x__ {_Vb2V4l2DqbufFtraceEvent'timecodeMinutes = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Vb2V4l2DqbufFtraceEvent "timecodeSeconds" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Vb2V4l2DqbufFtraceEvent'timecodeSeconds
           (\ x__ y__
              -> x__ {_Vb2V4l2DqbufFtraceEvent'timecodeSeconds = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField Vb2V4l2DqbufFtraceEvent "maybe'timecodeSeconds" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Vb2V4l2DqbufFtraceEvent'timecodeSeconds
           (\ x__ y__
              -> x__ {_Vb2V4l2DqbufFtraceEvent'timecodeSeconds = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Vb2V4l2DqbufFtraceEvent "timecodeType" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Vb2V4l2DqbufFtraceEvent'timecodeType
           (\ x__ y__ -> x__ {_Vb2V4l2DqbufFtraceEvent'timecodeType = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField Vb2V4l2DqbufFtraceEvent "maybe'timecodeType" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Vb2V4l2DqbufFtraceEvent'timecodeType
           (\ x__ y__ -> x__ {_Vb2V4l2DqbufFtraceEvent'timecodeType = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Vb2V4l2DqbufFtraceEvent "timecodeUserbits0" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Vb2V4l2DqbufFtraceEvent'timecodeUserbits0
           (\ x__ y__
              -> x__ {_Vb2V4l2DqbufFtraceEvent'timecodeUserbits0 = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField Vb2V4l2DqbufFtraceEvent "maybe'timecodeUserbits0" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Vb2V4l2DqbufFtraceEvent'timecodeUserbits0
           (\ x__ y__
              -> x__ {_Vb2V4l2DqbufFtraceEvent'timecodeUserbits0 = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Vb2V4l2DqbufFtraceEvent "timecodeUserbits1" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Vb2V4l2DqbufFtraceEvent'timecodeUserbits1
           (\ x__ y__
              -> x__ {_Vb2V4l2DqbufFtraceEvent'timecodeUserbits1 = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField Vb2V4l2DqbufFtraceEvent "maybe'timecodeUserbits1" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Vb2V4l2DqbufFtraceEvent'timecodeUserbits1
           (\ x__ y__
              -> x__ {_Vb2V4l2DqbufFtraceEvent'timecodeUserbits1 = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Vb2V4l2DqbufFtraceEvent "timecodeUserbits2" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Vb2V4l2DqbufFtraceEvent'timecodeUserbits2
           (\ x__ y__
              -> x__ {_Vb2V4l2DqbufFtraceEvent'timecodeUserbits2 = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField Vb2V4l2DqbufFtraceEvent "maybe'timecodeUserbits2" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Vb2V4l2DqbufFtraceEvent'timecodeUserbits2
           (\ x__ y__
              -> x__ {_Vb2V4l2DqbufFtraceEvent'timecodeUserbits2 = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Vb2V4l2DqbufFtraceEvent "timecodeUserbits3" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Vb2V4l2DqbufFtraceEvent'timecodeUserbits3
           (\ x__ y__
              -> x__ {_Vb2V4l2DqbufFtraceEvent'timecodeUserbits3 = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField Vb2V4l2DqbufFtraceEvent "maybe'timecodeUserbits3" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Vb2V4l2DqbufFtraceEvent'timecodeUserbits3
           (\ x__ y__
              -> x__ {_Vb2V4l2DqbufFtraceEvent'timecodeUserbits3 = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Vb2V4l2DqbufFtraceEvent "timestamp" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Vb2V4l2DqbufFtraceEvent'timestamp
           (\ x__ y__ -> x__ {_Vb2V4l2DqbufFtraceEvent'timestamp = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField Vb2V4l2DqbufFtraceEvent "maybe'timestamp" (Prelude.Maybe Data.Int.Int64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Vb2V4l2DqbufFtraceEvent'timestamp
           (\ x__ y__ -> x__ {_Vb2V4l2DqbufFtraceEvent'timestamp = y__}))
        Prelude.id
instance Data.ProtoLens.Message Vb2V4l2DqbufFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.Vb2V4l2DqbufFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\ETBVb2V4l2DqbufFtraceEvent\DC2\DC4\n\
      \\ENQfield\CAN\SOH \SOH(\rR\ENQfield\DC2\DC4\n\
      \\ENQflags\CAN\STX \SOH(\rR\ENQflags\DC2\DC4\n\
      \\ENQminor\CAN\ETX \SOH(\ENQR\ENQminor\DC2\SUB\n\
      \\bsequence\CAN\EOT \SOH(\rR\bsequence\DC2%\n\
      \\SOtimecode_flags\CAN\ENQ \SOH(\rR\rtimecodeFlags\DC2'\n\
      \\SItimecode_frames\CAN\ACK \SOH(\rR\SOtimecodeFrames\DC2%\n\
      \\SOtimecode_hours\CAN\a \SOH(\rR\rtimecodeHours\DC2)\n\
      \\DLEtimecode_minutes\CAN\b \SOH(\rR\SItimecodeMinutes\DC2)\n\
      \\DLEtimecode_seconds\CAN\t \SOH(\rR\SItimecodeSeconds\DC2#\n\
      \\rtimecode_type\CAN\n\
      \ \SOH(\rR\ftimecodeType\DC2-\n\
      \\DC2timecode_userbits0\CAN\v \SOH(\rR\DC1timecodeUserbits0\DC2-\n\
      \\DC2timecode_userbits1\CAN\f \SOH(\rR\DC1timecodeUserbits1\DC2-\n\
      \\DC2timecode_userbits2\CAN\r \SOH(\rR\DC1timecodeUserbits2\DC2-\n\
      \\DC2timecode_userbits3\CAN\SO \SOH(\rR\DC1timecodeUserbits3\DC2\FS\n\
      \\ttimestamp\CAN\SI \SOH(\ETXR\ttimestamp"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        field__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "field"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'field")) ::
              Data.ProtoLens.FieldDescriptor Vb2V4l2DqbufFtraceEvent
        flags__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "flags"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'flags")) ::
              Data.ProtoLens.FieldDescriptor Vb2V4l2DqbufFtraceEvent
        minor__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "minor"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'minor")) ::
              Data.ProtoLens.FieldDescriptor Vb2V4l2DqbufFtraceEvent
        sequence__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "sequence"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'sequence")) ::
              Data.ProtoLens.FieldDescriptor Vb2V4l2DqbufFtraceEvent
        timecodeFlags__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "timecode_flags"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'timecodeFlags")) ::
              Data.ProtoLens.FieldDescriptor Vb2V4l2DqbufFtraceEvent
        timecodeFrames__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "timecode_frames"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'timecodeFrames")) ::
              Data.ProtoLens.FieldDescriptor Vb2V4l2DqbufFtraceEvent
        timecodeHours__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "timecode_hours"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'timecodeHours")) ::
              Data.ProtoLens.FieldDescriptor Vb2V4l2DqbufFtraceEvent
        timecodeMinutes__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "timecode_minutes"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'timecodeMinutes")) ::
              Data.ProtoLens.FieldDescriptor Vb2V4l2DqbufFtraceEvent
        timecodeSeconds__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "timecode_seconds"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'timecodeSeconds")) ::
              Data.ProtoLens.FieldDescriptor Vb2V4l2DqbufFtraceEvent
        timecodeType__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "timecode_type"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'timecodeType")) ::
              Data.ProtoLens.FieldDescriptor Vb2V4l2DqbufFtraceEvent
        timecodeUserbits0__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "timecode_userbits0"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'timecodeUserbits0")) ::
              Data.ProtoLens.FieldDescriptor Vb2V4l2DqbufFtraceEvent
        timecodeUserbits1__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "timecode_userbits1"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'timecodeUserbits1")) ::
              Data.ProtoLens.FieldDescriptor Vb2V4l2DqbufFtraceEvent
        timecodeUserbits2__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "timecode_userbits2"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'timecodeUserbits2")) ::
              Data.ProtoLens.FieldDescriptor Vb2V4l2DqbufFtraceEvent
        timecodeUserbits3__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "timecode_userbits3"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'timecodeUserbits3")) ::
              Data.ProtoLens.FieldDescriptor Vb2V4l2DqbufFtraceEvent
        timestamp__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "timestamp"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'timestamp")) ::
              Data.ProtoLens.FieldDescriptor Vb2V4l2DqbufFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, field__field_descriptor),
           (Data.ProtoLens.Tag 2, flags__field_descriptor),
           (Data.ProtoLens.Tag 3, minor__field_descriptor),
           (Data.ProtoLens.Tag 4, sequence__field_descriptor),
           (Data.ProtoLens.Tag 5, timecodeFlags__field_descriptor),
           (Data.ProtoLens.Tag 6, timecodeFrames__field_descriptor),
           (Data.ProtoLens.Tag 7, timecodeHours__field_descriptor),
           (Data.ProtoLens.Tag 8, timecodeMinutes__field_descriptor),
           (Data.ProtoLens.Tag 9, timecodeSeconds__field_descriptor),
           (Data.ProtoLens.Tag 10, timecodeType__field_descriptor),
           (Data.ProtoLens.Tag 11, timecodeUserbits0__field_descriptor),
           (Data.ProtoLens.Tag 12, timecodeUserbits1__field_descriptor),
           (Data.ProtoLens.Tag 13, timecodeUserbits2__field_descriptor),
           (Data.ProtoLens.Tag 14, timecodeUserbits3__field_descriptor),
           (Data.ProtoLens.Tag 15, timestamp__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Vb2V4l2DqbufFtraceEvent'_unknownFields
        (\ x__ y__ -> x__ {_Vb2V4l2DqbufFtraceEvent'_unknownFields = y__})
  defMessage
    = Vb2V4l2DqbufFtraceEvent'_constructor
        {_Vb2V4l2DqbufFtraceEvent'field = Prelude.Nothing,
         _Vb2V4l2DqbufFtraceEvent'flags = Prelude.Nothing,
         _Vb2V4l2DqbufFtraceEvent'minor = Prelude.Nothing,
         _Vb2V4l2DqbufFtraceEvent'sequence = Prelude.Nothing,
         _Vb2V4l2DqbufFtraceEvent'timecodeFlags = Prelude.Nothing,
         _Vb2V4l2DqbufFtraceEvent'timecodeFrames = Prelude.Nothing,
         _Vb2V4l2DqbufFtraceEvent'timecodeHours = Prelude.Nothing,
         _Vb2V4l2DqbufFtraceEvent'timecodeMinutes = Prelude.Nothing,
         _Vb2V4l2DqbufFtraceEvent'timecodeSeconds = Prelude.Nothing,
         _Vb2V4l2DqbufFtraceEvent'timecodeType = Prelude.Nothing,
         _Vb2V4l2DqbufFtraceEvent'timecodeUserbits0 = Prelude.Nothing,
         _Vb2V4l2DqbufFtraceEvent'timecodeUserbits1 = Prelude.Nothing,
         _Vb2V4l2DqbufFtraceEvent'timecodeUserbits2 = Prelude.Nothing,
         _Vb2V4l2DqbufFtraceEvent'timecodeUserbits3 = Prelude.Nothing,
         _Vb2V4l2DqbufFtraceEvent'timestamp = Prelude.Nothing,
         _Vb2V4l2DqbufFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          Vb2V4l2DqbufFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser Vb2V4l2DqbufFtraceEvent
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
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
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        8 -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "field"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"field") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "flags"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"flags") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "minor"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"minor") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "sequence"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"sequence") y x)
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "timecode_flags"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"timecodeFlags") y x)
                        48
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "timecode_frames"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"timecodeFrames") y x)
                        56
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "timecode_hours"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"timecodeHours") y x)
                        64
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "timecode_minutes"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"timecodeMinutes") y x)
                        72
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "timecode_seconds"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"timecodeSeconds") y x)
                        80
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "timecode_type"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"timecodeType") y x)
                        88
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "timecode_userbits0"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"timecodeUserbits0") y x)
                        96
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "timecode_userbits1"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"timecodeUserbits1") y x)
                        104
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "timecode_userbits2"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"timecodeUserbits2") y x)
                        112
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "timecode_userbits3"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"timecodeUserbits3") y x)
                        120
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "timestamp"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"timestamp") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Vb2V4l2DqbufFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'field") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       ((Prelude..)
                          Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'flags") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          ((Prelude..)
                             Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'minor") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             ((Prelude..)
                                Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'sequence") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                                ((Prelude..)
                                   Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                      ((Data.Monoid.<>)
                         (case
                              Lens.Family2.view
                                (Data.ProtoLens.Field.field @"maybe'timecodeFlags") _x
                          of
                            Prelude.Nothing -> Data.Monoid.mempty
                            (Prelude.Just _v)
                              -> (Data.Monoid.<>)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt 40)
                                   ((Prelude..)
                                      Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral
                                      _v))
                         ((Data.Monoid.<>)
                            (case
                                 Lens.Family2.view
                                   (Data.ProtoLens.Field.field @"maybe'timecodeFrames") _x
                             of
                               Prelude.Nothing -> Data.Monoid.mempty
                               (Prelude.Just _v)
                                 -> (Data.Monoid.<>)
                                      (Data.ProtoLens.Encoding.Bytes.putVarInt 48)
                                      ((Prelude..)
                                         Data.ProtoLens.Encoding.Bytes.putVarInt
                                         Prelude.fromIntegral _v))
                            ((Data.Monoid.<>)
                               (case
                                    Lens.Family2.view
                                      (Data.ProtoLens.Field.field @"maybe'timecodeHours") _x
                                of
                                  Prelude.Nothing -> Data.Monoid.mempty
                                  (Prelude.Just _v)
                                    -> (Data.Monoid.<>)
                                         (Data.ProtoLens.Encoding.Bytes.putVarInt 56)
                                         ((Prelude..)
                                            Data.ProtoLens.Encoding.Bytes.putVarInt
                                            Prelude.fromIntegral _v))
                               ((Data.Monoid.<>)
                                  (case
                                       Lens.Family2.view
                                         (Data.ProtoLens.Field.field @"maybe'timecodeMinutes") _x
                                   of
                                     Prelude.Nothing -> Data.Monoid.mempty
                                     (Prelude.Just _v)
                                       -> (Data.Monoid.<>)
                                            (Data.ProtoLens.Encoding.Bytes.putVarInt 64)
                                            ((Prelude..)
                                               Data.ProtoLens.Encoding.Bytes.putVarInt
                                               Prelude.fromIntegral _v))
                                  ((Data.Monoid.<>)
                                     (case
                                          Lens.Family2.view
                                            (Data.ProtoLens.Field.field @"maybe'timecodeSeconds") _x
                                      of
                                        Prelude.Nothing -> Data.Monoid.mempty
                                        (Prelude.Just _v)
                                          -> (Data.Monoid.<>)
                                               (Data.ProtoLens.Encoding.Bytes.putVarInt 72)
                                               ((Prelude..)
                                                  Data.ProtoLens.Encoding.Bytes.putVarInt
                                                  Prelude.fromIntegral _v))
                                     ((Data.Monoid.<>)
                                        (case
                                             Lens.Family2.view
                                               (Data.ProtoLens.Field.field @"maybe'timecodeType") _x
                                         of
                                           Prelude.Nothing -> Data.Monoid.mempty
                                           (Prelude.Just _v)
                                             -> (Data.Monoid.<>)
                                                  (Data.ProtoLens.Encoding.Bytes.putVarInt 80)
                                                  ((Prelude..)
                                                     Data.ProtoLens.Encoding.Bytes.putVarInt
                                                     Prelude.fromIntegral _v))
                                        ((Data.Monoid.<>)
                                           (case
                                                Lens.Family2.view
                                                  (Data.ProtoLens.Field.field
                                                     @"maybe'timecodeUserbits0")
                                                  _x
                                            of
                                              Prelude.Nothing -> Data.Monoid.mempty
                                              (Prelude.Just _v)
                                                -> (Data.Monoid.<>)
                                                     (Data.ProtoLens.Encoding.Bytes.putVarInt 88)
                                                     ((Prelude..)
                                                        Data.ProtoLens.Encoding.Bytes.putVarInt
                                                        Prelude.fromIntegral _v))
                                           ((Data.Monoid.<>)
                                              (case
                                                   Lens.Family2.view
                                                     (Data.ProtoLens.Field.field
                                                        @"maybe'timecodeUserbits1")
                                                     _x
                                               of
                                                 Prelude.Nothing -> Data.Monoid.mempty
                                                 (Prelude.Just _v)
                                                   -> (Data.Monoid.<>)
                                                        (Data.ProtoLens.Encoding.Bytes.putVarInt 96)
                                                        ((Prelude..)
                                                           Data.ProtoLens.Encoding.Bytes.putVarInt
                                                           Prelude.fromIntegral _v))
                                              ((Data.Monoid.<>)
                                                 (case
                                                      Lens.Family2.view
                                                        (Data.ProtoLens.Field.field
                                                           @"maybe'timecodeUserbits2")
                                                        _x
                                                  of
                                                    Prelude.Nothing -> Data.Monoid.mempty
                                                    (Prelude.Just _v)
                                                      -> (Data.Monoid.<>)
                                                           (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                              104)
                                                           ((Prelude..)
                                                              Data.ProtoLens.Encoding.Bytes.putVarInt
                                                              Prelude.fromIntegral _v))
                                                 ((Data.Monoid.<>)
                                                    (case
                                                         Lens.Family2.view
                                                           (Data.ProtoLens.Field.field
                                                              @"maybe'timecodeUserbits3")
                                                           _x
                                                     of
                                                       Prelude.Nothing -> Data.Monoid.mempty
                                                       (Prelude.Just _v)
                                                         -> (Data.Monoid.<>)
                                                              (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                 112)
                                                              ((Prelude..)
                                                                 Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                 Prelude.fromIntegral _v))
                                                    ((Data.Monoid.<>)
                                                       (case
                                                            Lens.Family2.view
                                                              (Data.ProtoLens.Field.field
                                                                 @"maybe'timestamp")
                                                              _x
                                                        of
                                                          Prelude.Nothing -> Data.Monoid.mempty
                                                          (Prelude.Just _v)
                                                            -> (Data.Monoid.<>)
                                                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                    120)
                                                                 ((Prelude..)
                                                                    Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                    Prelude.fromIntegral _v))
                                                       (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                                          (Lens.Family2.view
                                                             Data.ProtoLens.unknownFields
                                                             _x))))))))))))))))
instance Control.DeepSeq.NFData Vb2V4l2DqbufFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Vb2V4l2DqbufFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Vb2V4l2DqbufFtraceEvent'field x__)
                (Control.DeepSeq.deepseq
                   (_Vb2V4l2DqbufFtraceEvent'flags x__)
                   (Control.DeepSeq.deepseq
                      (_Vb2V4l2DqbufFtraceEvent'minor x__)
                      (Control.DeepSeq.deepseq
                         (_Vb2V4l2DqbufFtraceEvent'sequence x__)
                         (Control.DeepSeq.deepseq
                            (_Vb2V4l2DqbufFtraceEvent'timecodeFlags x__)
                            (Control.DeepSeq.deepseq
                               (_Vb2V4l2DqbufFtraceEvent'timecodeFrames x__)
                               (Control.DeepSeq.deepseq
                                  (_Vb2V4l2DqbufFtraceEvent'timecodeHours x__)
                                  (Control.DeepSeq.deepseq
                                     (_Vb2V4l2DqbufFtraceEvent'timecodeMinutes x__)
                                     (Control.DeepSeq.deepseq
                                        (_Vb2V4l2DqbufFtraceEvent'timecodeSeconds x__)
                                        (Control.DeepSeq.deepseq
                                           (_Vb2V4l2DqbufFtraceEvent'timecodeType x__)
                                           (Control.DeepSeq.deepseq
                                              (_Vb2V4l2DqbufFtraceEvent'timecodeUserbits0 x__)
                                              (Control.DeepSeq.deepseq
                                                 (_Vb2V4l2DqbufFtraceEvent'timecodeUserbits1 x__)
                                                 (Control.DeepSeq.deepseq
                                                    (_Vb2V4l2DqbufFtraceEvent'timecodeUserbits2 x__)
                                                    (Control.DeepSeq.deepseq
                                                       (_Vb2V4l2DqbufFtraceEvent'timecodeUserbits3
                                                          x__)
                                                       (Control.DeepSeq.deepseq
                                                          (_Vb2V4l2DqbufFtraceEvent'timestamp x__)
                                                          ())))))))))))))))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.V4l2_Fields.field' @:: Lens' Vb2V4l2QbufFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.V4l2_Fields.maybe'field' @:: Lens' Vb2V4l2QbufFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.V4l2_Fields.flags' @:: Lens' Vb2V4l2QbufFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.V4l2_Fields.maybe'flags' @:: Lens' Vb2V4l2QbufFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.V4l2_Fields.minor' @:: Lens' Vb2V4l2QbufFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.V4l2_Fields.maybe'minor' @:: Lens' Vb2V4l2QbufFtraceEvent (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.V4l2_Fields.sequence' @:: Lens' Vb2V4l2QbufFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.V4l2_Fields.maybe'sequence' @:: Lens' Vb2V4l2QbufFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.V4l2_Fields.timecodeFlags' @:: Lens' Vb2V4l2QbufFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.V4l2_Fields.maybe'timecodeFlags' @:: Lens' Vb2V4l2QbufFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.V4l2_Fields.timecodeFrames' @:: Lens' Vb2V4l2QbufFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.V4l2_Fields.maybe'timecodeFrames' @:: Lens' Vb2V4l2QbufFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.V4l2_Fields.timecodeHours' @:: Lens' Vb2V4l2QbufFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.V4l2_Fields.maybe'timecodeHours' @:: Lens' Vb2V4l2QbufFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.V4l2_Fields.timecodeMinutes' @:: Lens' Vb2V4l2QbufFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.V4l2_Fields.maybe'timecodeMinutes' @:: Lens' Vb2V4l2QbufFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.V4l2_Fields.timecodeSeconds' @:: Lens' Vb2V4l2QbufFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.V4l2_Fields.maybe'timecodeSeconds' @:: Lens' Vb2V4l2QbufFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.V4l2_Fields.timecodeType' @:: Lens' Vb2V4l2QbufFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.V4l2_Fields.maybe'timecodeType' @:: Lens' Vb2V4l2QbufFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.V4l2_Fields.timecodeUserbits0' @:: Lens' Vb2V4l2QbufFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.V4l2_Fields.maybe'timecodeUserbits0' @:: Lens' Vb2V4l2QbufFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.V4l2_Fields.timecodeUserbits1' @:: Lens' Vb2V4l2QbufFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.V4l2_Fields.maybe'timecodeUserbits1' @:: Lens' Vb2V4l2QbufFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.V4l2_Fields.timecodeUserbits2' @:: Lens' Vb2V4l2QbufFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.V4l2_Fields.maybe'timecodeUserbits2' @:: Lens' Vb2V4l2QbufFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.V4l2_Fields.timecodeUserbits3' @:: Lens' Vb2V4l2QbufFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.V4l2_Fields.maybe'timecodeUserbits3' @:: Lens' Vb2V4l2QbufFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.V4l2_Fields.timestamp' @:: Lens' Vb2V4l2QbufFtraceEvent Data.Int.Int64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.V4l2_Fields.maybe'timestamp' @:: Lens' Vb2V4l2QbufFtraceEvent (Prelude.Maybe Data.Int.Int64)@ -}
data Vb2V4l2QbufFtraceEvent
  = Vb2V4l2QbufFtraceEvent'_constructor {_Vb2V4l2QbufFtraceEvent'field :: !(Prelude.Maybe Data.Word.Word32),
                                         _Vb2V4l2QbufFtraceEvent'flags :: !(Prelude.Maybe Data.Word.Word32),
                                         _Vb2V4l2QbufFtraceEvent'minor :: !(Prelude.Maybe Data.Int.Int32),
                                         _Vb2V4l2QbufFtraceEvent'sequence :: !(Prelude.Maybe Data.Word.Word32),
                                         _Vb2V4l2QbufFtraceEvent'timecodeFlags :: !(Prelude.Maybe Data.Word.Word32),
                                         _Vb2V4l2QbufFtraceEvent'timecodeFrames :: !(Prelude.Maybe Data.Word.Word32),
                                         _Vb2V4l2QbufFtraceEvent'timecodeHours :: !(Prelude.Maybe Data.Word.Word32),
                                         _Vb2V4l2QbufFtraceEvent'timecodeMinutes :: !(Prelude.Maybe Data.Word.Word32),
                                         _Vb2V4l2QbufFtraceEvent'timecodeSeconds :: !(Prelude.Maybe Data.Word.Word32),
                                         _Vb2V4l2QbufFtraceEvent'timecodeType :: !(Prelude.Maybe Data.Word.Word32),
                                         _Vb2V4l2QbufFtraceEvent'timecodeUserbits0 :: !(Prelude.Maybe Data.Word.Word32),
                                         _Vb2V4l2QbufFtraceEvent'timecodeUserbits1 :: !(Prelude.Maybe Data.Word.Word32),
                                         _Vb2V4l2QbufFtraceEvent'timecodeUserbits2 :: !(Prelude.Maybe Data.Word.Word32),
                                         _Vb2V4l2QbufFtraceEvent'timecodeUserbits3 :: !(Prelude.Maybe Data.Word.Word32),
                                         _Vb2V4l2QbufFtraceEvent'timestamp :: !(Prelude.Maybe Data.Int.Int64),
                                         _Vb2V4l2QbufFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Vb2V4l2QbufFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Vb2V4l2QbufFtraceEvent "field" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Vb2V4l2QbufFtraceEvent'field
           (\ x__ y__ -> x__ {_Vb2V4l2QbufFtraceEvent'field = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField Vb2V4l2QbufFtraceEvent "maybe'field" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Vb2V4l2QbufFtraceEvent'field
           (\ x__ y__ -> x__ {_Vb2V4l2QbufFtraceEvent'field = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Vb2V4l2QbufFtraceEvent "flags" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Vb2V4l2QbufFtraceEvent'flags
           (\ x__ y__ -> x__ {_Vb2V4l2QbufFtraceEvent'flags = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField Vb2V4l2QbufFtraceEvent "maybe'flags" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Vb2V4l2QbufFtraceEvent'flags
           (\ x__ y__ -> x__ {_Vb2V4l2QbufFtraceEvent'flags = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Vb2V4l2QbufFtraceEvent "minor" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Vb2V4l2QbufFtraceEvent'minor
           (\ x__ y__ -> x__ {_Vb2V4l2QbufFtraceEvent'minor = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField Vb2V4l2QbufFtraceEvent "maybe'minor" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Vb2V4l2QbufFtraceEvent'minor
           (\ x__ y__ -> x__ {_Vb2V4l2QbufFtraceEvent'minor = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Vb2V4l2QbufFtraceEvent "sequence" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Vb2V4l2QbufFtraceEvent'sequence
           (\ x__ y__ -> x__ {_Vb2V4l2QbufFtraceEvent'sequence = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField Vb2V4l2QbufFtraceEvent "maybe'sequence" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Vb2V4l2QbufFtraceEvent'sequence
           (\ x__ y__ -> x__ {_Vb2V4l2QbufFtraceEvent'sequence = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Vb2V4l2QbufFtraceEvent "timecodeFlags" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Vb2V4l2QbufFtraceEvent'timecodeFlags
           (\ x__ y__ -> x__ {_Vb2V4l2QbufFtraceEvent'timecodeFlags = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField Vb2V4l2QbufFtraceEvent "maybe'timecodeFlags" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Vb2V4l2QbufFtraceEvent'timecodeFlags
           (\ x__ y__ -> x__ {_Vb2V4l2QbufFtraceEvent'timecodeFlags = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Vb2V4l2QbufFtraceEvent "timecodeFrames" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Vb2V4l2QbufFtraceEvent'timecodeFrames
           (\ x__ y__ -> x__ {_Vb2V4l2QbufFtraceEvent'timecodeFrames = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField Vb2V4l2QbufFtraceEvent "maybe'timecodeFrames" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Vb2V4l2QbufFtraceEvent'timecodeFrames
           (\ x__ y__ -> x__ {_Vb2V4l2QbufFtraceEvent'timecodeFrames = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Vb2V4l2QbufFtraceEvent "timecodeHours" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Vb2V4l2QbufFtraceEvent'timecodeHours
           (\ x__ y__ -> x__ {_Vb2V4l2QbufFtraceEvent'timecodeHours = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField Vb2V4l2QbufFtraceEvent "maybe'timecodeHours" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Vb2V4l2QbufFtraceEvent'timecodeHours
           (\ x__ y__ -> x__ {_Vb2V4l2QbufFtraceEvent'timecodeHours = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Vb2V4l2QbufFtraceEvent "timecodeMinutes" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Vb2V4l2QbufFtraceEvent'timecodeMinutes
           (\ x__ y__ -> x__ {_Vb2V4l2QbufFtraceEvent'timecodeMinutes = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField Vb2V4l2QbufFtraceEvent "maybe'timecodeMinutes" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Vb2V4l2QbufFtraceEvent'timecodeMinutes
           (\ x__ y__ -> x__ {_Vb2V4l2QbufFtraceEvent'timecodeMinutes = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Vb2V4l2QbufFtraceEvent "timecodeSeconds" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Vb2V4l2QbufFtraceEvent'timecodeSeconds
           (\ x__ y__ -> x__ {_Vb2V4l2QbufFtraceEvent'timecodeSeconds = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField Vb2V4l2QbufFtraceEvent "maybe'timecodeSeconds" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Vb2V4l2QbufFtraceEvent'timecodeSeconds
           (\ x__ y__ -> x__ {_Vb2V4l2QbufFtraceEvent'timecodeSeconds = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Vb2V4l2QbufFtraceEvent "timecodeType" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Vb2V4l2QbufFtraceEvent'timecodeType
           (\ x__ y__ -> x__ {_Vb2V4l2QbufFtraceEvent'timecodeType = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField Vb2V4l2QbufFtraceEvent "maybe'timecodeType" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Vb2V4l2QbufFtraceEvent'timecodeType
           (\ x__ y__ -> x__ {_Vb2V4l2QbufFtraceEvent'timecodeType = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Vb2V4l2QbufFtraceEvent "timecodeUserbits0" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Vb2V4l2QbufFtraceEvent'timecodeUserbits0
           (\ x__ y__
              -> x__ {_Vb2V4l2QbufFtraceEvent'timecodeUserbits0 = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField Vb2V4l2QbufFtraceEvent "maybe'timecodeUserbits0" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Vb2V4l2QbufFtraceEvent'timecodeUserbits0
           (\ x__ y__
              -> x__ {_Vb2V4l2QbufFtraceEvent'timecodeUserbits0 = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Vb2V4l2QbufFtraceEvent "timecodeUserbits1" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Vb2V4l2QbufFtraceEvent'timecodeUserbits1
           (\ x__ y__
              -> x__ {_Vb2V4l2QbufFtraceEvent'timecodeUserbits1 = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField Vb2V4l2QbufFtraceEvent "maybe'timecodeUserbits1" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Vb2V4l2QbufFtraceEvent'timecodeUserbits1
           (\ x__ y__
              -> x__ {_Vb2V4l2QbufFtraceEvent'timecodeUserbits1 = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Vb2V4l2QbufFtraceEvent "timecodeUserbits2" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Vb2V4l2QbufFtraceEvent'timecodeUserbits2
           (\ x__ y__
              -> x__ {_Vb2V4l2QbufFtraceEvent'timecodeUserbits2 = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField Vb2V4l2QbufFtraceEvent "maybe'timecodeUserbits2" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Vb2V4l2QbufFtraceEvent'timecodeUserbits2
           (\ x__ y__
              -> x__ {_Vb2V4l2QbufFtraceEvent'timecodeUserbits2 = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Vb2V4l2QbufFtraceEvent "timecodeUserbits3" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Vb2V4l2QbufFtraceEvent'timecodeUserbits3
           (\ x__ y__
              -> x__ {_Vb2V4l2QbufFtraceEvent'timecodeUserbits3 = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField Vb2V4l2QbufFtraceEvent "maybe'timecodeUserbits3" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Vb2V4l2QbufFtraceEvent'timecodeUserbits3
           (\ x__ y__
              -> x__ {_Vb2V4l2QbufFtraceEvent'timecodeUserbits3 = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Vb2V4l2QbufFtraceEvent "timestamp" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Vb2V4l2QbufFtraceEvent'timestamp
           (\ x__ y__ -> x__ {_Vb2V4l2QbufFtraceEvent'timestamp = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField Vb2V4l2QbufFtraceEvent "maybe'timestamp" (Prelude.Maybe Data.Int.Int64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Vb2V4l2QbufFtraceEvent'timestamp
           (\ x__ y__ -> x__ {_Vb2V4l2QbufFtraceEvent'timestamp = y__}))
        Prelude.id
instance Data.ProtoLens.Message Vb2V4l2QbufFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.Vb2V4l2QbufFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\SYNVb2V4l2QbufFtraceEvent\DC2\DC4\n\
      \\ENQfield\CAN\SOH \SOH(\rR\ENQfield\DC2\DC4\n\
      \\ENQflags\CAN\STX \SOH(\rR\ENQflags\DC2\DC4\n\
      \\ENQminor\CAN\ETX \SOH(\ENQR\ENQminor\DC2\SUB\n\
      \\bsequence\CAN\EOT \SOH(\rR\bsequence\DC2%\n\
      \\SOtimecode_flags\CAN\ENQ \SOH(\rR\rtimecodeFlags\DC2'\n\
      \\SItimecode_frames\CAN\ACK \SOH(\rR\SOtimecodeFrames\DC2%\n\
      \\SOtimecode_hours\CAN\a \SOH(\rR\rtimecodeHours\DC2)\n\
      \\DLEtimecode_minutes\CAN\b \SOH(\rR\SItimecodeMinutes\DC2)\n\
      \\DLEtimecode_seconds\CAN\t \SOH(\rR\SItimecodeSeconds\DC2#\n\
      \\rtimecode_type\CAN\n\
      \ \SOH(\rR\ftimecodeType\DC2-\n\
      \\DC2timecode_userbits0\CAN\v \SOH(\rR\DC1timecodeUserbits0\DC2-\n\
      \\DC2timecode_userbits1\CAN\f \SOH(\rR\DC1timecodeUserbits1\DC2-\n\
      \\DC2timecode_userbits2\CAN\r \SOH(\rR\DC1timecodeUserbits2\DC2-\n\
      \\DC2timecode_userbits3\CAN\SO \SOH(\rR\DC1timecodeUserbits3\DC2\FS\n\
      \\ttimestamp\CAN\SI \SOH(\ETXR\ttimestamp"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        field__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "field"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'field")) ::
              Data.ProtoLens.FieldDescriptor Vb2V4l2QbufFtraceEvent
        flags__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "flags"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'flags")) ::
              Data.ProtoLens.FieldDescriptor Vb2V4l2QbufFtraceEvent
        minor__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "minor"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'minor")) ::
              Data.ProtoLens.FieldDescriptor Vb2V4l2QbufFtraceEvent
        sequence__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "sequence"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'sequence")) ::
              Data.ProtoLens.FieldDescriptor Vb2V4l2QbufFtraceEvent
        timecodeFlags__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "timecode_flags"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'timecodeFlags")) ::
              Data.ProtoLens.FieldDescriptor Vb2V4l2QbufFtraceEvent
        timecodeFrames__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "timecode_frames"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'timecodeFrames")) ::
              Data.ProtoLens.FieldDescriptor Vb2V4l2QbufFtraceEvent
        timecodeHours__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "timecode_hours"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'timecodeHours")) ::
              Data.ProtoLens.FieldDescriptor Vb2V4l2QbufFtraceEvent
        timecodeMinutes__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "timecode_minutes"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'timecodeMinutes")) ::
              Data.ProtoLens.FieldDescriptor Vb2V4l2QbufFtraceEvent
        timecodeSeconds__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "timecode_seconds"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'timecodeSeconds")) ::
              Data.ProtoLens.FieldDescriptor Vb2V4l2QbufFtraceEvent
        timecodeType__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "timecode_type"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'timecodeType")) ::
              Data.ProtoLens.FieldDescriptor Vb2V4l2QbufFtraceEvent
        timecodeUserbits0__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "timecode_userbits0"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'timecodeUserbits0")) ::
              Data.ProtoLens.FieldDescriptor Vb2V4l2QbufFtraceEvent
        timecodeUserbits1__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "timecode_userbits1"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'timecodeUserbits1")) ::
              Data.ProtoLens.FieldDescriptor Vb2V4l2QbufFtraceEvent
        timecodeUserbits2__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "timecode_userbits2"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'timecodeUserbits2")) ::
              Data.ProtoLens.FieldDescriptor Vb2V4l2QbufFtraceEvent
        timecodeUserbits3__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "timecode_userbits3"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'timecodeUserbits3")) ::
              Data.ProtoLens.FieldDescriptor Vb2V4l2QbufFtraceEvent
        timestamp__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "timestamp"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'timestamp")) ::
              Data.ProtoLens.FieldDescriptor Vb2V4l2QbufFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, field__field_descriptor),
           (Data.ProtoLens.Tag 2, flags__field_descriptor),
           (Data.ProtoLens.Tag 3, minor__field_descriptor),
           (Data.ProtoLens.Tag 4, sequence__field_descriptor),
           (Data.ProtoLens.Tag 5, timecodeFlags__field_descriptor),
           (Data.ProtoLens.Tag 6, timecodeFrames__field_descriptor),
           (Data.ProtoLens.Tag 7, timecodeHours__field_descriptor),
           (Data.ProtoLens.Tag 8, timecodeMinutes__field_descriptor),
           (Data.ProtoLens.Tag 9, timecodeSeconds__field_descriptor),
           (Data.ProtoLens.Tag 10, timecodeType__field_descriptor),
           (Data.ProtoLens.Tag 11, timecodeUserbits0__field_descriptor),
           (Data.ProtoLens.Tag 12, timecodeUserbits1__field_descriptor),
           (Data.ProtoLens.Tag 13, timecodeUserbits2__field_descriptor),
           (Data.ProtoLens.Tag 14, timecodeUserbits3__field_descriptor),
           (Data.ProtoLens.Tag 15, timestamp__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Vb2V4l2QbufFtraceEvent'_unknownFields
        (\ x__ y__ -> x__ {_Vb2V4l2QbufFtraceEvent'_unknownFields = y__})
  defMessage
    = Vb2V4l2QbufFtraceEvent'_constructor
        {_Vb2V4l2QbufFtraceEvent'field = Prelude.Nothing,
         _Vb2V4l2QbufFtraceEvent'flags = Prelude.Nothing,
         _Vb2V4l2QbufFtraceEvent'minor = Prelude.Nothing,
         _Vb2V4l2QbufFtraceEvent'sequence = Prelude.Nothing,
         _Vb2V4l2QbufFtraceEvent'timecodeFlags = Prelude.Nothing,
         _Vb2V4l2QbufFtraceEvent'timecodeFrames = Prelude.Nothing,
         _Vb2V4l2QbufFtraceEvent'timecodeHours = Prelude.Nothing,
         _Vb2V4l2QbufFtraceEvent'timecodeMinutes = Prelude.Nothing,
         _Vb2V4l2QbufFtraceEvent'timecodeSeconds = Prelude.Nothing,
         _Vb2V4l2QbufFtraceEvent'timecodeType = Prelude.Nothing,
         _Vb2V4l2QbufFtraceEvent'timecodeUserbits0 = Prelude.Nothing,
         _Vb2V4l2QbufFtraceEvent'timecodeUserbits1 = Prelude.Nothing,
         _Vb2V4l2QbufFtraceEvent'timecodeUserbits2 = Prelude.Nothing,
         _Vb2V4l2QbufFtraceEvent'timecodeUserbits3 = Prelude.Nothing,
         _Vb2V4l2QbufFtraceEvent'timestamp = Prelude.Nothing,
         _Vb2V4l2QbufFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          Vb2V4l2QbufFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser Vb2V4l2QbufFtraceEvent
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
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
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        8 -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "field"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"field") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "flags"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"flags") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "minor"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"minor") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "sequence"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"sequence") y x)
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "timecode_flags"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"timecodeFlags") y x)
                        48
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "timecode_frames"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"timecodeFrames") y x)
                        56
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "timecode_hours"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"timecodeHours") y x)
                        64
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "timecode_minutes"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"timecodeMinutes") y x)
                        72
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "timecode_seconds"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"timecodeSeconds") y x)
                        80
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "timecode_type"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"timecodeType") y x)
                        88
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "timecode_userbits0"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"timecodeUserbits0") y x)
                        96
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "timecode_userbits1"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"timecodeUserbits1") y x)
                        104
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "timecode_userbits2"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"timecodeUserbits2") y x)
                        112
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "timecode_userbits3"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"timecodeUserbits3") y x)
                        120
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "timestamp"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"timestamp") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Vb2V4l2QbufFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'field") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       ((Prelude..)
                          Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'flags") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          ((Prelude..)
                             Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'minor") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             ((Prelude..)
                                Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'sequence") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                                ((Prelude..)
                                   Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                      ((Data.Monoid.<>)
                         (case
                              Lens.Family2.view
                                (Data.ProtoLens.Field.field @"maybe'timecodeFlags") _x
                          of
                            Prelude.Nothing -> Data.Monoid.mempty
                            (Prelude.Just _v)
                              -> (Data.Monoid.<>)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt 40)
                                   ((Prelude..)
                                      Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral
                                      _v))
                         ((Data.Monoid.<>)
                            (case
                                 Lens.Family2.view
                                   (Data.ProtoLens.Field.field @"maybe'timecodeFrames") _x
                             of
                               Prelude.Nothing -> Data.Monoid.mempty
                               (Prelude.Just _v)
                                 -> (Data.Monoid.<>)
                                      (Data.ProtoLens.Encoding.Bytes.putVarInt 48)
                                      ((Prelude..)
                                         Data.ProtoLens.Encoding.Bytes.putVarInt
                                         Prelude.fromIntegral _v))
                            ((Data.Monoid.<>)
                               (case
                                    Lens.Family2.view
                                      (Data.ProtoLens.Field.field @"maybe'timecodeHours") _x
                                of
                                  Prelude.Nothing -> Data.Monoid.mempty
                                  (Prelude.Just _v)
                                    -> (Data.Monoid.<>)
                                         (Data.ProtoLens.Encoding.Bytes.putVarInt 56)
                                         ((Prelude..)
                                            Data.ProtoLens.Encoding.Bytes.putVarInt
                                            Prelude.fromIntegral _v))
                               ((Data.Monoid.<>)
                                  (case
                                       Lens.Family2.view
                                         (Data.ProtoLens.Field.field @"maybe'timecodeMinutes") _x
                                   of
                                     Prelude.Nothing -> Data.Monoid.mempty
                                     (Prelude.Just _v)
                                       -> (Data.Monoid.<>)
                                            (Data.ProtoLens.Encoding.Bytes.putVarInt 64)
                                            ((Prelude..)
                                               Data.ProtoLens.Encoding.Bytes.putVarInt
                                               Prelude.fromIntegral _v))
                                  ((Data.Monoid.<>)
                                     (case
                                          Lens.Family2.view
                                            (Data.ProtoLens.Field.field @"maybe'timecodeSeconds") _x
                                      of
                                        Prelude.Nothing -> Data.Monoid.mempty
                                        (Prelude.Just _v)
                                          -> (Data.Monoid.<>)
                                               (Data.ProtoLens.Encoding.Bytes.putVarInt 72)
                                               ((Prelude..)
                                                  Data.ProtoLens.Encoding.Bytes.putVarInt
                                                  Prelude.fromIntegral _v))
                                     ((Data.Monoid.<>)
                                        (case
                                             Lens.Family2.view
                                               (Data.ProtoLens.Field.field @"maybe'timecodeType") _x
                                         of
                                           Prelude.Nothing -> Data.Monoid.mempty
                                           (Prelude.Just _v)
                                             -> (Data.Monoid.<>)
                                                  (Data.ProtoLens.Encoding.Bytes.putVarInt 80)
                                                  ((Prelude..)
                                                     Data.ProtoLens.Encoding.Bytes.putVarInt
                                                     Prelude.fromIntegral _v))
                                        ((Data.Monoid.<>)
                                           (case
                                                Lens.Family2.view
                                                  (Data.ProtoLens.Field.field
                                                     @"maybe'timecodeUserbits0")
                                                  _x
                                            of
                                              Prelude.Nothing -> Data.Monoid.mempty
                                              (Prelude.Just _v)
                                                -> (Data.Monoid.<>)
                                                     (Data.ProtoLens.Encoding.Bytes.putVarInt 88)
                                                     ((Prelude..)
                                                        Data.ProtoLens.Encoding.Bytes.putVarInt
                                                        Prelude.fromIntegral _v))
                                           ((Data.Monoid.<>)
                                              (case
                                                   Lens.Family2.view
                                                     (Data.ProtoLens.Field.field
                                                        @"maybe'timecodeUserbits1")
                                                     _x
                                               of
                                                 Prelude.Nothing -> Data.Monoid.mempty
                                                 (Prelude.Just _v)
                                                   -> (Data.Monoid.<>)
                                                        (Data.ProtoLens.Encoding.Bytes.putVarInt 96)
                                                        ((Prelude..)
                                                           Data.ProtoLens.Encoding.Bytes.putVarInt
                                                           Prelude.fromIntegral _v))
                                              ((Data.Monoid.<>)
                                                 (case
                                                      Lens.Family2.view
                                                        (Data.ProtoLens.Field.field
                                                           @"maybe'timecodeUserbits2")
                                                        _x
                                                  of
                                                    Prelude.Nothing -> Data.Monoid.mempty
                                                    (Prelude.Just _v)
                                                      -> (Data.Monoid.<>)
                                                           (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                              104)
                                                           ((Prelude..)
                                                              Data.ProtoLens.Encoding.Bytes.putVarInt
                                                              Prelude.fromIntegral _v))
                                                 ((Data.Monoid.<>)
                                                    (case
                                                         Lens.Family2.view
                                                           (Data.ProtoLens.Field.field
                                                              @"maybe'timecodeUserbits3")
                                                           _x
                                                     of
                                                       Prelude.Nothing -> Data.Monoid.mempty
                                                       (Prelude.Just _v)
                                                         -> (Data.Monoid.<>)
                                                              (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                 112)
                                                              ((Prelude..)
                                                                 Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                 Prelude.fromIntegral _v))
                                                    ((Data.Monoid.<>)
                                                       (case
                                                            Lens.Family2.view
                                                              (Data.ProtoLens.Field.field
                                                                 @"maybe'timestamp")
                                                              _x
                                                        of
                                                          Prelude.Nothing -> Data.Monoid.mempty
                                                          (Prelude.Just _v)
                                                            -> (Data.Monoid.<>)
                                                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                    120)
                                                                 ((Prelude..)
                                                                    Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                    Prelude.fromIntegral _v))
                                                       (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                                          (Lens.Family2.view
                                                             Data.ProtoLens.unknownFields
                                                             _x))))))))))))))))
instance Control.DeepSeq.NFData Vb2V4l2QbufFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Vb2V4l2QbufFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Vb2V4l2QbufFtraceEvent'field x__)
                (Control.DeepSeq.deepseq
                   (_Vb2V4l2QbufFtraceEvent'flags x__)
                   (Control.DeepSeq.deepseq
                      (_Vb2V4l2QbufFtraceEvent'minor x__)
                      (Control.DeepSeq.deepseq
                         (_Vb2V4l2QbufFtraceEvent'sequence x__)
                         (Control.DeepSeq.deepseq
                            (_Vb2V4l2QbufFtraceEvent'timecodeFlags x__)
                            (Control.DeepSeq.deepseq
                               (_Vb2V4l2QbufFtraceEvent'timecodeFrames x__)
                               (Control.DeepSeq.deepseq
                                  (_Vb2V4l2QbufFtraceEvent'timecodeHours x__)
                                  (Control.DeepSeq.deepseq
                                     (_Vb2V4l2QbufFtraceEvent'timecodeMinutes x__)
                                     (Control.DeepSeq.deepseq
                                        (_Vb2V4l2QbufFtraceEvent'timecodeSeconds x__)
                                        (Control.DeepSeq.deepseq
                                           (_Vb2V4l2QbufFtraceEvent'timecodeType x__)
                                           (Control.DeepSeq.deepseq
                                              (_Vb2V4l2QbufFtraceEvent'timecodeUserbits0 x__)
                                              (Control.DeepSeq.deepseq
                                                 (_Vb2V4l2QbufFtraceEvent'timecodeUserbits1 x__)
                                                 (Control.DeepSeq.deepseq
                                                    (_Vb2V4l2QbufFtraceEvent'timecodeUserbits2 x__)
                                                    (Control.DeepSeq.deepseq
                                                       (_Vb2V4l2QbufFtraceEvent'timecodeUserbits3
                                                          x__)
                                                       (Control.DeepSeq.deepseq
                                                          (_Vb2V4l2QbufFtraceEvent'timestamp x__)
                                                          ())))))))))))))))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \'protos/perfetto/trace/ftrace/v4l2.proto\DC2\SIperfetto.protos\"\135\ENQ\n\
    \\DC3V4l2QbufFtraceEvent\DC2\FS\n\
    \\tbytesused\CAN\SOH \SOH(\rR\tbytesused\DC2\DC4\n\
    \\ENQfield\CAN\STX \SOH(\rR\ENQfield\DC2\DC4\n\
    \\ENQflags\CAN\ETX \SOH(\rR\ENQflags\DC2\DC4\n\
    \\ENQindex\CAN\EOT \SOH(\rR\ENQindex\DC2\DC4\n\
    \\ENQminor\CAN\ENQ \SOH(\ENQR\ENQminor\DC2\SUB\n\
    \\bsequence\CAN\ACK \SOH(\rR\bsequence\DC2%\n\
    \\SOtimecode_flags\CAN\a \SOH(\rR\rtimecodeFlags\DC2'\n\
    \\SItimecode_frames\CAN\b \SOH(\rR\SOtimecodeFrames\DC2%\n\
    \\SOtimecode_hours\CAN\t \SOH(\rR\rtimecodeHours\DC2)\n\
    \\DLEtimecode_minutes\CAN\n\
    \ \SOH(\rR\SItimecodeMinutes\DC2)\n\
    \\DLEtimecode_seconds\CAN\v \SOH(\rR\SItimecodeSeconds\DC2#\n\
    \\rtimecode_type\CAN\f \SOH(\rR\ftimecodeType\DC2-\n\
    \\DC2timecode_userbits0\CAN\r \SOH(\rR\DC1timecodeUserbits0\DC2-\n\
    \\DC2timecode_userbits1\CAN\SO \SOH(\rR\DC1timecodeUserbits1\DC2-\n\
    \\DC2timecode_userbits2\CAN\SI \SOH(\rR\DC1timecodeUserbits2\DC2-\n\
    \\DC2timecode_userbits3\CAN\DLE \SOH(\rR\DC1timecodeUserbits3\DC2\FS\n\
    \\ttimestamp\CAN\DC1 \SOH(\ETXR\ttimestamp\DC2\DC2\n\
    \\EOTtype\CAN\DC2 \SOH(\rR\EOTtype\"\136\ENQ\n\
    \\DC4V4l2DqbufFtraceEvent\DC2\FS\n\
    \\tbytesused\CAN\SOH \SOH(\rR\tbytesused\DC2\DC4\n\
    \\ENQfield\CAN\STX \SOH(\rR\ENQfield\DC2\DC4\n\
    \\ENQflags\CAN\ETX \SOH(\rR\ENQflags\DC2\DC4\n\
    \\ENQindex\CAN\EOT \SOH(\rR\ENQindex\DC2\DC4\n\
    \\ENQminor\CAN\ENQ \SOH(\ENQR\ENQminor\DC2\SUB\n\
    \\bsequence\CAN\ACK \SOH(\rR\bsequence\DC2%\n\
    \\SOtimecode_flags\CAN\a \SOH(\rR\rtimecodeFlags\DC2'\n\
    \\SItimecode_frames\CAN\b \SOH(\rR\SOtimecodeFrames\DC2%\n\
    \\SOtimecode_hours\CAN\t \SOH(\rR\rtimecodeHours\DC2)\n\
    \\DLEtimecode_minutes\CAN\n\
    \ \SOH(\rR\SItimecodeMinutes\DC2)\n\
    \\DLEtimecode_seconds\CAN\v \SOH(\rR\SItimecodeSeconds\DC2#\n\
    \\rtimecode_type\CAN\f \SOH(\rR\ftimecodeType\DC2-\n\
    \\DC2timecode_userbits0\CAN\r \SOH(\rR\DC1timecodeUserbits0\DC2-\n\
    \\DC2timecode_userbits1\CAN\SO \SOH(\rR\DC1timecodeUserbits1\DC2-\n\
    \\DC2timecode_userbits2\CAN\SI \SOH(\rR\DC1timecodeUserbits2\DC2-\n\
    \\DC2timecode_userbits3\CAN\DLE \SOH(\rR\DC1timecodeUserbits3\DC2\FS\n\
    \\ttimestamp\CAN\DC1 \SOH(\ETXR\ttimestamp\DC2\DC2\n\
    \\EOTtype\CAN\DC2 \SOH(\rR\EOTtype\"\198\EOT\n\
    \\SUBVb2V4l2BufQueueFtraceEvent\DC2\DC4\n\
    \\ENQfield\CAN\SOH \SOH(\rR\ENQfield\DC2\DC4\n\
    \\ENQflags\CAN\STX \SOH(\rR\ENQflags\DC2\DC4\n\
    \\ENQminor\CAN\ETX \SOH(\ENQR\ENQminor\DC2\SUB\n\
    \\bsequence\CAN\EOT \SOH(\rR\bsequence\DC2%\n\
    \\SOtimecode_flags\CAN\ENQ \SOH(\rR\rtimecodeFlags\DC2'\n\
    \\SItimecode_frames\CAN\ACK \SOH(\rR\SOtimecodeFrames\DC2%\n\
    \\SOtimecode_hours\CAN\a \SOH(\rR\rtimecodeHours\DC2)\n\
    \\DLEtimecode_minutes\CAN\b \SOH(\rR\SItimecodeMinutes\DC2)\n\
    \\DLEtimecode_seconds\CAN\t \SOH(\rR\SItimecodeSeconds\DC2#\n\
    \\rtimecode_type\CAN\n\
    \ \SOH(\rR\ftimecodeType\DC2-\n\
    \\DC2timecode_userbits0\CAN\v \SOH(\rR\DC1timecodeUserbits0\DC2-\n\
    \\DC2timecode_userbits1\CAN\f \SOH(\rR\DC1timecodeUserbits1\DC2-\n\
    \\DC2timecode_userbits2\CAN\r \SOH(\rR\DC1timecodeUserbits2\DC2-\n\
    \\DC2timecode_userbits3\CAN\SO \SOH(\rR\DC1timecodeUserbits3\DC2\FS\n\
    \\ttimestamp\CAN\SI \SOH(\ETXR\ttimestamp\"\197\EOT\n\
    \\EMVb2V4l2BufDoneFtraceEvent\DC2\DC4\n\
    \\ENQfield\CAN\SOH \SOH(\rR\ENQfield\DC2\DC4\n\
    \\ENQflags\CAN\STX \SOH(\rR\ENQflags\DC2\DC4\n\
    \\ENQminor\CAN\ETX \SOH(\ENQR\ENQminor\DC2\SUB\n\
    \\bsequence\CAN\EOT \SOH(\rR\bsequence\DC2%\n\
    \\SOtimecode_flags\CAN\ENQ \SOH(\rR\rtimecodeFlags\DC2'\n\
    \\SItimecode_frames\CAN\ACK \SOH(\rR\SOtimecodeFrames\DC2%\n\
    \\SOtimecode_hours\CAN\a \SOH(\rR\rtimecodeHours\DC2)\n\
    \\DLEtimecode_minutes\CAN\b \SOH(\rR\SItimecodeMinutes\DC2)\n\
    \\DLEtimecode_seconds\CAN\t \SOH(\rR\SItimecodeSeconds\DC2#\n\
    \\rtimecode_type\CAN\n\
    \ \SOH(\rR\ftimecodeType\DC2-\n\
    \\DC2timecode_userbits0\CAN\v \SOH(\rR\DC1timecodeUserbits0\DC2-\n\
    \\DC2timecode_userbits1\CAN\f \SOH(\rR\DC1timecodeUserbits1\DC2-\n\
    \\DC2timecode_userbits2\CAN\r \SOH(\rR\DC1timecodeUserbits2\DC2-\n\
    \\DC2timecode_userbits3\CAN\SO \SOH(\rR\DC1timecodeUserbits3\DC2\FS\n\
    \\ttimestamp\CAN\SI \SOH(\ETXR\ttimestamp\"\194\EOT\n\
    \\SYNVb2V4l2QbufFtraceEvent\DC2\DC4\n\
    \\ENQfield\CAN\SOH \SOH(\rR\ENQfield\DC2\DC4\n\
    \\ENQflags\CAN\STX \SOH(\rR\ENQflags\DC2\DC4\n\
    \\ENQminor\CAN\ETX \SOH(\ENQR\ENQminor\DC2\SUB\n\
    \\bsequence\CAN\EOT \SOH(\rR\bsequence\DC2%\n\
    \\SOtimecode_flags\CAN\ENQ \SOH(\rR\rtimecodeFlags\DC2'\n\
    \\SItimecode_frames\CAN\ACK \SOH(\rR\SOtimecodeFrames\DC2%\n\
    \\SOtimecode_hours\CAN\a \SOH(\rR\rtimecodeHours\DC2)\n\
    \\DLEtimecode_minutes\CAN\b \SOH(\rR\SItimecodeMinutes\DC2)\n\
    \\DLEtimecode_seconds\CAN\t \SOH(\rR\SItimecodeSeconds\DC2#\n\
    \\rtimecode_type\CAN\n\
    \ \SOH(\rR\ftimecodeType\DC2-\n\
    \\DC2timecode_userbits0\CAN\v \SOH(\rR\DC1timecodeUserbits0\DC2-\n\
    \\DC2timecode_userbits1\CAN\f \SOH(\rR\DC1timecodeUserbits1\DC2-\n\
    \\DC2timecode_userbits2\CAN\r \SOH(\rR\DC1timecodeUserbits2\DC2-\n\
    \\DC2timecode_userbits3\CAN\SO \SOH(\rR\DC1timecodeUserbits3\DC2\FS\n\
    \\ttimestamp\CAN\SI \SOH(\ETXR\ttimestamp\"\195\EOT\n\
    \\ETBVb2V4l2DqbufFtraceEvent\DC2\DC4\n\
    \\ENQfield\CAN\SOH \SOH(\rR\ENQfield\DC2\DC4\n\
    \\ENQflags\CAN\STX \SOH(\rR\ENQflags\DC2\DC4\n\
    \\ENQminor\CAN\ETX \SOH(\ENQR\ENQminor\DC2\SUB\n\
    \\bsequence\CAN\EOT \SOH(\rR\bsequence\DC2%\n\
    \\SOtimecode_flags\CAN\ENQ \SOH(\rR\rtimecodeFlags\DC2'\n\
    \\SItimecode_frames\CAN\ACK \SOH(\rR\SOtimecodeFrames\DC2%\n\
    \\SOtimecode_hours\CAN\a \SOH(\rR\rtimecodeHours\DC2)\n\
    \\DLEtimecode_minutes\CAN\b \SOH(\rR\SItimecodeMinutes\DC2)\n\
    \\DLEtimecode_seconds\CAN\t \SOH(\rR\SItimecodeSeconds\DC2#\n\
    \\rtimecode_type\CAN\n\
    \ \SOH(\rR\ftimecodeType\DC2-\n\
    \\DC2timecode_userbits0\CAN\v \SOH(\rR\DC1timecodeUserbits0\DC2-\n\
    \\DC2timecode_userbits1\CAN\f \SOH(\rR\DC1timecodeUserbits1\DC2-\n\
    \\DC2timecode_userbits2\CAN\r \SOH(\rR\DC1timecodeUserbits2\DC2-\n\
    \\DC2timecode_userbits3\CAN\SO \SOH(\rR\DC1timecodeUserbits3\DC2\FS\n\
    \\ttimestamp\CAN\SI \SOH(\ETXR\ttimestampJ\229\&5\n\
    \\ACK\DC2\EOT\EOT\NULr\SOH\n\
    \a\n\
    \\SOH\f\DC2\ETX\EOT\NUL\DC22W Autogenerated by:\n\
    \ ../../src/tools/ftrace_proto_gen/ftrace_proto_gen.cc\n\
    \ Do not edit.\n\
    \\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\ENQ\NUL\CAN\n\
    \\n\
    \\n\
    \\STX\EOT\NUL\DC2\EOT\a\NUL\SUB\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\a\b\ESC\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\b\STX \n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\EOT\DC2\ETX\b\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX\b\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\b\DC2\ESC\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\b\RS\US\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX\t\STX\FS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\EOT\DC2\ETX\t\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ENQ\DC2\ETX\t\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX\t\DC2\ETB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX\t\SUB\ESC\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETX\n\
    \\STX\FS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\EOT\DC2\ETX\n\
    \\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ENQ\DC2\ETX\n\
    \\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETX\n\
    \\DC2\ETB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETX\n\
    \\SUB\ESC\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\ETX\DC2\ETX\v\STX\FS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\EOT\DC2\ETX\v\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ENQ\DC2\ETX\v\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\SOH\DC2\ETX\v\DC2\ETB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ETX\DC2\ETX\v\SUB\ESC\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\EOT\DC2\ETX\f\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\EOT\DC2\ETX\f\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ENQ\DC2\ETX\f\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\SOH\DC2\ETX\f\DC1\SYN\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ETX\DC2\ETX\f\EM\SUB\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\ENQ\DC2\ETX\r\STX\US\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\EOT\DC2\ETX\r\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\ENQ\DC2\ETX\r\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\SOH\DC2\ETX\r\DC2\SUB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\ETX\DC2\ETX\r\GS\RS\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\ACK\DC2\ETX\SO\STX%\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ACK\EOT\DC2\ETX\SO\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ACK\ENQ\DC2\ETX\SO\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ACK\SOH\DC2\ETX\SO\DC2 \n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ACK\ETX\DC2\ETX\SO#$\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\a\DC2\ETX\SI\STX&\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\a\EOT\DC2\ETX\SI\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\a\ENQ\DC2\ETX\SI\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\a\SOH\DC2\ETX\SI\DC2!\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\a\ETX\DC2\ETX\SI$%\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\b\DC2\ETX\DLE\STX%\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\b\EOT\DC2\ETX\DLE\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\b\ENQ\DC2\ETX\DLE\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\b\SOH\DC2\ETX\DLE\DC2 \n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\b\ETX\DC2\ETX\DLE#$\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\t\DC2\ETX\DC1\STX(\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\t\EOT\DC2\ETX\DC1\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\t\ENQ\DC2\ETX\DC1\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\t\SOH\DC2\ETX\DC1\DC2\"\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\t\ETX\DC2\ETX\DC1%'\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\n\
    \\DC2\ETX\DC2\STX(\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\n\
    \\EOT\DC2\ETX\DC2\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\n\
    \\ENQ\DC2\ETX\DC2\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\n\
    \\SOH\DC2\ETX\DC2\DC2\"\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\n\
    \\ETX\DC2\ETX\DC2%'\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\v\DC2\ETX\DC3\STX%\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\v\EOT\DC2\ETX\DC3\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\v\ENQ\DC2\ETX\DC3\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\v\SOH\DC2\ETX\DC3\DC2\US\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\v\ETX\DC2\ETX\DC3\"$\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\f\DC2\ETX\DC4\STX*\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\f\EOT\DC2\ETX\DC4\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\f\ENQ\DC2\ETX\DC4\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\f\SOH\DC2\ETX\DC4\DC2$\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\f\ETX\DC2\ETX\DC4')\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\r\DC2\ETX\NAK\STX*\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\r\EOT\DC2\ETX\NAK\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\r\ENQ\DC2\ETX\NAK\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\r\SOH\DC2\ETX\NAK\DC2$\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\r\ETX\DC2\ETX\NAK')\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\SO\DC2\ETX\SYN\STX*\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SO\EOT\DC2\ETX\SYN\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SO\ENQ\DC2\ETX\SYN\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SO\SOH\DC2\ETX\SYN\DC2$\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SO\ETX\DC2\ETX\SYN')\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\SI\DC2\ETX\ETB\STX*\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SI\EOT\DC2\ETX\ETB\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SI\ENQ\DC2\ETX\ETB\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SI\SOH\DC2\ETX\ETB\DC2$\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SI\ETX\DC2\ETX\ETB')\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\DLE\DC2\ETX\CAN\STX \n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\DLE\EOT\DC2\ETX\CAN\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\DLE\ENQ\DC2\ETX\CAN\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\DLE\SOH\DC2\ETX\CAN\DC1\SUB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\DLE\ETX\DC2\ETX\CAN\GS\US\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\DC1\DC2\ETX\EM\STX\FS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\DC1\EOT\DC2\ETX\EM\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\DC1\ENQ\DC2\ETX\EM\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\DC1\SOH\DC2\ETX\EM\DC2\SYN\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\DC1\ETX\DC2\ETX\EM\EM\ESC\n\
    \\n\
    \\n\
    \\STX\EOT\SOH\DC2\EOT\ESC\NUL.\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX\ESC\b\FS\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETX\FS\STX \n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\EOT\DC2\ETX\FS\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ENQ\DC2\ETX\FS\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETX\FS\DC2\ESC\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETX\FS\RS\US\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\SOH\DC2\ETX\GS\STX\FS\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\EOT\DC2\ETX\GS\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ENQ\DC2\ETX\GS\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\SOH\DC2\ETX\GS\DC2\ETB\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ETX\DC2\ETX\GS\SUB\ESC\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\STX\DC2\ETX\RS\STX\FS\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\EOT\DC2\ETX\RS\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\ENQ\DC2\ETX\RS\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\SOH\DC2\ETX\RS\DC2\ETB\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\ETX\DC2\ETX\RS\SUB\ESC\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\ETX\DC2\ETX\US\STX\FS\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\EOT\DC2\ETX\US\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\ENQ\DC2\ETX\US\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\SOH\DC2\ETX\US\DC2\ETB\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\ETX\DC2\ETX\US\SUB\ESC\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\EOT\DC2\ETX \STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\EOT\EOT\DC2\ETX \STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\EOT\ENQ\DC2\ETX \v\DLE\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\EOT\SOH\DC2\ETX \DC1\SYN\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\EOT\ETX\DC2\ETX \EM\SUB\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\ENQ\DC2\ETX!\STX\US\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ENQ\EOT\DC2\ETX!\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ENQ\ENQ\DC2\ETX!\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ENQ\SOH\DC2\ETX!\DC2\SUB\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ENQ\ETX\DC2\ETX!\GS\RS\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\ACK\DC2\ETX\"\STX%\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ACK\EOT\DC2\ETX\"\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ACK\ENQ\DC2\ETX\"\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ACK\SOH\DC2\ETX\"\DC2 \n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ACK\ETX\DC2\ETX\"#$\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\a\DC2\ETX#\STX&\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\a\EOT\DC2\ETX#\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\a\ENQ\DC2\ETX#\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\a\SOH\DC2\ETX#\DC2!\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\a\ETX\DC2\ETX#$%\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\b\DC2\ETX$\STX%\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\b\EOT\DC2\ETX$\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\b\ENQ\DC2\ETX$\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\b\SOH\DC2\ETX$\DC2 \n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\b\ETX\DC2\ETX$#$\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\t\DC2\ETX%\STX(\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\t\EOT\DC2\ETX%\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\t\ENQ\DC2\ETX%\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\t\SOH\DC2\ETX%\DC2\"\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\t\ETX\DC2\ETX%%'\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\n\
    \\DC2\ETX&\STX(\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\n\
    \\EOT\DC2\ETX&\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\n\
    \\ENQ\DC2\ETX&\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\n\
    \\SOH\DC2\ETX&\DC2\"\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\n\
    \\ETX\DC2\ETX&%'\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\v\DC2\ETX'\STX%\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\v\EOT\DC2\ETX'\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\v\ENQ\DC2\ETX'\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\v\SOH\DC2\ETX'\DC2\US\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\v\ETX\DC2\ETX'\"$\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\f\DC2\ETX(\STX*\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\f\EOT\DC2\ETX(\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\f\ENQ\DC2\ETX(\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\f\SOH\DC2\ETX(\DC2$\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\f\ETX\DC2\ETX(')\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\r\DC2\ETX)\STX*\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\r\EOT\DC2\ETX)\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\r\ENQ\DC2\ETX)\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\r\SOH\DC2\ETX)\DC2$\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\r\ETX\DC2\ETX)')\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\SO\DC2\ETX*\STX*\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SO\EOT\DC2\ETX*\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SO\ENQ\DC2\ETX*\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SO\SOH\DC2\ETX*\DC2$\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SO\ETX\DC2\ETX*')\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\SI\DC2\ETX+\STX*\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SI\EOT\DC2\ETX+\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SI\ENQ\DC2\ETX+\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SI\SOH\DC2\ETX+\DC2$\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SI\ETX\DC2\ETX+')\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\DLE\DC2\ETX,\STX \n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\DLE\EOT\DC2\ETX,\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\DLE\ENQ\DC2\ETX,\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\DLE\SOH\DC2\ETX,\DC1\SUB\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\DLE\ETX\DC2\ETX,\GS\US\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\DC1\DC2\ETX-\STX\FS\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\DC1\EOT\DC2\ETX-\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\DC1\ENQ\DC2\ETX-\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\DC1\SOH\DC2\ETX-\DC2\SYN\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\DC1\ETX\DC2\ETX-\EM\ESC\n\
    \\n\
    \\n\
    \\STX\EOT\STX\DC2\EOT/\NUL?\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\SOH\DC2\ETX/\b\"\n\
    \\v\n\
    \\EOT\EOT\STX\STX\NUL\DC2\ETX0\STX\FS\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\EOT\DC2\ETX0\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ENQ\DC2\ETX0\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\SOH\DC2\ETX0\DC2\ETB\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ETX\DC2\ETX0\SUB\ESC\n\
    \\v\n\
    \\EOT\EOT\STX\STX\SOH\DC2\ETX1\STX\FS\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\EOT\DC2\ETX1\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ENQ\DC2\ETX1\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\SOH\DC2\ETX1\DC2\ETB\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ETX\DC2\ETX1\SUB\ESC\n\
    \\v\n\
    \\EOT\EOT\STX\STX\STX\DC2\ETX2\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\EOT\DC2\ETX2\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\ENQ\DC2\ETX2\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\SOH\DC2\ETX2\DC1\SYN\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\ETX\DC2\ETX2\EM\SUB\n\
    \\v\n\
    \\EOT\EOT\STX\STX\ETX\DC2\ETX3\STX\US\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ETX\EOT\DC2\ETX3\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ETX\ENQ\DC2\ETX3\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ETX\SOH\DC2\ETX3\DC2\SUB\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ETX\ETX\DC2\ETX3\GS\RS\n\
    \\v\n\
    \\EOT\EOT\STX\STX\EOT\DC2\ETX4\STX%\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\EOT\EOT\DC2\ETX4\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\EOT\ENQ\DC2\ETX4\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\EOT\SOH\DC2\ETX4\DC2 \n\
    \\f\n\
    \\ENQ\EOT\STX\STX\EOT\ETX\DC2\ETX4#$\n\
    \\v\n\
    \\EOT\EOT\STX\STX\ENQ\DC2\ETX5\STX&\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ENQ\EOT\DC2\ETX5\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ENQ\ENQ\DC2\ETX5\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ENQ\SOH\DC2\ETX5\DC2!\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ENQ\ETX\DC2\ETX5$%\n\
    \\v\n\
    \\EOT\EOT\STX\STX\ACK\DC2\ETX6\STX%\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ACK\EOT\DC2\ETX6\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ACK\ENQ\DC2\ETX6\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ACK\SOH\DC2\ETX6\DC2 \n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ACK\ETX\DC2\ETX6#$\n\
    \\v\n\
    \\EOT\EOT\STX\STX\a\DC2\ETX7\STX'\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\a\EOT\DC2\ETX7\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\a\ENQ\DC2\ETX7\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\a\SOH\DC2\ETX7\DC2\"\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\a\ETX\DC2\ETX7%&\n\
    \\v\n\
    \\EOT\EOT\STX\STX\b\DC2\ETX8\STX'\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\b\EOT\DC2\ETX8\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\b\ENQ\DC2\ETX8\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\b\SOH\DC2\ETX8\DC2\"\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\b\ETX\DC2\ETX8%&\n\
    \\v\n\
    \\EOT\EOT\STX\STX\t\DC2\ETX9\STX%\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\t\EOT\DC2\ETX9\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\t\ENQ\DC2\ETX9\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\t\SOH\DC2\ETX9\DC2\US\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\t\ETX\DC2\ETX9\"$\n\
    \\v\n\
    \\EOT\EOT\STX\STX\n\
    \\DC2\ETX:\STX*\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\n\
    \\EOT\DC2\ETX:\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\n\
    \\ENQ\DC2\ETX:\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\n\
    \\SOH\DC2\ETX:\DC2$\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\n\
    \\ETX\DC2\ETX:')\n\
    \\v\n\
    \\EOT\EOT\STX\STX\v\DC2\ETX;\STX*\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\v\EOT\DC2\ETX;\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\v\ENQ\DC2\ETX;\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\v\SOH\DC2\ETX;\DC2$\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\v\ETX\DC2\ETX;')\n\
    \\v\n\
    \\EOT\EOT\STX\STX\f\DC2\ETX<\STX*\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\f\EOT\DC2\ETX<\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\f\ENQ\DC2\ETX<\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\f\SOH\DC2\ETX<\DC2$\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\f\ETX\DC2\ETX<')\n\
    \\v\n\
    \\EOT\EOT\STX\STX\r\DC2\ETX=\STX*\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\r\EOT\DC2\ETX=\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\r\ENQ\DC2\ETX=\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\r\SOH\DC2\ETX=\DC2$\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\r\ETX\DC2\ETX=')\n\
    \\v\n\
    \\EOT\EOT\STX\STX\SO\DC2\ETX>\STX \n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SO\EOT\DC2\ETX>\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SO\ENQ\DC2\ETX>\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SO\SOH\DC2\ETX>\DC1\SUB\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SO\ETX\DC2\ETX>\GS\US\n\
    \\n\
    \\n\
    \\STX\EOT\ETX\DC2\EOT@\NULP\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\ETX\SOH\DC2\ETX@\b!\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\NUL\DC2\ETXA\STX\FS\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\EOT\DC2\ETXA\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ENQ\DC2\ETXA\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\SOH\DC2\ETXA\DC2\ETB\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ETX\DC2\ETXA\SUB\ESC\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\SOH\DC2\ETXB\STX\FS\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\EOT\DC2\ETXB\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\ENQ\DC2\ETXB\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\SOH\DC2\ETXB\DC2\ETB\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\ETX\DC2\ETXB\SUB\ESC\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\STX\DC2\ETXC\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\STX\EOT\DC2\ETXC\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\STX\ENQ\DC2\ETXC\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\STX\SOH\DC2\ETXC\DC1\SYN\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\STX\ETX\DC2\ETXC\EM\SUB\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\ETX\DC2\ETXD\STX\US\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ETX\EOT\DC2\ETXD\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ETX\ENQ\DC2\ETXD\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ETX\SOH\DC2\ETXD\DC2\SUB\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ETX\ETX\DC2\ETXD\GS\RS\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\EOT\DC2\ETXE\STX%\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\EOT\EOT\DC2\ETXE\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\EOT\ENQ\DC2\ETXE\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\EOT\SOH\DC2\ETXE\DC2 \n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\EOT\ETX\DC2\ETXE#$\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\ENQ\DC2\ETXF\STX&\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ENQ\EOT\DC2\ETXF\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ENQ\ENQ\DC2\ETXF\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ENQ\SOH\DC2\ETXF\DC2!\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ENQ\ETX\DC2\ETXF$%\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\ACK\DC2\ETXG\STX%\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ACK\EOT\DC2\ETXG\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ACK\ENQ\DC2\ETXG\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ACK\SOH\DC2\ETXG\DC2 \n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\ACK\ETX\DC2\ETXG#$\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\a\DC2\ETXH\STX'\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\a\EOT\DC2\ETXH\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\a\ENQ\DC2\ETXH\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\a\SOH\DC2\ETXH\DC2\"\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\a\ETX\DC2\ETXH%&\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\b\DC2\ETXI\STX'\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\b\EOT\DC2\ETXI\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\b\ENQ\DC2\ETXI\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\b\SOH\DC2\ETXI\DC2\"\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\b\ETX\DC2\ETXI%&\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\t\DC2\ETXJ\STX%\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\t\EOT\DC2\ETXJ\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\t\ENQ\DC2\ETXJ\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\t\SOH\DC2\ETXJ\DC2\US\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\t\ETX\DC2\ETXJ\"$\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\n\
    \\DC2\ETXK\STX*\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\n\
    \\EOT\DC2\ETXK\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\n\
    \\ENQ\DC2\ETXK\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\n\
    \\SOH\DC2\ETXK\DC2$\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\n\
    \\ETX\DC2\ETXK')\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\v\DC2\ETXL\STX*\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\v\EOT\DC2\ETXL\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\v\ENQ\DC2\ETXL\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\v\SOH\DC2\ETXL\DC2$\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\v\ETX\DC2\ETXL')\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\f\DC2\ETXM\STX*\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\f\EOT\DC2\ETXM\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\f\ENQ\DC2\ETXM\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\f\SOH\DC2\ETXM\DC2$\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\f\ETX\DC2\ETXM')\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\r\DC2\ETXN\STX*\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\r\EOT\DC2\ETXN\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\r\ENQ\DC2\ETXN\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\r\SOH\DC2\ETXN\DC2$\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\r\ETX\DC2\ETXN')\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\SO\DC2\ETXO\STX \n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SO\EOT\DC2\ETXO\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SO\ENQ\DC2\ETXO\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SO\SOH\DC2\ETXO\DC1\SUB\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SO\ETX\DC2\ETXO\GS\US\n\
    \\n\
    \\n\
    \\STX\EOT\EOT\DC2\EOTQ\NULa\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\EOT\SOH\DC2\ETXQ\b\RS\n\
    \\v\n\
    \\EOT\EOT\EOT\STX\NUL\DC2\ETXR\STX\FS\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\EOT\DC2\ETXR\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\ENQ\DC2\ETXR\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\SOH\DC2\ETXR\DC2\ETB\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\ETX\DC2\ETXR\SUB\ESC\n\
    \\v\n\
    \\EOT\EOT\EOT\STX\SOH\DC2\ETXS\STX\FS\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\EOT\DC2\ETXS\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\ENQ\DC2\ETXS\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\SOH\DC2\ETXS\DC2\ETB\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\ETX\DC2\ETXS\SUB\ESC\n\
    \\v\n\
    \\EOT\EOT\EOT\STX\STX\DC2\ETXT\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\STX\EOT\DC2\ETXT\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\STX\ENQ\DC2\ETXT\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\STX\SOH\DC2\ETXT\DC1\SYN\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\STX\ETX\DC2\ETXT\EM\SUB\n\
    \\v\n\
    \\EOT\EOT\EOT\STX\ETX\DC2\ETXU\STX\US\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\ETX\EOT\DC2\ETXU\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\ETX\ENQ\DC2\ETXU\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\ETX\SOH\DC2\ETXU\DC2\SUB\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\ETX\ETX\DC2\ETXU\GS\RS\n\
    \\v\n\
    \\EOT\EOT\EOT\STX\EOT\DC2\ETXV\STX%\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\EOT\EOT\DC2\ETXV\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\EOT\ENQ\DC2\ETXV\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\EOT\SOH\DC2\ETXV\DC2 \n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\EOT\ETX\DC2\ETXV#$\n\
    \\v\n\
    \\EOT\EOT\EOT\STX\ENQ\DC2\ETXW\STX&\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\ENQ\EOT\DC2\ETXW\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\ENQ\ENQ\DC2\ETXW\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\ENQ\SOH\DC2\ETXW\DC2!\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\ENQ\ETX\DC2\ETXW$%\n\
    \\v\n\
    \\EOT\EOT\EOT\STX\ACK\DC2\ETXX\STX%\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\ACK\EOT\DC2\ETXX\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\ACK\ENQ\DC2\ETXX\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\ACK\SOH\DC2\ETXX\DC2 \n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\ACK\ETX\DC2\ETXX#$\n\
    \\v\n\
    \\EOT\EOT\EOT\STX\a\DC2\ETXY\STX'\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\a\EOT\DC2\ETXY\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\a\ENQ\DC2\ETXY\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\a\SOH\DC2\ETXY\DC2\"\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\a\ETX\DC2\ETXY%&\n\
    \\v\n\
    \\EOT\EOT\EOT\STX\b\DC2\ETXZ\STX'\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\b\EOT\DC2\ETXZ\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\b\ENQ\DC2\ETXZ\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\b\SOH\DC2\ETXZ\DC2\"\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\b\ETX\DC2\ETXZ%&\n\
    \\v\n\
    \\EOT\EOT\EOT\STX\t\DC2\ETX[\STX%\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\t\EOT\DC2\ETX[\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\t\ENQ\DC2\ETX[\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\t\SOH\DC2\ETX[\DC2\US\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\t\ETX\DC2\ETX[\"$\n\
    \\v\n\
    \\EOT\EOT\EOT\STX\n\
    \\DC2\ETX\\\STX*\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\n\
    \\EOT\DC2\ETX\\\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\n\
    \\ENQ\DC2\ETX\\\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\n\
    \\SOH\DC2\ETX\\\DC2$\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\n\
    \\ETX\DC2\ETX\\')\n\
    \\v\n\
    \\EOT\EOT\EOT\STX\v\DC2\ETX]\STX*\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\v\EOT\DC2\ETX]\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\v\ENQ\DC2\ETX]\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\v\SOH\DC2\ETX]\DC2$\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\v\ETX\DC2\ETX]')\n\
    \\v\n\
    \\EOT\EOT\EOT\STX\f\DC2\ETX^\STX*\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\f\EOT\DC2\ETX^\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\f\ENQ\DC2\ETX^\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\f\SOH\DC2\ETX^\DC2$\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\f\ETX\DC2\ETX^')\n\
    \\v\n\
    \\EOT\EOT\EOT\STX\r\DC2\ETX_\STX*\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\r\EOT\DC2\ETX_\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\r\ENQ\DC2\ETX_\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\r\SOH\DC2\ETX_\DC2$\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\r\ETX\DC2\ETX_')\n\
    \\v\n\
    \\EOT\EOT\EOT\STX\SO\DC2\ETX`\STX \n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SO\EOT\DC2\ETX`\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SO\ENQ\DC2\ETX`\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SO\SOH\DC2\ETX`\DC1\SUB\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SO\ETX\DC2\ETX`\GS\US\n\
    \\n\
    \\n\
    \\STX\EOT\ENQ\DC2\EOTb\NULr\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\ENQ\SOH\DC2\ETXb\b\US\n\
    \\v\n\
    \\EOT\EOT\ENQ\STX\NUL\DC2\ETXc\STX\FS\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\EOT\DC2\ETXc\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\ENQ\DC2\ETXc\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\SOH\DC2\ETXc\DC2\ETB\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\ETX\DC2\ETXc\SUB\ESC\n\
    \\v\n\
    \\EOT\EOT\ENQ\STX\SOH\DC2\ETXd\STX\FS\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\SOH\EOT\DC2\ETXd\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\SOH\ENQ\DC2\ETXd\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\SOH\SOH\DC2\ETXd\DC2\ETB\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\SOH\ETX\DC2\ETXd\SUB\ESC\n\
    \\v\n\
    \\EOT\EOT\ENQ\STX\STX\DC2\ETXe\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\STX\EOT\DC2\ETXe\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\STX\ENQ\DC2\ETXe\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\STX\SOH\DC2\ETXe\DC1\SYN\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\STX\ETX\DC2\ETXe\EM\SUB\n\
    \\v\n\
    \\EOT\EOT\ENQ\STX\ETX\DC2\ETXf\STX\US\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\ETX\EOT\DC2\ETXf\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\ETX\ENQ\DC2\ETXf\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\ETX\SOH\DC2\ETXf\DC2\SUB\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\ETX\ETX\DC2\ETXf\GS\RS\n\
    \\v\n\
    \\EOT\EOT\ENQ\STX\EOT\DC2\ETXg\STX%\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\EOT\EOT\DC2\ETXg\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\EOT\ENQ\DC2\ETXg\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\EOT\SOH\DC2\ETXg\DC2 \n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\EOT\ETX\DC2\ETXg#$\n\
    \\v\n\
    \\EOT\EOT\ENQ\STX\ENQ\DC2\ETXh\STX&\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\ENQ\EOT\DC2\ETXh\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\ENQ\ENQ\DC2\ETXh\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\ENQ\SOH\DC2\ETXh\DC2!\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\ENQ\ETX\DC2\ETXh$%\n\
    \\v\n\
    \\EOT\EOT\ENQ\STX\ACK\DC2\ETXi\STX%\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\ACK\EOT\DC2\ETXi\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\ACK\ENQ\DC2\ETXi\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\ACK\SOH\DC2\ETXi\DC2 \n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\ACK\ETX\DC2\ETXi#$\n\
    \\v\n\
    \\EOT\EOT\ENQ\STX\a\DC2\ETXj\STX'\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\a\EOT\DC2\ETXj\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\a\ENQ\DC2\ETXj\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\a\SOH\DC2\ETXj\DC2\"\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\a\ETX\DC2\ETXj%&\n\
    \\v\n\
    \\EOT\EOT\ENQ\STX\b\DC2\ETXk\STX'\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\b\EOT\DC2\ETXk\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\b\ENQ\DC2\ETXk\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\b\SOH\DC2\ETXk\DC2\"\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\b\ETX\DC2\ETXk%&\n\
    \\v\n\
    \\EOT\EOT\ENQ\STX\t\DC2\ETXl\STX%\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\t\EOT\DC2\ETXl\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\t\ENQ\DC2\ETXl\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\t\SOH\DC2\ETXl\DC2\US\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\t\ETX\DC2\ETXl\"$\n\
    \\v\n\
    \\EOT\EOT\ENQ\STX\n\
    \\DC2\ETXm\STX*\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\n\
    \\EOT\DC2\ETXm\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\n\
    \\ENQ\DC2\ETXm\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\n\
    \\SOH\DC2\ETXm\DC2$\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\n\
    \\ETX\DC2\ETXm')\n\
    \\v\n\
    \\EOT\EOT\ENQ\STX\v\DC2\ETXn\STX*\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\v\EOT\DC2\ETXn\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\v\ENQ\DC2\ETXn\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\v\SOH\DC2\ETXn\DC2$\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\v\ETX\DC2\ETXn')\n\
    \\v\n\
    \\EOT\EOT\ENQ\STX\f\DC2\ETXo\STX*\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\f\EOT\DC2\ETXo\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\f\ENQ\DC2\ETXo\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\f\SOH\DC2\ETXo\DC2$\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\f\ETX\DC2\ETXo')\n\
    \\v\n\
    \\EOT\EOT\ENQ\STX\r\DC2\ETXp\STX*\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\r\EOT\DC2\ETXp\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\r\ENQ\DC2\ETXp\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\r\SOH\DC2\ETXp\DC2$\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\r\ETX\DC2\ETXp')\n\
    \\v\n\
    \\EOT\EOT\ENQ\STX\SO\DC2\ETXq\STX \n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\SO\EOT\DC2\ETXq\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\SO\ENQ\DC2\ETXq\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\SO\SOH\DC2\ETXq\DC1\SUB\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\SO\ETX\DC2\ETXq\GS\US"