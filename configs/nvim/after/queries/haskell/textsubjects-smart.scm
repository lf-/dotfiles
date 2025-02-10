;; extends
([
  ; FIXME: the do block should grab the INSIDE of the do block
  (do)
  ; if cond then foo else bar
  (conditional)
  ; [a..b]
  (arithmetic_sequence)
  (tuple)
  (list)

  (signature)
  (function)

  (data_constructor)
  (fields)

  (type_family)
  (type_instance)

  (newtype)
  (instance)
  ; data Foo = ...
  ; ^^^^^^^^^^^^^^
  (data_type)
  (class)
  (top_splice)
 ] @_start @_end
 (#make-range! "range" @_start @_end))

; Inside of do statements: each line
((do statement: (_) @_start @_end)
 (#make-range! "range" @_start @_end))

; Guards: each guard
; Cons a b | a == b
;            ^^^^^^
;          | b == c
;            ^^^^^^
((guards guard: (_) @_start @_end)
 (#make-range! "range" @_start @_end))

; Patterns: each pattern
((patterns (_) @_start @_end)
 (#make-range! "range" @_start @_end))

; guard equation rhs
; startOfThisWeek day | dayOfWeek day == Monday
;    = day
;      ^^^
((match
   expression: (_) @_start @_end)
 (#make-range! "range" @_start @_end))

; FIXME: individual constraints
; FIXME: import-list entries

; FIXME
; ((exp_tuple
;   (_) @_start @_end
;   ((comma) . (_) @_start @_end))*
;  (#make-range! "range" @_start @_end)
; )

; signature + function
(
 ((signature) @_start
  .
  (function) @_end)
 (#make-range! "range" @_start @_end))

; function apply param
(
 (apply . (_) (_) @_start @_end)
 (#make-range! "range" @_start @_end))

; function definition lhs
((function
    patterns: (_) @_start @_end)
 (#make-range! "range" @_start @_end))

; let-in rhs
(
 ; test =
 ;     let
 ;         a = 1
 ;         b = 2
 ;     in a + b
 (let_in expression: (_) @_start @_end)
 (#make-range! "range" @_start @_end))

; FIXME: how should this work
; ; parts of a lambda definition
; (
;   ; \a b c -> a
;   ; both (a b c) and a
;  (exp_lambda "\\" (_) @_start @_end (_) @_end . "->" (_) @_start @_end)
;  (#make-range! "range" @_start @_end))

; one record field
((
  ; data A = A
  ; { fieldOne :: Int
  ; , fieldTwo :: Int
  ; }
  (field (_)) @_start @_end . ","? @_end
 )
 (#make-range! "range" @_start @_end))

([
  ; lhs of a bind_pattern assignment
  ; MkTy {tyOne, tyTwo} <- undefined
  (bind pattern: (_) @_start @_end)
  ; rhs
  (bind expression: (_) @_start @_end .)
 ]
 (#make-range! "range" @_start @_end))

(
 ; parts of a signature
 ; someFunc :: forall a. (a -> String)
 [
  ; lhs
  (signature
   name: (_) @_start @_end
  )
  ; rhs
  (signature
    type: (_) @_start @_end
  )
 ]
 (#make-range! "range" @_start @_end)
)

(((_) @head . (comment) @_start . (comment)+ @_end (_) @tail)
    (#not-kind-eq? @tail "comment")
    (#not-kind-eq? @head "comment")
    (#make-range! "range" @_start @_end))
