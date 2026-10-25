local M = {}

---https://github.com/SmiteshP/nvim-navic
---@param c GruberDarkerRenaissanceColors
---@param opts GruberDarkerRenaissanceConfig
---@return GruberDarkerRenaissanceHighlights
function M.get(c, opts)
	local groups = {
		NavicText = { fg = c.fg },
		NavicSeparator = { fg = c.syntax.punctuation },
	}

	---@type table<string, GruberDarkerRenaissanceHighlight>
	local kinds = {
		File = { fg = c.niagara },
		Module = "Define",
		Namespace = "Define",
		Package = "Define",
		Class = "Type",
		Interface = "Type",
		Enum = "Type",
		EnumMember = "Type",
		Struct = { fg = c.niagara },
		Method = "Function",
		Function = "Function",
		Constructor = "Function",
		Field = { fg = c.syntax.field },
		Property = { fg = c.syntax.property },
		Variable = "Identifier",
		TypeParameter = "Identifier",
		Constant = "Constant",
		String = { fg = c.syntax.string },
		Number = "Number",
		Boolean = "Boolean",
		Array = "Type",
		Object = "Type",
		Key = "Keyword",
		Null = "Constant",
		Event = { fg = c.yellow },
		Operator = "Operator",
	}
	for kind, hl in pairs(kinds) do
		groups["NavicIcons" .. kind] = hl
	end

	return groups
end

return M
