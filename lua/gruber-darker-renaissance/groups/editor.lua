local M = {}

---Built-in UI groups, see `:h highlight-groups`
---@param c GruberDarkerRenaissanceColors
---@param opts GruberDarkerRenaissanceConfig
---@return GruberDarkerRenaissanceHighlights
function M.get(c, opts)
	return {
		Normal = { fg = c.fg, bg = c.bg },
		NormalNC = { fg = c.fg, bg = c.bg },
		NormalSB = { fg = c.fg, bg = c.bg_sidebar },
		NormalFloat = { fg = c.fg, bg = c.bg_float },
		FloatBorder = { fg = c.border },

		Cursor = { bg = c.cursor },
		lCursor = { bg = c.cursor },
		CursorIM = { bg = c.cursor },
		TermCursor = { bg = c.cursor },
		CursorLine = { bg = c.bg_highlight },
		CursorColumn = { bg = c.bg_highlight },
		ColorColumn = { bg = c.bg_highlight },
		Visual = { bg = c.bg_visual, reverse = opts.invert.visual },
		VisualNOS = "Visual",

		LineNr = { fg = c.fg_gutter },
		CursorLineNr = { fg = c.yellow },
		SignColumn = { fg = c.bg2 },
		SignColumnSB = { fg = c.bg2, bg = c.bg_sidebar },
		FoldColumn = { fg = c.fg_gutter },
		Folded = { fg = c.syntax.comment, bg = c.bg_highlight, italic = opts.italic.folds },

		EndOfBuffer = { fg = c.bg4 },
		NonText = "EndOfBuffer",
		Whitespace = { fg = c.bg4 },
		SpecialKey = { fg = c.fg1 },
		Conceal = { fg = c.fg, bg = c.bg },
		MatchParen = { fg = c.fg1, bg = c.bg_match, bold = opts.bold },
		LspReferenceText = { bg = c.bg_match },
		LspReferenceRead = "LspReferenceText",
		LspReferenceWrite = "LspReferenceText",
		Directory = { fg = c.niagara, bold = opts.bold },
		Title = { fg = c.quartz },

		VertSplit = { fg = c.fg1, bg = c.bg1 },
		WinSeparator = { fg = c.separator, bold = opts.bold },

		ErrorMsg = { fg = c.fg1, bg = c.red },
		WarningMsg = { fg = c.diag.warn },
		ModeMsg = { fg = c.fg1 },
		MoreMsg = { fg = c.fg1 },
		Question = { fg = c.niagara },

		Pmenu = { fg = c.fg, bg = c.bg_popup },
		PmenuSel = { fg = c.fg, bg = c.bg_visual },
		PmenuMatch = { fg = c.yellow, bold = opts.bold },
		PmenuExtra = { fg = c.fg_muted, bg = c.bg_popup },
		PmenuSbar = { bg = c.bg_popup },
		PmenuThumb = { bg = c.bg4 },
		WildMenu = { fg = c.black, bg = c.yellow },
		QuickFixLine = { bg = c.bg_visual, bold = opts.bold },

		Search = { fg = c.black, bg = c.niagara },
		IncSearch = { fg = c.black, bg = c.yellow },
		CurSearch = "IncSearch",

		SpellBad = { sp = c.red, undercurl = opts.undercurl },
		SpellCap = { undercurl = opts.undercurl },
		SpellLocal = { undercurl = opts.undercurl },
		SpellRare = { undercurl = opts.undercurl },

		StatusLine = { fg = c.fg1, bg = c.bg_statusline },
		StatusLineNC = { fg = c.quartz, bg = c.bg_statusline },

		TabLine = {},
		TabLineFill = { fg = c.bg4, bg = c.bg1 },
		TabLineSel = { fg = c.yellow, bold = opts.bold, reverse = opts.invert.tabline },

		Added = { fg = c.git.add },
		Changed = { fg = c.git.change },
		Removed = { fg = c.git.delete },

		-- Backgrounds only, so the syntax colors stay readable inside a diff
		DiffAdd = { bg = c.diff.add },
		DiffChange = { bg = c.diff.change },
		DiffDelete = { fg = c.git.delete, bg = c.diff.delete },
		DiffText = { bg = c.diff.text },
	}
end

return M
