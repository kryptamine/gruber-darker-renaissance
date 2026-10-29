local M = {}

---https://starship.rs
M.path = "starship/gruber-darker-renaissance.toml"

---@param c GruberDarkerRenaissanceColors
---@return string
function M.render(c)
	return ([[
# starship.toml cannot include a file: paste this in and set
# palette = "gruber-darker-renaissance"
[palettes.gruber-darker-renaissance]
fg = "%s"
gray = "%s"
yellow = "%s"
green = "%s"
red = "%s"
brown = "%s"
quartz = "%s"
niagara = "%s"
wisteria = "%s"]]):format(c.fg, c.gray, c.yellow, c.green, c.red, c.brown, c.quartz, c.niagara, c.wisteria)
end

return M
