local M = {}

---https://github.com/microsoft/terminal
M.path = "windows-terminal/gruber-darker-renaissance.json"
-- JSON has no comments, so the generated-file header is left out
M.header = false

local names = { "black", "red", "green", "yellow", "blue", "purple", "cyan", "white" }

---@param c GruberDarkerRenaissanceColors
---@param ansi string[]
---@return string
function M.render(c, ansi)
	local scheme = {
		name = "Gruber Darker Renaissance",
		background = c.bg,
		foreground = c.fg,
		cursorColor = c.cursor,
		selectionBackground = c.bg_visual,
	}
	for i, name in ipairs(names) do
		scheme[name] = ansi[i]
		scheme["bright" .. name:sub(1, 1):upper() .. name:sub(2)] = ansi[i + 8]
	end
	local keys = vim.tbl_keys(scheme)
	table.sort(keys)
	local fields = {}
	for _, key in ipairs(keys) do
		table.insert(fields, ('      "%s": "%s"'):format(key, scheme[key]))
	end
	return ('{\n  "schemes": [\n    {\n%s\n    }\n  ]\n}'):format(table.concat(fields, ",\n"))
end

return M
