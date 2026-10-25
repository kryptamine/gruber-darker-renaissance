local M = {}

---https://github.com/saghen/blink.cmp
---@param c GruberDarkerRenaissanceColors
---@param opts GruberDarkerRenaissanceConfig
---@return GruberDarkerRenaissanceHighlights
function M.get(c, opts)
	local groups = {
		BlinkCmpMenu = "Pmenu",
		BlinkCmpMenuBorder = { fg = c.border, bg = c.bg_popup },
		BlinkCmpMenuSelection = "PmenuSel",
		BlinkCmpScrollBarThumb = { bg = c.bg4 },
		BlinkCmpScrollBarGutter = { bg = c.bg_popup },

		BlinkCmpLabel = { fg = c.fg },
		BlinkCmpLabelMatch = { fg = c.yellow, bold = opts.bold },
		BlinkCmpLabelDeprecated = { fg = c.fg_muted, strikethrough = true },
		BlinkCmpLabelDetail = { fg = c.fg_muted },
		BlinkCmpLabelDescription = { fg = c.fg_muted },
		BlinkCmpSource = { fg = c.fg_muted },
		BlinkCmpGhostText = "NonText",

		BlinkCmpDoc = "NormalFloat",
		BlinkCmpDocBorder = { fg = c.border, bg = c.bg_float },
		BlinkCmpDocSeparator = { fg = c.border, bg = c.bg_float },
		BlinkCmpDocCursorLine = "Visual",
		BlinkCmpSignatureHelp = "NormalFloat",
		BlinkCmpSignatureHelpBorder = { fg = c.border, bg = c.bg_float },
		BlinkCmpSignatureHelpActiveParameter = { fg = c.yellow, bold = opts.bold },

		BlinkCmpKind = { fg = c.fg1 },
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
		groups["BlinkCmpKind" .. kind] = hl
	end

	return groups
end

return M
