local M = {}

---https://codeberg.org/dnkl/foot
M.path = "foot/gruber-darker-renaissance.ini"

-- foot wants hex without the leading #
local function hex(color)
	return color:sub(2)
end

---@param c GruberDarkerRenaissanceColors
---@param ansi string[]
---@return string
function M.render(c, ansi)
	local lines = {
		"[colors-dark]",
		"background=" .. hex(c.bg),
		"foreground=" .. hex(c.fg),
		("cursor=%s %s"):format(hex(c.bg1), hex(c.cursor)),
		"selection-background=" .. hex(c.bg_visual),
		"urls=" .. hex(c.niagara),
		"",
	}
	for i, color in ipairs(ansi) do
		local kind = i <= 8 and "regular" or "bright"
		table.insert(lines, ("%s%d=%s"):format(kind, (i - 1) % 8, hex(color)))
	end
	return table.concat(lines, "\n")
end

return M
