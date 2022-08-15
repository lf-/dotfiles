module Ghci where
import RIO

import HsUtils.Github

githubGhci :: (MonadUnliftIO m, MonadThrow m) => RIO GithubApp b -> m b
githubGhci act = do
  logOpts <- logOptionsHandle stderr True
  runGithubApp logOpts act
