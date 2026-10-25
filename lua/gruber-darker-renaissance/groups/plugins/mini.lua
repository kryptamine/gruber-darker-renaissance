local M = {}

---https://github.com/nvim-mini/mini.nvim
---@param c GruberDarkerRenaissanceColors
---@param opts GruberDarkerRenaissanceConfig
---@return GruberDarkerRenaissanceHighlights
function M.get(c, opts)
	local title = { fg = c.black, bg = c.yellow }

	return {
		MiniStatuslineModeNormal = { fg = c.black, bg = c.yellow, bold = opts.bold },
		MiniStatuslineModeInsert = { fg = c.black, bg = c.green, bold = opts.bold },
		MiniStatuslineModeVisual = { fg = c.black, bg = c.niagara, bold = opts.bold },
		MiniStatuslineModeReplace = { fg = c.black, bg = c.red, bold = opts.bold },
		MiniStatuslineModeCommand = { fg = c.black, bg = c.quartz, bold = opts.bold },

		MiniFilesTitle = { fg = c.fg_muted },
		MiniFilesTitleFocused = title,

		MiniPickBorderText = title,
		MiniPickMatchRanges = { fg = c.yellow, bold = opts.bold },
		MiniPickPrompt = { fg = c.yellow },

		MiniClueTitle = title,
		MiniClueNextKey = { fg = c.yellow },
		MiniClueDescGroup = { fg = c.niagara },
		MiniClueSeparator = { fg = c.fg_muted },

		MiniCursorword = "LspReferenceText",

		MiniStarterHeader = { fg = c.yellow },
		MiniStarterFooter = "Comment",
		MiniStarterQuery = { fg = c.yellow, bold = opts.bold },
	}
end

return M
