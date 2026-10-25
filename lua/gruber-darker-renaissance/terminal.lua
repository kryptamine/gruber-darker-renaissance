local M = {}

---The 16 ANSI colors, normal then bright, shared with every terminal extra.
---@param c GruberDarkerRenaissanceColors
---@return string[]
function M.ansi(c)
	return {
		c.bg1, -- black
		c.red,
		c.green,
		c.yellow,
		c.niagara, -- blue
		c.wisteria, -- magenta
		c.quartz, -- cyan
		c.fg, -- white
		-- Tools print dim text in bright black, so it must stay readable
		c.gray,
		c.red_light,
		c.green,
		c.yellow,
		c.niagara_light,
		c.wisteria,
		c.quartz,
		c.fg1,
	}
end

---Set `:terminal` colors
---@param c GruberDarkerRenaissanceColors
function M.setup(c)
	for i, color in ipairs(M.ansi(c)) do
		vim.g["terminal_color_" .. (i - 1)] = color
	end

	vim.g.terminal_color_background = c.bg1
	vim.g.terminal_color_foreground = c.fg1
end

return M
