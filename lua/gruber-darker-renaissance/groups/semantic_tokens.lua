local M = {}

---LSP semantic tokens, see `:h lsp-semantic-highlight`.
---An empty group adds no attributes, so tree-sitter highlighting shows through.
---@param c GruberDarkerRenaissanceColors
---@param opts GruberDarkerRenaissanceConfig
---@return GruberDarkerRenaissanceHighlights
function M.get(c, opts)
	return {
		["@lsp.type.class"] = "@type",
		["@lsp.type.decorator"] = "@attribute",
		["@lsp.type.enum"] = "@type",
		["@lsp.type.enumMember"] = "@constant",
		["@lsp.type.function"] = "@function",
		["@lsp.type.interface"] = "@type",
		["@lsp.type.macro"] = "@constant.macro",
		["@lsp.type.method"] = "@function.method",
		["@lsp.type.namespace"] = "@module",
		["@lsp.type.parameter"] = "@variable.parameter",
		["@lsp.type.property"] = "@variable.member",
		["@lsp.type.struct"] = "@type",
		["@lsp.type.type"] = "@type",
		["@lsp.type.typeParameter"] = "@type",

		-- Tree-sitter is more granular for these
		["@lsp.type.comment"] = {},
		["@lsp.type.keyword"] = {},
		["@lsp.type.modifier"] = {},
		["@lsp.type.number"] = {},
		["@lsp.type.operator"] = {},
		["@lsp.type.regexp"] = {},
		["@lsp.type.string"] = {},
		["@lsp.type.variable"] = {},

		["@lsp.mod.deprecated"] = { strikethrough = true },
		["@lsp.typemod.function.defaultLibrary"] = "@function.builtin",
		["@lsp.typemod.variable.defaultLibrary"] = "@variable.builtin",
	}
end

return M
