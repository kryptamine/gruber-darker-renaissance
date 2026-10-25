local M = {}

---https://github.com/nvimdev/dashboard-nvim
---@param c GruberDarkerRenaissanceColors
---@param opts GruberDarkerRenaissanceConfig
---@return GruberDarkerRenaissanceHighlights
function M.get(c, opts)
	local icon = { fg = c.niagara }
	local section = { fg = c.fg1, bold = opts.bold }

	return {
		DashboardHeader = { fg = c.yellow },
		DashboardFooter = "Comment",
		DashboardKey = { fg = c.yellow, bold = opts.bold },
		DashboardShortCut = { fg = c.yellow },
		DashboardIcon = icon,
		DashboardShortCutIcon = icon,
		DashboardProjectIcon = icon,
		DashboardProjectTitleIcon = icon,
		DashboardRecentProjectIcon = icon,
		DashboardMruIcon = icon,
		DashboardProjectTitle = section,
		DashboardMruTitle = section,
	}
end

return M
