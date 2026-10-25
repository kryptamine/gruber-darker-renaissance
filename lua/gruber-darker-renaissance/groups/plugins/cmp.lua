local M = {}

---https://github.com/hrsh7th/nvim-cmp
---@param c GruberDarkerRenaissanceColors
---@param opts GruberDarkerRenaissanceConfig
---@return GruberDarkerRenaissanceHighlights
function M.get(c, opts)
	local groups = {
		CmpItemAbbrMatch = { fg = c.yellow, bold = opts.bold },
		CmpItemAbbrMatchFuzzy = "CmpItemAbbrMatch",
		CmpItemAbbrDeprecated = { fg = c.fg_muted, strikethrough = true },
		CmpItemMenu = { fg = c.fg_muted },
		CmpItemKind = { fg = c.fg1 },
		CmpItemKindIcon = "CmpItemKind",
	}

	---@type table<string, GruberDarkerRenaissanceHighlight>
	local kinds = {
		Text = { fg = c.fg1 },
		Method = "Function",
		Function = "Function",
		Constructor = "Function",
		Field = { fg = c.syntax.field },
		Property = { fg = c.syntax.property },
		Variable = "Identifier",
		TypeParameter = "Identifier",
		Class = "Type",
		Interface = "Type",
		Value = "Type",
		Enum = "Type",
		EnumMember = "Type",
		Struct = { fg = c.niagara },
		Module = "Define",
		Keyword = "Keyword",
		Constant = "Constant",
		Operator = "Operator",
		Unit = { fg = c.fg_muted },
		Snippet = { fg = c.fg_muted },
		Color = { fg = c.yellow },
		File = { fg = c.niagara },
		Folder = { fg = c.niagara },
		Reference = { fg = c.niagara },
		Event = { fg = c.yellow },
	}
	for kind, hl in pairs(kinds) do
		groups["CmpItemKind" .. kind] = hl
		groups["CmpItemKind" .. kind .. "Icon"] = "CmpItemKind" .. kind
	end

	return groups
end

return M
