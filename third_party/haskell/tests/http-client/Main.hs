{-# LANGUAGE OverloadedStrings #-}

module Main (main) where

import Network.HTTP.Client
import System.Environment (getEnv)
import System.IO (hGetLine)
import System.Process

-- A real GET against a local server ($HTTP_SERVER, which prints the port it
-- bound): exercises network's hsc2hs modules and cbits, hashable's capi
-- imports and zlib's bundled C, linked into one binary.
main :: IO ()
main = do
  server <- getEnv "HTTP_SERVER"
  (_, Just out, _, handle) <- createProcess (shell ("exec " <> server)) {std_out = CreatePipe}
  port <- hGetLine out
  manager <- newManager defaultManagerSettings
  req <- parseRequest ("http://127.0.0.1:" <> port <> "/hello")
  body <- responseBody <$> httpLbs req manager
  _ <- waitForProcess handle
  if body == "you asked for /hello\n"
    then putStrLn "ok"
    else error ("unexpected response body: " <> show body)
