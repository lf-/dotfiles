(([
  (function_definition)
  (for_statement)
  (command_substitution)
  (string)
  (command)
  (redirected_statement)
  ; FIXME: does not grab the body of the if_statement
  (if_statement)
  (elif_clause)
  (else_clause)
 ] @_start @_end)
 (#make-range! "range" @_start @_end))
