; contrary to python, decorators don't exist in starlark
(function_definition
  body: (block) @function.inner) @function.outer

(for_statement body: (block)? @loop.inner) @loop.outer
(if_statement
  condition: (_) @conditional.inner
  consequence: (block)? @conditional.inner) @conditional.outer

; from python query
; leave space after comment marker if there is one
((comment) @comment.inner @comment.outer
  (#offset! @comment.inner 0 2 0)
  (#lua-match? @comment.outer "# .*"))
; else remove everything accept comment marker
((comment) @comment.inner @comment.outer
  (#offset! @comment.inner 0 1 0))

; block.inner is inside e.g. an if-cond
; block.outer catches the if itself
; e.g.:
; if foo:
;     bar()
;     ^^^^^ @block.inner
; ^^^^^^ @block.outer
(_
  (block) @block.inner) @block.outer

; statements inside functions, etc
(block
  (_) @statement.outer)

; statements at top level
(module
  (_) @statement.outer)

(call) @call.outer

(call
  arguments: (argument_list
    .
    "("
    .
    (_) @_start
    (_)? @_end
    .
    ")"
    (#make-range! "call.inner" @_start @_end)))

(return_statement
  (_)? @return.inner) @return.outer

; formals:
; def foo(a, b=c) -> int:
;         ^ @parameter.inner
;         ^^ @parameter.outer
;     ...
; first one
((parameters
  .
  [
    (typed_parameter)
    ; untyped parameter
    (identifier)
    (default_parameter)
    ; *args
    (list_splat_pattern)
    ; **kwargs
    (dictionary_splat_pattern)
    (typed_default_parameter)
  ] @parameter.inner
  .
  ","? @_end)
  (#make-range! "parameter.outer" @parameter.inner @_end))

; subsequent ones
((parameters
  "," @_start
  .
  [
    (typed_parameter)
    ; untyped parameter
    (identifier)
    (default_parameter)
    ; *args
    (list_splat_pattern)
    ; **kwargs
    (dictionary_splat_pattern)
    (typed_default_parameter)
  ] @parameter.inner)
  (#make-range! "parameter.outer" @_start @parameter.inner))

; lambda formals:
((lambda_parameters
  .
  [
    (typed_parameter)
    ; untyped parameter
    (identifier)
    (default_parameter)
    ; *args
    (list_splat_pattern)
    ; **kwargs
    (dictionary_splat_pattern)
    (typed_default_parameter)
  ] @parameter.inner
  .
  ","? @_end)
  (#make-range! "parameter.outer" @parameter.inner @_end))

; subsequent ones
((lambda_parameters
  "," @_start
  .
  [
    (typed_parameter)
    ; untyped parameter
    (identifier)
    (default_parameter)
    ; *args
    (list_splat_pattern)
    ; **kwargs
    (dictionary_splat_pattern)
    (typed_default_parameter)
  ] @parameter.inner)
  (#make-range! "parameter.outer" @_start @parameter.inner))

; sample:
; Foo(
;   # meow
;   # meowmeow
;   blah = True,
;   foo = True
; )
((argument_list
  .
  (_) @parameter.inner
  .
  ","? @_end)
  (#make-range! "parameter.outer" @parameter.inner @_end)
)

; subsequent ones
((argument_list
  "," @_start
  .
  (_) @parameter.inner)
  (#make-range! "parameter.outer" @_start @parameter.inner))

; dictionaries and tuples and lists are basically argument lists
((dictionary
  .
  (pair) @parameter.inner
  .
  ","? @_end)
  (#make-range! "parameter.outer" @parameter.inner @_end)
)
((dictionary
  "," @_start
  .
  (pair) @parameter.inner)
  (#make-range! "parameter.outer" @_start @parameter.inner))

((list
  .
  (_) @parameter.inner
  .
  ","? @_end)
  (#make-range! "parameter.outer" @parameter.inner @_end)
)
((list
  "," @_start
  .
  (_) @parameter.inner)
  (#make-range! "parameter.outer" @_start @parameter.inner))

((tuple
  .
  (_) @parameter.inner
  .
  ","? @_end)
  (#make-range! "parameter.outer" @parameter.inner @_end)
)
((tuple
  "," @_start
  .
  (_) @parameter.inner)
  (#make-range! "parameter.outer" @_start @parameter.inner))

(assignment
  left: (_) @assignment.lhs
  right: (_) @assignment.inner @assignment.rhs
  ) @assignment.outer

; +=, |=, etc
(augmented_assignment
  left: (_) @assignment.lhs
  right: (_) @assignment.inner @assignment.rhs
  ) @assignment.outer
