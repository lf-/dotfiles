;; extends
([
  ; FIXME: the do block should grab the INSIDE of the do block
  (exp_do)
  (stmt)
  (exp_cond)
  (exp_tuple)
  (exp_list)
  (patterns)
  (guard)

  (signature)
  (function)

  (data_constructor)
  (record_fields)

  (type_family)
  (type_instance)

  (newtype)
  (instance)
  (adt)
  (class)
  (top_splice)
 ] @_start @_end
 (#make-range! "range" @_start @_end))

; guard equation rhs
; startOfThisWeek day | dayOfWeek day == Monday
;    = day
((guard_equation
   (guards)
   "="
   (_) @_start @_end)
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
 (exp_apply . (_) (_) @_start @_end)
 (#make-range! "range" @_start @_end))

; function definition lhs
((function
    pattern: (_) @_start @_end)
 (#make-range! "range" @_start @_end))

; function definition rhs (this matters if it is not a do)
((function . (_)+
    rhs: (_) @_start @_end)
 (#make-range! "range" @_start @_end)
)

; let-in rhs
(
 ; test =
 ;     let
 ;         a = 1
 ;         b = 2
 ;     in a + b
 (exp_let_in (exp_let) (exp_in "in" (_) @_start @_end))
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
  (field (_)) @_start @_end . (comma)? @_end
 )
 (#make-range! "range" @_start @_end))

([
  ; lhs of a bind_pattern assignment
  ; MkTy {tyOne, tyTwo} <- undefined
  (bind_pattern . (_) @_start @_end)
  ; rhs
  (bind_pattern (_) @_start @_end .)
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
    type: "::"
    type: (_) @_start @_end
  )
 ]
 (#make-range! "range" @_start @_end)
)

(((_) @head . (comment) @_start . (comment)+ @_end (_) @tail)
    (#not-has-type? @tail "comment")
    (#not-has-type? @head "comment")
    (#make-range! "range" @_start @_end))
