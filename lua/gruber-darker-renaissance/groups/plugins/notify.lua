local M = {}

---https://github.com/rcarriga/nvim-notify
---@param c GruberDarkerRenaissanceColors
---@param opts GruberDarkerRenaissanceConfig
---@return GruberDarkerRenaissanceHighlights
function M.get(c, opts)
	local groups = {}

	for level, color in pairs({ ERROR = c.diag.error, WARN = c.diag.warn, INFO = c.diag.info }) do
		groups["Notify" .. level .. "Border"] = { fg = color }
		groups["Notify" .. level .. "Icon"] = { fg = color }
		groups["Notify" .. level .. "Title"] = { fg = color, bold = opts.bold }
	end
	for _, level in ipairs({ "DEBUG", "TRACE" }) do
		groups["Notify" .. level .. "Border"] = "NonText"
		groups["Notify" .. level .. "Icon"] = "NonText"
		groups["Notify" .. level .. "Title"] = "NonText"
	end

	return groups
end

return M
