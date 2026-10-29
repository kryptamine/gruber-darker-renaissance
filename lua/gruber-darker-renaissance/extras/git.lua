local M = {}

---https://git-scm.com
M.path = "git/gruber-darker-renaissance.gitconfig"

---@param c GruberDarkerRenaissanceColors
---@return string
function M.render(c)
	return ([[
# diff-so-fancy reads diff-highlight too
[color "diff"]
	meta = "%s"
	frag = "%s"
	func = "%s"
	commit = "%s"
	old = "%s"
	new = "%s"
	whitespace = "%s" reverse
[color "diff-highlight"]
	oldNormal = "%s"
	oldHighlight = "%s" "%s"
	newNormal = "%s"
	newHighlight = "%s" "%s"
[color "status"]
	added = "%s"
	changed = "%s"
	untracked = "%s"
	branch = "%s"]]):format(
		c.yellow,
		c.wisteria,
		c.gray,
		c.yellow,
		c.git.delete,
		c.git.add,
		c.diag.error,
		c.git.delete,
		c.red_light,
		c.diff.delete,
		c.git.add,
		c.git.add,
		c.diff.add,
		c.git.add,
		c.red,
		c.brown,
		c.yellow
	)
end

return M
