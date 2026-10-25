local M = {}

---https://github.com/jake-stewart/multicursor.nvim
---@param c GruberDarkerRenaissanceColors
---@param opts GruberDarkerRenaissanceConfig
---@return GruberDarkerRenaissanceHighlights
function M.get(c, opts)
	return {
		MultiCursorCursor = { fg = c.black, bg = c.cursor },
		MultiCursorVisual = "Visual",
		MultiCursorSign = { fg = c.yellow },
		MultiCursorMainSign = { fg = c.yellow, bold = opts.bold },
		MultiCursorMatchPreview = "Search",
		MultiCursorDisabledCursor = { fg = c.black, bg = c.bg4 },
		MultiCursorDisabledVisual = { bg = c.bg1 },
		MultiCursorDisabledSign = { fg = c.bg4 },
	}
end

return M
