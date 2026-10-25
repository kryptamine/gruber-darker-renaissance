---https://github.com/nvim-lualine/lualine.nvim
local opts = require("gruber-darker-renaissance.config").options
local c = require("gruber-darker-renaissance.colors").setup(opts)

local bold = opts.bold and "bold" or nil

---@param accent string
local function mode(accent)
	return {
		a = { fg = c.black, bg = accent, gui = bold },
		b = { fg = c.fg, bg = c.bg1_5 },
		c = { fg = c.fg, bg = c.bg_statusline },
	}
end

return {
	normal = mode(c.yellow),
	insert = mode(c.green),
	visual = mode(c.niagara),
	replace = mode(c.red),
	command = mode(c.quartz),
	terminal = mode(c.wisteria),
	inactive = {
		a = { fg = c.fg_muted, bg = c.bg_statusline },
		b = { fg = c.fg_muted, bg = c.bg_statusline },
		c = { fg = c.fg_muted, bg = c.bg_statusline },
	},
}
