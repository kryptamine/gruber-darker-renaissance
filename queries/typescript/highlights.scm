;extends

; The grammar reads sql<number>`...` as two comparisons, so the type
; argument of a tagged template comes back as a variable
(binary_expression
  left: (binary_expression
    left: (identifier)
    operator: "<"
    right: (identifier) @type)
  operator: ">"
  right: (template_string))

(binary_expression
  left: (binary_expression
    left: (identifier)
    operator: "<"
    right: (identifier) @type.builtin)
  operator: ">"
  right: (template_string)
  (#any-of? @type.builtin
    "any" "bigint" "boolean" "never" "number" "object" "string" "symbol" "undefined" "unknown" "void"))
