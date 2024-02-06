module JournaldToPerfetto.Main (main) where

import Data.ByteString.Lazy qualified as LBS
import HsUtils.Tracing.JournalParser (parseJournal)
import HsUtils.Tracing.JournalToPerfetto
import Import
import HsUtils.Tracing.Perfetto
import Data.ProtoLens (Message(..))
import Data.ProtoLens.Encoding.Bytes (runBuilder)
import qualified Data.ByteString as BS

data JournalParseFailed = JournalParseFailed String | LogConvertFailed ConvertError
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

  let perfettod = runBuilder . buildMessage . tracePackets $ initialPacket : (serializeTraceEvent <$> logEvents)

  BS.writeFile "meow.pb" perfettod

  pure ()
