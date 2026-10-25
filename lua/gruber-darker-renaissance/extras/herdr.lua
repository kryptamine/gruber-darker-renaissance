local M = {}

---https://herdr.dev
M.path = "herdr/gruber-darker-renaissance.toml"

---@param c GruberDarkerRenaissanceColors
---@return string
function M.render(c)
	return ([[
# The "terminal" base takes the ANSI colors from the host terminal
[theme]
name = "terminal"

[theme.custom]
accent = "%s"
panel_bg = "%s"
active_row_bg = "%s"
# Left unset, it falls back to the background and the sidebar cursor vanishes
selection_bg = "%s"
surface_dim = "%s"
surface0 = "%s"
surface1 = "%s"
overlay0 = "%s"
overlay1 = "%s"
text = "%s"
subtext0 = "%s"
red = "%s"
green = "%s"
yellow = "%s"
blue = "%s"
mauve = "%s"
teal = "%s"
peach = "%s"]]):format(
		c.yellow,
		c.bg,
		c.bg1,
		c.bg4,
		c.bg,
		c.bg_classic,
		c.bg1,
		c.bg2,
		c.bg4,
		c.fg,
		c.quartz,
		c.red,
		c.green,
		c.yellow,
		c.niagara,
		c.wisteria,
		c.quartz,
		c.brown
	)
end

return M
