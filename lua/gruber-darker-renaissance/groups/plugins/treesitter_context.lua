local M = {}

---https://github.com/nvim-treesitter/nvim-treesitter-context
---@param c GruberDarkerRenaissanceColors
---@param opts GruberDarkerRenaissanceConfig
---@return GruberDarkerRenaissanceHighlights
function M.get(c, opts)
	return {
		-- Floats sit on the buffer's black, so the context needs its own shade
		TreesitterContext = { bg = c.bg_dim },
		TreesitterContextBottom = { sp = c.border, underline = opts.underline },
	}
end

return M
