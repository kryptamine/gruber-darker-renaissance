local M = {}

---Legacy Vim syntax groups, see `:h group-name`
---@param c GruberDarkerRenaissanceColors
---@param opts GruberDarkerRenaissanceConfig
---@return GruberDarkerRenaissanceHighlights
function M.get(c, opts)
	local s = c.syntax
	local keyword = { fg = s.keyword, bold = opts.bold }

	return {
		Comment = { fg = s.comment, italic = opts.italic.comments },
		SpecialComment = { fg = s.comment, bold = opts.bold },
		Todo = { fg = c.black, bg = c.yellow },

		Constant = { fg = s.constant },
		String = { fg = s.string, italic = opts.italic.strings },
		Character = "String",
		Number = { fg = s.number },
		Float = "Number",
		Boolean = keyword,

		Identifier = { fg = s.variable },
		Function = { fg = s.func },

		Statement = { fg = s.keyword },
		Conditional = keyword,
		Repeat = keyword,
		Label = keyword,
		Keyword = keyword,
		Exception = keyword,
		Operator = { fg = s.operator, italic = opts.italic.operators },

		PreProc = { fg = s.preproc },
		Include = "PreProc",
		Define = "PreProc",
		Macro = "PreProc",
		PreCondit = "PreProc",

		Type = { fg = s.type },
		StorageClass = keyword,
		Structure = keyword,
		Typedef = keyword,

		Special = { fg = s.special },
		SpecialChar = "Special",
		Tag = "Special",
		Delimiter = { fg = s.punctuation },
		Debug = { fg = c.fg1 },

		Underlined = { fg = c.niagara, underline = opts.underline },
		Bold = { bold = opts.bold },
		Italic = { italic = true },

		-- Diff filetype / fugitive
		diffAdded = "Added",
		diffRemoved = "Removed",
		diffChanged = "Changed",
		diffLine = { fg = c.niagara },

		-- Markdown (regex syntax)
		markdownHeadingDelimiter = { fg = c.niagara, bold = opts.bold },
		markdownCode = { fg = c.green },
		markdownCodeBlock = { fg = c.green },
		markdownCodeDelimiter = { fg = s.punctuation, italic = true },
		markdownItalic = "Italic",
		markdownBold = keyword,
		markdownError = { fg = c.fg, bg = c.bg1 },
	}
end

return M
