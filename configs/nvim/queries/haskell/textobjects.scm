; this is not an 'extends' query, in order to replace the stock one

; I believe that function.outer should include the signature
;
; someFunc :: a
; someFunc = undefined
;
; do blocks' content are grabbed as the function body
; e.g.
; f = do
;   putStrLn "a"
;   putStrLn "b"
; will grab the inside of the "do"
(
 ; FIXME: the signature does not get picked up for some reason in function.outer
 ; FIXME: multiple definitions for pattern matches are not picked up; this
 ; might be tricky as the distinguishing feature here is that they have the
 ; same name and I am not sure how I would express that
 (
  (signature) @_outer_start
  .
  (function name: (_) match: [
     (do . (_) @_start @_end (_)? @_end .)
     ; if a function is not a do the entire body is an expr
     (_) @_start @_end
  ]) @_outer_end
  (#make-range! "function.inner" @_start @_end)
 )
 (#make-range! "function.outer" @_outer_start @_outer_end)
)

;;; parameter

; formal parameters "a b c" in a lambda definition
; \a b c -> a
(lambda (_) @parameter.inner "->")

; function sig parameter
; someFunc :: forall a. (a -> String)
; signature rhs:
(signature
  ; FIXME: maybe wrong
  type: (_) @parameter.inner
)

; function defn parameter
(function
  patterns: (patterns (_) @parameter.inner))

; function apply param
(apply . (_) (_) @parameter.inner)

;;; class

; class
(
 (class declarations: (class_declarations) @_start @_end) @class.outer
 (#make-range! "class.inner" @_start @_end))

; class instances (yes, the nesting is different. lol.)
(
 (instance declarations: (instance_declarations) @_start @_end) @class.outer
 (#make-range! "class.inner" @_start @_end))

(apply) @call.outer
(apply (_) @call.inner)

(comment) @comment.outer
