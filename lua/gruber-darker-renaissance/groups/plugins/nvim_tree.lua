local M = {}

---https://github.com/nvim-tree/nvim-tree.lua
---@param c GruberDarkerRenaissanceColors
---@param opts GruberDarkerRenaissanceConfig
---@return GruberDarkerRenaissanceHighlights
function M.get(c, opts)
	return {
		NvimTreeFolderIcon = { fg = c.niagara },
		NvimTreeIndentMarker = { fg = c.bg4 },
		NvimTreeWindowPicker = { fg = c.black, bg = c.yellow, bold = opts.bold },
		NvimTreeLiveFilterPrefix = { fg = c.yellow },
		NvimTreeModifiedIcon = { fg = c.git.change },
		NvimTreeHiddenIcon = { fg = c.fg_muted },
		NvimTreeHiddenDisplay = { fg = c.fg_muted },

		-- The defaults link to syntax groups, which here read as yellow and quartz
		NvimTreeGitDeletedIcon = { fg = c.git.delete },
		NvimTreeGitDirtyIcon = { fg = c.git.change },
		NvimTreeGitMergeIcon = { fg = c.red },
		NvimTreeGitNewIcon = { fg = c.git.add },
		NvimTreeGitRenamedIcon = { fg = c.git.change },
		NvimTreeGitStagedIcon = { fg = c.git_staged.add },
	}
end

return M
