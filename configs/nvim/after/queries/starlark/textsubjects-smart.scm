; 90% copy pasta from the Python query with removal of nonexistent language
; features:
; - with statements
; - set literals
; - try/catch
;
; and the addition of some finer grained selections like "the call expression"

((comment) @_start @_end
    (#make-range! "range" @_start @_end))

; TODO This query doesn't work for comment groups at the start and end of a
; file
; See https://github.com/tree-sitter/tree-sitter/issues/1138
(((_) @head . (comment) @_start . (comment)+ @_end (_) @tail)
    (#not-kind-eq? @tail "comment")
    (#not-kind-eq? @head "comment")
    (#make-range! "range" @_start @_end))

(([
    (function_definition)
    (while_statement)
    (for_statement)
    (if_statement)
] @_start @_end)
(#make-range! "range" @_start @_end))

((parameters (_) @_start @_end . ","? @_end)
    (#make-range! "range" @_start @_end))

((argument_list (_) @_start @_end . ","? @_end)
    (#make-range! "range" @_start @_end))

((tuple (_) @_start @_end . ","? @_end)
    (#make-range! "range" @_start @_end))

((list (_) @_start @_end . ","? @_end)
    (#make-range! "range" @_start @_end))

((dictionary (_) @_start @_end . ","? @_end)
    (#make-range! "range" @_start @_end))

((return_statement (_) @_start @_end)
    (#make-range! "range" @_start @_end))

((call) @_start @_end
    (#make-range! "range" @_start @_end))

; entire statement
((block (_) @_start @_end)
    (#make-range! "range" @_start @_end))

; entire top level statement (e.g. rule call in a BUILD file)
((module (_) @_start @_end)
    (#make-range! "range" @_start @_end))
