local M = {}

---https://github.com/nvim-mini/mini.icons
---@param c GruberDarkerRenaissanceColors
---@param opts GruberDarkerRenaissanceConfig
---@return GruberDarkerRenaissanceHighlights
function M.get(c, opts)
	return {
		MiniIconsAzure = { fg = c.niagara },
		MiniIconsBlue = { fg = c.niagara },
		MiniIconsCyan = { fg = c.quartz },
		MiniIconsGreen = { fg = c.green },
		MiniIconsGrey = { fg = c.fg },
		MiniIconsOrange = { fg = c.brown },
		MiniIconsPurple = { fg = c.wisteria },
		MiniIconsRed = { fg = c.red },
		MiniIconsYellow = { fg = c.yellow },
	}
end

return M
