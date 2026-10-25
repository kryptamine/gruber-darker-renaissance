;extends

; A whole decorator in one color. Priority 130 outranks LSP semantic tokens
; (125), which color the name as a function
(decorator
  "@" @attribute
  [
    (identifier) @attribute
    (call_expression
      function: (identifier) @attribute
      arguments: (arguments
        "(" @attribute
        ")" @attribute))
  ]
  (#set! priority 130))
