module JournaldToPerfetto.Main (main) where

import Data.ByteString qualified as BS
import Data.ByteString.Lazy qualified as LBS
import Data.List.NonEmpty qualified as NE
import Data.ProtoLens (Message (..))
import Data.ProtoLens.Encoding.Bytes (runBuilder)
import HsUtils.Tracing.JournalParser (parseJournal)
import HsUtils.Tracing.JournalToPerfetto
import HsUtils.Tracing.LogEvent
import HsUtils.Tracing.Perfetto
import Import
import RIO.NonEmpty (nonEmpty)

data JournalParseFailed = JournalParseFailed String | LogConvertFailed ConvertError | NoEvents
  deriving stock (Show)
  deriving anyclass (Exception)

throwEither :: (MonadThrow m, Exception e) => (a1 -> e) -> Either a1 a2 -> m a2
throwEither exc = either (throwM . exc) pure

main :: IO ()
main = do
  journal <- LBS.hGetContents stdin
  parsed <- throwEither JournalParseFailed $ parseJournal journal
  -- FIXME: allow multiple errors
  logEvents <- throwEither LogConvertFailed $ traverse toLogEvent parsed

  evs <- nonEmpty logEvents `orThrow` NoEvents

  let perfettod = runBuilder . buildMessage . tracePackets $ [initialPacket (NE.head evs).timestampRealtime, serializeTraceEvent evs]

  BS.writeFile "meow.pb" perfettod

  pure ()
