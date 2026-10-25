local M = {}

---https://github.com/folke/snacks.nvim
---@param c GruberDarkerRenaissanceColors
---@param opts GruberDarkerRenaissanceConfig
---@return GruberDarkerRenaissanceHighlights
function M.get(c, opts)
	local title = { fg = c.black, bg = c.yellow }

	return {
		SnacksPickerTitle = title,
		SnacksPickerSelected = { fg = c.yellow },
		SnacksPickerRow = { fg = c.green },

		SnacksInputTitle = title,
		SnacksInputBorder = { fg = c.border },
		SnacksInputIcon = { fg = c.yellow },

		SnacksDashboardHeader = { fg = c.yellow },
		SnacksDashboardKey = { fg = c.yellow },
		SnacksDashboardDesc = { fg = c.fg },
		SnacksDashboardFile = { fg = c.fg },
		SnacksDashboardIcon = { fg = c.niagara },
	}
end

return M
