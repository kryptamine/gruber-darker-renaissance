local M = {}

---https://github.com/lewis6991/gitsigns.nvim
---@param c GruberDarkerRenaissanceColors
---@param opts GruberDarkerRenaissanceConfig
---@return GruberDarkerRenaissanceHighlights
function M.get(c, opts)
	local groups = {
		GitSignsAdd = "Added",
		GitSignsChange = "Changed",
		GitSignsDelete = "Removed",
		GitSignsDiffStaged = { fg = c.gray },
	}

	local staged = {
		Add = c.git_staged.add,
		Untracked = c.git_staged.add,
		Change = c.git_staged.change,
		Changedelete = c.git_staged.change,
		Delete = c.git_staged.delete,
		Topdelete = c.git_staged.delete,
	}
	for kind, color in pairs(staged) do
		for _, suffix in ipairs({ "", "Nr", "Cul" }) do
			groups["GitSignsStaged" .. kind .. suffix] = { fg = color }
		end
	end

	return groups
end

return M
