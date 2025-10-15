;; extends

; PR: https://github.com/nvim-treesitter/nvim-treesitter/pull/8192
((module
  (expression_statement
    (call
      arguments: (argument_list
        (keyword_argument
          name: (identifier) @_name
          value: (string (string_content) @local.definition.target))))))
  (#eq? @_name "name")
)
