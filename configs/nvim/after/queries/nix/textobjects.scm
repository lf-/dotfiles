;; extends
(function_expression
  universal: (_)
  body: (_) @function.inner
) @function.outer

(apply_expression
    function: (_)
    argument: (_) @parameter.inner @parameter.outer
)
