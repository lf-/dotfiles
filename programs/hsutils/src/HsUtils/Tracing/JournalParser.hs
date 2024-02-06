{-# LANGUAGE TypeOperators #-}

module HsUtils.Tracing.JournalParser where

import Import hiding (many, try)

import Data.Bits
import Data.Char (chr)
import Data.Type.Equality
import RIO.Char
import Text.Megaparsec
import Text.Megaparsec.Byte
import Text.Megaparsec.Byte.Binary (word64le)

isNameChar :: Char -> Bool
isNameChar c = isUpper c || isDigit c || c == '_'

-- | Convert a byte to char.
toChar :: Word8 -> Char
toChar = chr . fromIntegral
{-# INLINE toChar #-}

charByte :: Char -> Word8
charByte = fromMaybe (error "char out of bounds") . toIntegralSized . ord
{-# INLINE charByte #-}

-- | Single ascii char
byte :: (MonadParsec e s m, Token s ~ Word8) => Char -> m (Token s)
byte = single . charByte
{-# INLINE byte #-}

newtype FieldName = FieldName {unFieldName :: LByteString}
  deriving stock (Eq)
  deriving newtype (Show, IsString)

data Field = Field {fName :: FieldName, fValue :: LByteString}
  deriving stock (Eq)

instance Show Field where
  show (Field a b) = "Field " <> show a <> " " <> show b

type Parser = Parsec Void LByteString

fieldName :: Parser FieldName
fieldName = FieldName <$> takeWhile1P (Just "name char") (isNameChar . toChar)

fieldEq :: Parser Field
fieldEq = do
  name <- fieldName
  void $ byte '='
  value <- takeWhileP (Just "field value") (/= charByte '\n')
  pure $ Field name value

fieldBin :: Parser Field
fieldBin = do
  name <- fieldName
  void newline
  len <- word64le
  value <- takeP (Just "field value") =<< maybe (fail "out of range") pure (toIntegralSized len)
  pure $ Field name value

field :: Parser Field
field = (try fieldEq <|> fieldBin) <* newline

newtype Entry = Entry [Field]
  deriving stock (Show, Eq)

entry :: Parser Entry
entry = (Entry <$> many field) <* newline

parseJournal :: LByteString -> Either String [Entry]
parseJournal = mapLeft errorBundlePretty . parse (many entry) "entries"
