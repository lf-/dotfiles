-- | Nix tools
module HsUtils.NixHash (hashToSri, HashWithAlgorithm(..), Hash (..), hashFromBase16, hashFromBase32, toBase16) where

import Data.Bits
import Data.ByteString qualified as BS
import Data.Char (ord)
import Data.Vector qualified as V
import Import
import RIO.Text qualified as T
import Data.ByteString.Base64 (encodeBase64)

data HashWithAlgorithm = SHA256 Hash deriving (Show)

-- | Generates a [W3C SRI](https://www.w3.org/TR/SRI/) for some hash
hashToSri :: HashWithAlgorithm -> Text
hashToSri (SHA256 (Hash h)) = "sha256-" <> encodeBase64 h

-- omits eout to supposedly avoid offensive words in hashes
base32Chars :: Vector Word8
base32Chars = V.fromList $ fromIntegral . ord <$> "0123456789abcdfghijklmnpqrsvwxyz"

base16Chars :: Vector Word8
base16Chars = V.fromList $ fromIntegral . ord <$> "0123456789abcdef"

readOne :: (Num b, Eq p) => Vector p -> p -> Maybe b
readOne set ch = fromIntegral <$> V.elemIndex ch set

-- | Raw hash bytes
newtype Hash = Hash {unHash :: ByteString} deriving (Eq)

instance Show Hash where
  show = T.unpack . decodeUtf8Lenient . toBase16 . unHash

-- | Reads in a hash as base 16.
hashFromBase16 :: ByteString -> Maybe Hash
hashFromBase16 b16 = Hash <$> go "" b16
 where
  readBase16 = readOne base16Chars
  go acc "" = Just acc
  go acc bs = do
    -- note that this will Nothing odd length strings
    (c1, bs) <- BS.uncons bs
    (c2, bs) <- BS.uncons bs
    c1 <- readBase16 c1
    c2 <- readBase16 c2

    let combined = (c1 `shiftL` 4) .|. c2
    go (BS.snoc acc combined) bs

{- | Decodes Nix's oddball base32 format. See page 89 of Eelco's thesis for a
   full description of the format.

   It's \"little endian\" (the bytes, once decoded as a number, are
   backwards), but otherwise it's just a base 32 number in a weird character
   set. Note that the weird endianness is applied bytewise *after* decoding.
   It's bizarre.
-}
hashFromBase32 :: ByteString -> Maybe Hash
hashFromBase32 hash =
  (\(a, _, _) -> Hash . BS.reverse $ a) <$> BS.foldr' folder (Just (BS.empty, 0, 0)) hash
 where
  folder :: Word8 -> Maybe (ByteString, Int, Int) -> Maybe (ByteString, Int, Int)
  folder ch (Just (acc, bitPos, remain)) = do
    idx <- readOne base32Chars ch
    pure (newAcc idx, newBitPos, newRemain idx)
   where
    newAcc idx =
      if newBitPos < bitPos
        then BS.cons (fromIntegral $ shiftedRemain idx .&. 0xff) acc
        else acc
    newBitPos = (bitPos + 5) `mod` 8
    -- Contains the bits in the current index along with remains from the
    -- previous one. May be wider than 8 bits.
    shiftedRemain idx = (idx `shiftL` bitPos) .|. remain
    -- 'shiftedRemain', limited to 8 bits
    newRemain idx =
      if newBitPos < bitPos
        then -- then we ate a chunk of 8 bits out of it, which we no longer want
          shiftedRemain idx `shiftR` 8
        else shiftedRemain idx
  folder _ Nothing = Nothing

-- | Converts a binary string into base16. Useful for debugging especially.
toBase16 :: ByteString -> ByteString
toBase16 = BS.concatMap hexify
 where
  asHex dig = base16Chars V.! fromIntegral dig
  hexify byte = BS.cons topNibble $ BS.singleton bottomNibble
   where
    topNibble = asHex $ (byte .&. 0xf0) `shiftR` 4
    bottomNibble = asHex (byte .&. 0x0f)
