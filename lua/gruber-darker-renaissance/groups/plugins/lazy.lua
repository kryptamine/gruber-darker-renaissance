local M = {}

---https://github.com/folke/lazy.nvim
---@param c GruberDarkerRenaissanceColors
---@param opts GruberDarkerRenaissanceConfig
---@return GruberDarkerRenaissanceHighlights
function M.get(c, opts)
	return {
		-- The default `Conceal` is plain text here, not dimmed
		LazyDimmed = { fg = c.fg_muted },
		LazyProp = { fg = c.fg_muted },

		LazyProgressDone = { fg = c.yellow },
		LazyDir = "Directory",
		LazyUrl = "@markup.link.url",
		-- Neovim no longer defines `@macro`
		LazyReasonRuntime = "PreProc",
	}
end

return M
