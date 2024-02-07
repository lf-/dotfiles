module HsUtils.Tracing.Perfetto where

import Data.ByteString qualified as BS
import Data.Fixed (Pico)
import Data.ProtoLens
import Data.Text.Encoding (decodeUtf8)
import Data.Time (UTCTime, nominalDiffTimeToSeconds)
import Data.Time.Clock.POSIX (utcTimeToPOSIXSeconds)
import HsUtils.Tracing.LogEvent
import Import
import Proto.Protos.Perfetto.Common.AndroidLogConstants qualified as ALP
import Proto.Protos.Perfetto.Common.BuiltinClock qualified as BuiltinClock
import Proto.Protos.Perfetto.Trace.Android.AndroidLog_Fields qualified as ALP
import Proto.Protos.Perfetto.Trace.ClockSnapshot_Fields qualified as CS
import Proto.Protos.Perfetto.Trace.Trace qualified as P
import Proto.Protos.Perfetto.Trace.TracePacket qualified as P
import Proto.Protos.Perfetto.Trace.TracePacket_Fields qualified as TP
import Proto.Protos.Perfetto.Trace.Trace_Fields qualified as T

-- import Proto.Protos.Perfetto.Trace.TrackEvent.TrackEvent qualified as P

protoEnum :: (Enum a) => a -> Word32
protoEnum = fromIntegral . fromEnum

applyTsMonotonic :: TimestampMonotonic -> P.TracePacket -> P.TracePacket
applyTsMonotonic (TimestampMonotonic ts) p =
  p
    & TP.timestamp .~ ts
    & TP.timestampClockId .~ protoEnum BuiltinClock.BUILTIN_CLOCK_MONOTONIC

applyTsRealtime :: UTCTime -> P.TracePacket -> P.TracePacket
applyTsRealtime ts p =
  p
    & TP.timestamp .~ convertTs ts
    & TP.timestampClockId .~ protoEnum BuiltinClock.BUILTIN_CLOCK_REALTIME

convertTs :: UTCTime -> Word64
convertTs = toNanos . nominalDiffTimeToSeconds . utcTimeToPOSIXSeconds
 where
  toNanos :: Pico -> Word64
  toNanos ts' = truncate $ ts' * 1e9

convertLogLevel :: LogEventLevel -> ALP.AndroidLogPriority
convertLogLevel Emerg = ALP.PRIO_FATAL
convertLogLevel Alert = ALP.PRIO_FATAL
convertLogLevel Crit = ALP.PRIO_FATAL
convertLogLevel Err = ALP.PRIO_ERROR
convertLogLevel Warn = ALP.PRIO_WARN
convertLogLevel Notice = ALP.PRIO_INFO
convertLogLevel Info = ALP.PRIO_INFO
convertLogLevel Debug = ALP.PRIO_DEBUG

-- | literally a random uuid
synchMarker :: ByteString
synchMarker = BS.pack [0x82, 0x47, 0x7a, 0x76, 0xb2, 0x8d, 0x42, 0xba, 0x81, 0xdc, 0x33, 0x32, 0x6d, 0x57, 0xa0, 0x79]

-- serializeTrackEvent :: TraceEvent -> P.TrackEvent
-- serializeTrackEvent ev =
--   defMessage

applyAndroidLogPacket :: [LogEvent] -> P.TracePacket -> P.TracePacket
applyAndroidLogPacket evs p =
  p & TP.androidLog .~ androidPacket
 where
  androidPacket =
    defMessage & ALP.events .~ (androidEvent <$> evs)

  logId Kernel = ALP.LID_KERNEL
  logId User = ALP.LID_DEFAULT

  androidEvent ev =
    defMessage
      -- :( we have to can the fields because perfetto doesn't actually use them
      -- & ALP.args .~ (uncurry mkField <$> ev.textFields)
      & ALP.logId .~ logId ev.kind
      & ALP.pid .~ (fromIntegral . unPid) ev.pid
      & ALP.tid .~ (fromIntegral . unPid) ev.pid
      & ALP.uid .~ (fromIntegral . unUid) ev.uid
      & ALP.maybe'tag .~ (decodeUtf8 <$> ev.source)
      & ALP.timestamp .~ convertTs ev.timestampRealtime
      & ALP.prio .~ convertLogLevel ev.level
      & ALP.message .~ decodeUtf8 ev.message
  -- mkField name val =
  --   defMessage @ALP.AndroidLogPacket'LogEvent'Arg
  --     & ALP.name .~ decodeUtf8 name
  --     & ALP.stringValue .~ decodeUtf8 val

serializeTraceEvent :: NonEmpty LogEvent -> P.TracePacket
serializeTraceEvent evs@(ev0 :| _) =
  defMessage
    & applyTsRealtime ev0.timestampRealtime
    & applyAndroidLogPacket (toList evs)

initialPacket :: UTCTime -> P.TracePacket
initialPacket ts =
  defMessage
    & TP.timestamp .~ convertTs ts
    & TP.timestampClockId .~ protoEnum BuiltinClock.BUILTIN_CLOCK_REALTIME
    & TP.clockSnapshot .~ clockSnapshot
 where
  clock =
    defMessage
      & CS.clockId .~ protoEnum BuiltinClock.BUILTIN_CLOCK_REALTIME
      & CS.timestamp .~ convertTs ts
  clockSnapshot =
    defMessage
      & CS.clocks .~ [clock]
      & CS.primaryTraceClock .~ BuiltinClock.BUILTIN_CLOCK_REALTIME

-- & TP.synchronizationMarker .~ synchMarker

tracePackets :: [P.TracePacket] -> P.Trace
tracePackets pakits =
  defMessage & T.packet .~ pakits
