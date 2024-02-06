module HsUtils.Tracing.Perfetto where

import Data.ByteString qualified as BS
import Data.Fixed (Pico)
import Data.ProtoLens
import Data.Time (UTCTime, nominalDiffTimeToSeconds)
import Data.Time.Clock.POSIX (utcTimeToPOSIXSeconds)
import HsUtils.Tracing.LogEvent
import Import
import Proto.Protos.Perfetto.Common.BuiltinClock qualified as BuiltinClock
import Proto.Protos.Perfetto.Trace.Trace qualified as P
import Proto.Protos.Perfetto.Trace.TracePacket qualified as P
import Proto.Protos.Perfetto.Trace.TracePacket_Fields qualified as TP
import Proto.Protos.Perfetto.Trace.Trace_Fields qualified as T

-- import Proto.Protos.Perfetto.Trace.TrackEvent.TrackEvent qualified as P

protoEnum :: (Enum a) => a -> Word32
protoEnum = fromIntegral . fromEnum

applyTs :: Timestamp -> P.TracePacket -> P.TracePacket
applyTs (TimestampMonotonic ts) p =
  p
    & TP.timestamp .~ ts
    & TP.timestampClockId .~ protoEnum BuiltinClock.BUILTIN_CLOCK_MONOTONIC
applyTs (TimestampRealtime ts) p =
  p
    & TP.timestamp .~ convertTs ts
    & TP.timestampClockId .~ protoEnum BuiltinClock.BUILTIN_CLOCK_REALTIME

convertTs :: UTCTime -> Word64
convertTs = toNanos . nominalDiffTimeToSeconds . utcTimeToPOSIXSeconds
 where
  toNanos :: Pico -> Word64
  toNanos ts' = truncate $ ts' * 1e9

-- | literally a random uuid
synchMarker :: ByteString
synchMarker = BS.pack [0x82, 0x47, 0x7a, 0x76, 0xb2, 0x8d, 0x42, 0xba, 0x81, 0xdc, 0x33, 0x32, 0x6d, 0x57, 0xa0, 0x79]

-- serializeTrackEvent :: TraceEvent -> P.TrackEvent
-- serializeTrackEvent ev =
--   defMessage

serializeTraceEvent :: LogEvent -> P.TracePacket
serializeTraceEvent ev =
  defMessage
    & applyTs ev.timestamp

initialPacket :: P.TracePacket
initialPacket =
  defMessage
    & TP.timestamp .~ 0
    & TP.timestampClockId .~ (fromIntegral . fromEnum $ BuiltinClock.BUILTIN_CLOCK_MONOTONIC)
    & TP.synchronizationMarker .~ synchMarker

tracePackets :: [P.TracePacket] -> P.Trace
tracePackets pakits =
  defMessage & T.packet .~ pakits
