-- | Just enough Starlark to write macro calls, laid out the way buildifier
-- would leave them.
module Hackage2Buck.Starlark
  ( Expr (..)
  , Call (..)
  , renderCall
  ) where

data Expr = Str String | List [Expr] | Bool Bool | Dict [(String, Expr)]

data Call = Call String [(String, Expr)]

renderCall :: Call -> String
renderCall (Call fn [("name", name)]) = fn <> "(name = " <> renderExpr 0 name <> ")\n"
renderCall (Call fn kwargs) =
  fn <> "(\n" <> concatMap kwarg kwargs <> ")\n"
  where
    kwarg (k, v) = indent 1 <> k <> " = " <> renderExpr 1 v <> ",\n"

-- | Lists of two or more elements, and dicts, get a line per element with a
-- trailing comma.
renderExpr :: Int -> Expr -> String
renderExpr depth = \case
  Str s -> show' s
  Bool b -> if b then "True" else "False"
  List [] -> "[]"
  List [x] -> "[" <> renderExpr depth x <> "]"
  List xs ->
    "[\n"
      <> concatMap (\x -> indent (depth + 1) <> renderExpr (depth + 1) x <> ",\n") xs
      <> indent depth
      <> "]"
  Dict [] -> "{}"
  Dict kvs ->
    "{\n"
      <> concatMap (\(k, v) -> indent (depth + 1) <> show' k <> ": " <> renderExpr (depth + 1) v <> ",\n") kvs
      <> indent depth
      <> "}"

indent :: Int -> String
indent n = replicate (4 * n) ' '

show' :: String -> String
show' s = "\"" <> concatMap escape s <> "\""
  where
    escape = \case
      '"' -> "\\\""
      '\\' -> "\\\\"
      '\n' -> "\\n"
      c -> [c]
