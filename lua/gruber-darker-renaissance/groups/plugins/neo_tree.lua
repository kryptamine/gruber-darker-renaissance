local M = {}

---https://github.com/nvim-neo-tree/neo-tree.nvim
---@param c GruberDarkerRenaissanceColors
---@param opts GruberDarkerRenaissanceConfig
---@return GruberDarkerRenaissanceHighlights
function M.get(c, opts)
	return {
		NeoTreeFloatTitle = { fg = c.black, bg = c.yellow },
		NeoTreeTitleBar = { fg = c.black, bg = c.yellow },
		NeoTreeRootName = { fg = c.fg1, bold = opts.bold },
		NeoTreeModified = { fg = c.git.change },

		NeoTreeDimText = { fg = c.bg4 },
		NeoTreeFadeText1 = { fg = c.fg_muted },
		NeoTreeFadeText2 = { fg = c.bg4 },
		NeoTreeDotfile = { fg = c.fg_muted },
		NeoTreeMessage = { fg = c.fg_muted },
		NeoTreeFileStats = { fg = c.fg_muted },
		NeoTreeFileStatsHeader = { fg = c.fg_muted, bold = opts.bold },

		NeoTreeGitConflict = { fg = c.red, bold = opts.bold },
		NeoTreeGitUntracked = { fg = c.git.add },

		NeoTreeTabActive = { fg = c.yellow, bold = opts.bold },
		NeoTreeTabInactive = { fg = c.fg_muted, bg = c.bg1 },
		NeoTreeTabSeparatorActive = { fg = c.bg },
		NeoTreeTabSeparatorInactive = { fg = c.bg1, bg = c.bg1 },
	}
end

return M
