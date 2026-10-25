local M = {}

---https://github.com/dmtrKovalenko/fff.nvim
---@param c GruberDarkerRenaissanceColors
---@param opts GruberDarkerRenaissanceConfig
---@return GruberDarkerRenaissanceHighlights
function M.get(c, opts)
	local groups = {}

	local git = {
		Staged = c.git.add,
		Modified = c.git.change,
		Deleted = c.git.delete,
		Renamed = c.niagara,
		Untracked = c.git.add,
		Ignored = c.bg4,
	}
	for status, color in pairs(git) do
		groups["FFFGit" .. status] = { fg = color }
		groups["FFFGitSign" .. status] = { fg = color }
	end

	return groups
end

return M
