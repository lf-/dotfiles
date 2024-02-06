module HsUtils.Tracing.JournalToPerfetto where

import HsUtils.Tracing.JournalParser qualified as J
import HsUtils.Tracing.LogEvent
import Import
import RIO.Set qualified as Set
import Text.Megaparsec qualified as MP
import Text.Megaparsec.Byte.Lexer qualified as MPL
import qualified RIO.ByteString as BS

data ConvertError
  = MissingTimestamp
  | MissingUid
  | MissingPid
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
    ]

unField :: J.Field -> (ByteString, ByteString)
unField (J.Field (J.FieldName n) v) = (BS.toStrict n, BS.toStrict v)

toLogEvent :: J.Entry -> Either ConvertError LogEvent
toLogEvent (J.Entry fields) = do
  ts <- TimestampMonotonic <$> numField "__MONOTONIC_TIMESTAMP" MissingTimestamp
  pid <- numField "_PID" MissingPid
  uid <- numField "_UID" MissingUid

  let textEntries = filter ((`Set.notMember` discardFields) . J.unFieldName . J.fName) fields

  pure LogEvent {timestamp = ts, pid, uid, textFields = unField <$> textEntries}
 where
  numField :: (Num n) => J.FieldName -> ConvertError -> Either ConvertError n
  numField name err = number =<< lookupF name fields `orLeft` err
