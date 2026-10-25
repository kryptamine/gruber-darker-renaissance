local M = {}

---https://github.com/ibhagwan/fzf-lua
---@param c GruberDarkerRenaissanceColors
---@param opts GruberDarkerRenaissanceConfig
---@return GruberDarkerRenaissanceHighlights
function M.get(c, opts)
	local title = { fg = c.black, bg = c.yellow }
	local border = { fg = c.bg1_5, bg = c.bg }

	return {
		FzfLuaNormal = { fg = c.fg, bg = c.bg },
		FzfLuaBorder = border,
		FzfLuaTitle = title,
		FzfLuaPreviewNormal = { fg = c.fg, bg = c.bg },
		FzfLuaPreviewBorder = border,
		FzfLuaPreviewTitle = title,
		FzfLuaDirPart = "NonText",
		FzfLuaFilePart = { fg = c.fg },
		FzfLuaCursorLine = "CursorLine",
		FzfLuaSearch = "IncSearch",
		FzfLuaHeaderBind = { fg = c.yellow },
		FzfLuaHeaderText = { fg = c.quartz },
		FzfLuaPathLineNr = { fg = c.green },
		FzfLuaPathColNr = { fg = c.fg_muted },
		FzfLuaBufNr = { fg = c.yellow },
		FzfLuaBufFlagCur = { fg = c.yellow },
		FzfLuaBufFlagAlt = { fg = c.niagara },
		FzfLuaTabTitle = { fg = c.niagara, bold = opts.bold },
		FzfLuaTabMarker = { fg = c.yellow, bold = opts.bold },
		FzfLuaLiveSym = { fg = c.yellow },

		-- Groups fzf itself is colored with (via `fzf_colors = true`)
		FzfLuaFzfMatch = { fg = c.yellow, bold = opts.bold },
		FzfLuaFzfPrompt = { fg = c.yellow },
		FzfLuaFzfPointer = { fg = c.yellow },
		FzfLuaFzfMarker = { fg = c.yellow },
		FzfLuaFzfInfo = { fg = c.fg_muted },
		FzfLuaFzfSpinner = { fg = c.yellow },
		FzfLuaFzfHeader = { fg = c.quartz },
		FzfLuaFzfGutter = { bg = c.bg },
		FzfLuaFzfSeparator = { fg = c.bg1_5 },
		FzfLuaFzfScrollbar = { fg = c.bg4 },
	}
end

return M
