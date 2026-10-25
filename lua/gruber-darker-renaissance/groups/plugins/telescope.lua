local M = {}

---https://github.com/nvim-telescope/telescope.nvim
---@param c GruberDarkerRenaissanceColors
---@param opts GruberDarkerRenaissanceConfig
---@return GruberDarkerRenaissanceHighlights
function M.get(c, opts)
	return {
		TelescopeBorder = { fg = c.border, bg = c.bg_float },
		TelescopeTitle = { fg = c.black, bg = c.yellow },
		TelescopePromptPrefix = { fg = c.yellow },
		TelescopeSelectionCaret = { fg = c.yellow, bg = c.bg_visual },
		TelescopeMultiSelection = { fg = c.yellow },
		TelescopeMatching = { fg = c.yellow, bold = opts.bold },

		-- Neovim defines no `Method` or `Struct`, the defaults render as plain text
		TelescopeResultsMethod = "Function",
		TelescopeResultsStruct = "Type",
		TelescopeResultsVariable = "Identifier",

		-- The theme's Diff* are backgrounds only, unreadable as a status letter
		TelescopeResultsDiffAdd = { fg = c.git.add },
		TelescopeResultsDiffChange = { fg = c.git.change },
		TelescopeResultsDiffDelete = { fg = c.git.delete },
		TelescopeResultsDiffUntracked = { fg = c.fg_muted },
	}
end

return M
