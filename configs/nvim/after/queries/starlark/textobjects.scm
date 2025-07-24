; sample:
; Foo(
;   # meow
;   # meowmeow
;   blah = True,
;   foo = True
; )
((argument_list
   (keyword_argument name: (_) @_start value: (_) @parameter.inner))
   .
   [("," @_start) (_)]?
 (#make-range! "parameter.outer" @_start @parameter.inner)
)
