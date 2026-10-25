local M = {}

---https://github.com/RRethy/vim-illuminate
---@param c GruberDarkerRenaissanceColors
---@param opts GruberDarkerRenaissanceConfig
---@return GruberDarkerRenaissanceHighlights
function M.get(c, opts)
	return {
		IlluminatedWordText = "LspReferenceText",
		IlluminatedWordRead = "LspReferenceRead",
		IlluminatedWordWrite = "LspReferenceWrite",
	}
end

return M
