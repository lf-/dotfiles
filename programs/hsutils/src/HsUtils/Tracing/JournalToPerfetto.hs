module HsUtils.Tracing.JournalToPerfetto where

import Data.Time.Clock (secondsToNominalDiffTime)
import Data.Time.Clock.POSIX (posixSecondsToUTCTime)
import HsUtils.Tracing.JournalParser qualified as J
import HsUtils.Tracing.LogEvent
import Import
import RIO.ByteString qualified as BS
import RIO.Set qualified as Set
import Text.Megaparsec qualified as MP
import Text.Megaparsec.Byte.Lexer qualified as MPL

data ConvertError
  = MissingTimestamp
  | MissingUid
  | MissingPid
  | MissingMessage
  | InvalidNumber
  deriving stock (Show)
  deriving anyclass (Exception)

orLeft :: Maybe a -> e -> Either e a
orLeft a e = maybe (Left e) Right a

number :: (Num n) => ByteString -> Either ConvertError n
number n = MP.parseMaybe @Void MPL.decimal n `orLeft` InvalidNumber

lookupF :: J.FieldName -> [J.Field] -> Maybe ByteString
lookupF name = lookup name . map (\(J.Field a b) -> (a, BS.toStrict b))

discardFields :: Set LByteString
discardFields =
  Set.fromList
    [ "__CURSOR"
    , "__REALTIME_TIMESTAMP"
    , "__MONOTONIC_TIMESTAMP"
    , "__SEQNUM"
    , "__SEQNUM_ID"
    , "_BOOT_ID"
    , "_TRANSPORT"
    , "_MACHINE_ID"
    , "_HOSTNAME"
    , "_SOURCE_REALTIME_TIMESTAMP"
    , "MESSAGE"
    ]

unField :: J.Field -> (ByteString, ByteString)
unField (J.Field (J.FieldName n) v) = (BS.toStrict n, BS.toStrict v)

toLogEvent :: J.Entry -> Either ConvertError LogEvent
toLogEvent (J.Entry fields) = do
  ts <- TimestampMonotonic <$> numField "__MONOTONIC_TIMESTAMP" MissingTimestamp
  let pid = fromMaybe 0 $ numFieldMay "_PID"
  let uid = fromMaybe 0 $ numFieldMay "_UID"
  message <- field pure "MESSAGE" MissingMessage
  tsRealtime <- convertRealtime <$> numField "__REALTIME_TIMESTAMP" MissingTimestamp

  let kind = maybe User parseTransport (lookupF "_TRANSPORT" fields)

  let source = lookupF "_SYSTEMD_UNIT" fields <|> lookupF "_KERNEL_SUBSYSTEM" fields
  let textEntries = filter ((`Set.notMember` discardFields) . J.unFieldName . J.fName) fields
  let level = fromMaybe Info (convertLogLevel =<< lookupF "PRIORITY" fields)

  pure
    LogEvent
      { timestamp = ts
      , timestampRealtime = tsRealtime
      , pid
      , uid
      , message
      , source
      , kind
      , level
      , textFields = unField <$> textEntries
      }
 where
  parseTransport "kernel" = Kernel
  parseTransport _ = User

  eitherToMaybe = either (const Nothing) Just
  convertLogLevel = levelFromInt <=< eitherToMaybe . number
  numFieldMay :: (Num a) => J.FieldName -> Maybe a
  numFieldMay name = eitherToMaybe . number =<< lookupF name fields

  field :: (ByteString -> Either p b) -> J.FieldName -> p -> Either p b
  field ty name err = ty =<< lookupF name fields `orLeft` err

  numField :: (Num n) => J.FieldName -> ConvertError -> Either ConvertError n
  numField = field number

  microsPerS = 1e6

  convertRealtime ts = posixSecondsToUTCTime . secondsToNominalDiffTime $ (ts / microsPerS)
