module HsUtils.NixHashSpec (spec)where

import HsUtils.NixHash
import TestImport

hash :: ByteString -> Maybe Hash
hash = Just . Hash

spec :: Spec
spec = describe "Nix" do
  describe "Hashing" do
    it "Hexifies bytestrings" do
      toBase16 "\x01\x02\x03\x04\x15\x26\x37\x48\x09\x0a\x0b\x0c\x0d\x0e\x0f"
        `shouldBe` "0102030415263748090a0b0c0d0e0f"
    it "Decodes base16" do
      hashFromBase16 "0a4d55a8d778e5022fab701977c5d840bbc486d0"
        `shouldBe` hash "\x0a\x4d\x55\xa8\xd7\x78\xe5\x02\x2f\xab\x70\x19\x77\xc5\xd8\x40\xbb\xc4\x86\xd0"
    it "Decodes a Nix hash correctly" do
      let Just hexed = hashFromBase16 "ab335240fd942ab8191c5e628cd4ff3903c577bda961fb75df08e0303a00527b"
          nixHash = "0ysj00x31q08vxsznqd9pmvwa0rrzza8qqjy3hcvhallzm054cxb"
      hashFromBase32 nixHash `shouldBe` Just hexed
    it "Roundtrips base16" do
      let val = "0a4d55a8d778e5022fab701977c5d840bbc486d0"
      (toBase16 . unHash . fromJust . hashFromBase16 $ val) `shouldBe` val
    it "SHA1('Hello World') from Eelco's thesis" do
      let Just hexed = hashFromBase16 "0a4d55a8d778e5022fab701977c5d840bbc486d0"
          nixHash = "s23c9fs0v32pf6bhmcph5rbqsyl5ak8a"
      hashFromBase32 nixHash `shouldBe` Just hexed
