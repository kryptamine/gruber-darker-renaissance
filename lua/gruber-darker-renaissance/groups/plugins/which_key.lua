local M = {}

---https://github.com/folke/which-key.nvim
---@param c GruberDarkerRenaissanceColors
---@param opts GruberDarkerRenaissanceConfig
---@return GruberDarkerRenaissanceHighlights
function M.get(c, opts)
	return {
		WhichKey = { fg = c.yellow },
		WhichKeyGroup = { fg = c.niagara },
		WhichKeyTitle = { fg = c.black, bg = c.yellow },
		WhichKeyIcon = { fg = c.niagara },
	}
end

return M
