module HsUtils.Tracing.JournalParserSpec where

import TestImport hiding (many)

import HsUtils.Tracing.JournalParser
import JSONGolden (oneGoldenTest, typeName)
import Text.Megaparsec

testCase ::
  (Show p, Eq p) =>
  Parser p ->
  LByteString ->
  Either (ParseErrorBundle LByteString Void) p ->
  Expectation
testCase p s v = parse p "test case" s `shouldBe` v

succeed :: Either (ParseErrorBundle LByteString Void) a -> a
succeed (Left errs) = error $ errorBundlePretty errs
succeed (Right r) = r

golden :: forall a. (Show a, Typeable a) => Parser a -> Text -> Spec
golden parser = oneGoldenTest ".txt" (typeName @a) (succeed . parse parser "test case")

newtype Entries = Entries [Entry]
  deriving stock (Show)

spec :: Spec
spec = describe "Journal parser" do
  it "parses normal newline fields" do
    testCase field "MEOW=valuevaluevalue\n" (Right (Field "MEOW" "valuevaluevalue"))

  it "entry with one line" do
    testCase entry "MEOW=meowmeowmeow\n\n" (Right (Entry [Field "MEOW" "meowmeowmeow"]))

  it "entry with two lines" do
    testCase
      (entry <* eof)
      "MEOW=meowmeowmeow\nMEW=mewmew\n\n"
      ( Right
          ( Entry
              [ Field "MEOW" "meowmeowmeow"
              , Field "MEW" "mewmew"
              ]
          )
      )

  golden @Entries (Entries <$> many entry) "example"
