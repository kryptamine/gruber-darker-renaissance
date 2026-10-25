local M = {}

---https://ghostty.org
M.path = "ghostty/gruber-darker-renaissance"

---@param c GruberDarkerRenaissanceColors
---@param ansi string[]
---@return string
function M.render(c, ansi)
	local lines = {
		"background = " .. c.bg,
		"foreground = " .. c.fg,
		"cursor-color = " .. c.cursor,
		"cursor-text = " .. c.bg1,
		"selection-background = " .. c.bg_visual,
		"selection-foreground = cell-foreground",
		"",
	}
	for i, color in ipairs(ansi) do
		table.insert(lines, ("palette = %d=%s"):format(i - 1, color))
	end
	return table.concat(lines, "\n")
end

return M
