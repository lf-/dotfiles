module Import (
  undefined,
  putStrLn,
  orThrow,
  module RIO,
) where

import RIO hiding (undefined)
import RIO qualified
import RIO.ByteString.Lazy qualified as BSL

{-# WARNING undefined "leaving undefined in the code!" #-}
undefined :: a
undefined = RIO.undefined

-- I don't agree with the choice to use lazy byte strings for printing to screen.
putStrLn :: MonadIO m => Text -> m ()
putStrLn = BSL.putStrLn . fromStrictBytes . encodeUtf8

-- | Throws the given exception if the Maybe is Nothing
orThrow :: (Exception e, MonadThrow m) => Maybe a -> e -> m a
val `orThrow` exc = case val of
  Just v -> pure v
  Nothing -> throwM exc

-- slightly higher precedence than ($)
infix 2 `orThrow`
