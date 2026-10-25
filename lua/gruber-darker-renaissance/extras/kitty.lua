local M = {}

---https://sw.kovidgoyal.net/kitty
M.path = "kitty/gruber-darker-renaissance.conf"

---@param c GruberDarkerRenaissanceColors
---@param ansi string[]
---@return string
function M.render(c, ansi)
	local lines = {
		"background " .. c.bg,
		"foreground " .. c.fg,
		"cursor " .. c.cursor,
		"cursor_text_color " .. c.bg1,
		"selection_background " .. c.bg_visual,
		"selection_foreground none",
		"url_color " .. c.niagara,
		"active_border_color " .. c.yellow,
		"inactive_border_color " .. c.border,
		"bell_border_color " .. c.red,
		"active_tab_foreground " .. c.black,
		"active_tab_background " .. c.yellow,
		"inactive_tab_foreground " .. c.fg_muted,
		"inactive_tab_background " .. c.bg1,
		"tab_bar_background " .. c.bg,
		"mark1_foreground " .. c.black,
		"mark1_background " .. c.yellow,
		"mark2_foreground " .. c.black,
		"mark2_background " .. c.niagara,
		"mark3_foreground " .. c.black,
		"mark3_background " .. c.green,
		"",
	}
	for i, color in ipairs(ansi) do
		table.insert(lines, ("color%d %s"):format(i - 1, color))
	end
	return table.concat(lines, "\n")
end

return M
