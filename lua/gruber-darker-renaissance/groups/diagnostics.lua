local M = {}

---Diagnostic groups, see `:h diagnostic-highlights`
---@param c GruberDarkerRenaissanceColors
---@param opts GruberDarkerRenaissanceConfig
---@return GruberDarkerRenaissanceHighlights
function M.get(c, opts)
	local groups = {
		DiagnosticUnnecessary = "Comment",
	}

	for _, level in ipairs({ "Error", "Warn", "Info", "Hint" }) do
		local color = c.diag[level:lower()]
		groups["Diagnostic" .. level] = { fg = color, bold = opts.bold }
		groups["DiagnosticSign" .. level] = { fg = color, reverse = opts.invert.signs }
		groups["DiagnosticUnderline" .. level] = { sp = color, undercurl = opts.undercurl }
	end

	return groups
end

return M
