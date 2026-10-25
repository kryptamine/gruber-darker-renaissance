local M = {}

---https://github.com/jesseduffield/lazygit
M.path = "lazygit/gruber-darker-renaissance.yml"

---@param c GruberDarkerRenaissanceColors
---@return string
function M.render(c)
	return ([[
gui:
  theme:
    activeBorderColor: ["%s", bold]
    # Panel titles take the border color, so this stays a readable gray
    inactiveBorderColor: ["%s"]
    searchingActiveBorderColor: ["%s", bold]
    optionsTextColor: ["%s"]
    selectedLineBgColor: ["%s"]
    inactiveViewSelectedLineBgColor: ["%s"]
    cherryPickedCommitFgColor: ["%s"]
    cherryPickedCommitBgColor: ["%s"]
    markedBaseCommitFgColor: ["%s"]
    markedBaseCommitBgColor: ["%s"]
    unstagedChangesColor: ["%s"]
    defaultFgColor: ["%s"]
    # Without this lazygit hashes each author to an arbitrary truecolor
    authorColors:
      "*": "%s"]]):format(
		c.yellow,
		c.fg_gutter,
		c.niagara,
		c.niagara,
		c.bg1,
		c.bg_classic,
		c.black,
		c.niagara,
		c.black,
		c.yellow,
		c.git.delete,
		c.fg,
		c.quartz
	)
end

return M
