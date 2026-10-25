local M = {}

---https://github.com/lukas-reineke/indent-blankline.nvim
---@param c GruberDarkerRenaissanceColors
---@param opts GruberDarkerRenaissanceConfig
---@return GruberDarkerRenaissanceHighlights
function M.get(c, opts)
	return {
		IblIndent = { fg = c.bg1_5 },
		IblWhitespace = "IblIndent",
		IblScope = { fg = c.bg4 },
	}
end

return M
