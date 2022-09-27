module HsUtils.App where

import Data.Aeson (Options (..), camelTo2, defaultOptions, FromJSON, eitherDecode)
import Data.Generics.Labels ()
import Network.HTTP.Client (Manager)
import RIO

data AppException =
  JsonDecodeFailed String

instance Show AppException where
  show (JsonDecodeFailed msg) = "Failed to decode JSON: " <> msg

instance Exception AppException

decodeThrow :: (FromJSON a, MonadIO m) => LByteString -> m a
decodeThrow = fromEither . mapLeft JsonDecodeFailed . eitherDecode

class HasManager env where
  managerL :: Lens' env Manager

snakeCaseOptions :: Options
snakeCaseOptions = defaultOptions {fieldLabelModifier = camelTo2 '_'}

nothingToLeft :: err -> Maybe val -> Either err val
nothingToLeft _ (Just a) = Right a
nothingToLeft err Nothing = Left err
