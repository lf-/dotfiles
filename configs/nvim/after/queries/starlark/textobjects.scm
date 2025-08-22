; sample:
; Foo(
;   # meow
;   # meowmeow
;   blah = True,
;   foo = True
; )
; TODO: this looks like wrong nesting for the commas?
((argument_list
   (keyword_argument name: (_) @_start value: (_) @parameter.inner))
   .
   [("," @_start) (_)]?
 (#make-range! "parameter.outer" @_start @parameter.inner)
)

; TODO: these are pretty wrong
(argument_list
   ((_) @parameter.inner)
   .
   ("," @_end)?
 (#make-range! "parameter.outer" @parameter.inner @_end)
)
