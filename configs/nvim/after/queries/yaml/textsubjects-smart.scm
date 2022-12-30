;; extends

([
  (block_sequence)
  (block_mapping_pair)
 ] @_start @_end
 (#make-range! "range" @_start @_end))

((block_mapping_pair
   key: (_) @_start @_end)
 (#make-range! "range" @_start @_end))

((block_mapping_pair
   value: (_) @_start @_end)
 (#make-range! "range" @_start @_end))
