local M = {}

---https://github.com/jarrodwatts/claude-hud
M.path = "claude-hud/gruber-darker-renaissance.json"

-- JSON has no comments
M.header = false

---@param c GruberDarkerRenaissanceColors
---@return string
function M.render(c)
	return ([[
{
  "colors": {
    "context": "%s",
    "usage": "%s",
    "warning": "%s",
    "usageWarning": "%s",
    "critical": "%s",
    "model": "%s",
    "project": "%s",
    "git": "%s",
    "gitBranch": "%s",
    "label": "%s",
    "custom": "%s"
  }
}]]):format(
		c.diag.ok,
		c.niagara,
		c.diag.warn,
		c.brown,
		c.diag.error,
		c.quartz,
		c.niagara,
		c.gray,
		c.wisteria,
		c.gray,
		c.brown
	)
end

return M
