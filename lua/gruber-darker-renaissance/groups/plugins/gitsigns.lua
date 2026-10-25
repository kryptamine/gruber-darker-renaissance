local M = {}

---https://github.com/lewis6991/gitsigns.nvim
---@param c GruberDarkerRenaissanceColors
---@param opts GruberDarkerRenaissanceConfig
---@return GruberDarkerRenaissanceHighlights
function M.get(c, opts)
	return {
		GitSignsAdd = "Added",
		GitSignsChange = "Changed",
		GitSignsDelete = "Removed",
	}
end

return M
