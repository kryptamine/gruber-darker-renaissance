local M = {}

---https://alacritty.org
M.path = "alacritty/gruber-darker-renaissance.toml"

local names = { "black", "red", "green", "yellow", "blue", "magenta", "cyan", "white" }

---@param c GruberDarkerRenaissanceColors
---@param ansi string[]
---@return string
function M.render(c, ansi)
	local lines = {
		"[colors.primary]",
		('background = "%s"'):format(c.bg),
		('foreground = "%s"'):format(c.fg),
		"",
		"[colors.cursor]",
		('text = "%s"'):format(c.bg1),
		('cursor = "%s"'):format(c.cursor),
		"",
		"[colors.selection]",
		'text = "CellForeground"',
		('background = "%s"'):format(c.bg_visual),
	}
	for s, section in ipairs({ "normal", "bright" }) do
		vim.list_extend(lines, { "", ("[colors.%s]"):format(section) })
		for i, name in ipairs(names) do
			table.insert(lines, ('%s = "%s"'):format(name, ansi[(s - 1) * 8 + i]))
		end
	end
	return table.concat(lines, "\n")
end

return M
