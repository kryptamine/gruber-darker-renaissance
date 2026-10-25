local M = {}

---https://github.com/mason-org/mason.nvim
---@param c GruberDarkerRenaissanceColors
---@param opts GruberDarkerRenaissanceConfig
---@return GruberDarkerRenaissanceHighlights
function M.get(c, opts)
	return {
		MasonHeader = { fg = c.black, bg = c.yellow, bold = opts.bold },
		MasonHeaderSecondary = { fg = c.black, bg = c.niagara, bold = opts.bold },

		MasonHighlight = { fg = c.yellow },
		MasonHighlightBlock = { fg = c.black, bg = c.yellow },
		MasonHighlightBlockBold = { fg = c.black, bg = c.yellow, bold = opts.bold },

		MasonHighlightSecondary = { fg = c.niagara },
		MasonHighlightBlockSecondary = { fg = c.black, bg = c.niagara },
		MasonHighlightBlockBoldSecondary = { fg = c.black, bg = c.niagara, bold = opts.bold },

		MasonMuted = { fg = c.fg_muted },
		MasonMutedBlock = { fg = c.black, bg = c.fg_muted },
		MasonMutedBlockBold = { fg = c.black, bg = c.fg_muted, bold = opts.bold },
	}
end

return M
