-- SPDX-License-ID: MIT
-- SPDX-FileCopyrightText: Mercury Technologies, 2022
module JSONGolden (oneGoldenTest, typeName) where

import Data.ByteString.Lazy qualified as LBS
import Data.Text (stripEnd)
import Data.Text.IO qualified as T
import RIO.FilePath ((</>))
import RIO.Text qualified as T
import RIO.Text.Lazy qualified as TL
import Test.Hspec.Core.Spec (SpecM)
import Test.Hspec.Golden
import TestImport
import Text.Pretty.Simple (pShowNoColor)
import Type.Reflection

filename :: Text -> Text -> FilePath
filename tycon name = "test/golden" </> T.unpack tycon </> T.unpack name

typeName :: forall a. (Typeable a) => Text
typeName = T.pack . tyConName . typeRepTyCon $ typeRep @a

goldenTest :: forall a. (Show a) => Text -> Text -> LByteString -> (LByteString -> a) -> Golden Text
goldenTest theTypeName name rawInput parse = do
  let output = parse rawInput
   in Golden
        { output = TL.toStrict . pShowNoColor $ output
        , encodePretty = T.unpack
        , writeToFile = T.writeFile
        , -- deal with vim related EOF
          readFromFile = fmap stripEnd . T.readFile
        , goldenFile = filename theTypeName name ++ ".golden"
        , actualFile = Just $ filename theTypeName name ++ ".actual"
        , failFirstTime = True
        }

oneGoldenTest :: forall a. (Show a) => String -> Text -> (LByteString -> a) -> Text -> SpecM () ()
oneGoldenTest ext theTypeName parse name = do
  input <- runIO . LBS.readFile $ filename theTypeName name <> ext
  it (T.unpack name) $ goldenTest theTypeName name input parse
