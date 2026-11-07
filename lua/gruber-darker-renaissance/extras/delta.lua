local M = {}

---https://dandavison.github.io/delta
M.path = "delta/gruber-darker-renaissance.gitconfig"

---@param c GruberDarkerRenaissanceColors
---@return string
function M.render(c)
	return ([[
# A delta feature: include this file and set `features = gruber-darker-renaissance`.
# The ansi syntax theme takes its colors from the terminal, so pair it with a
# terminal extra.
[delta "gruber-darker-renaissance"]
	syntax-theme = ansi
	minus-style = syntax "%s"
	minus-emph-style = "%s" "%s"
	plus-style = syntax "%s"
	plus-emph-style = "%s" "%s"
	commit-style = "%s"
	file-style = "%s"
	file-decoration-style = "%s" ul
	hunk-header-style = file line-number syntax
	hunk-header-file-style = "%s"
	hunk-header-line-number-style = "%s"
	hunk-header-decoration-style = omit
	whitespace-error-style = "%s" reverse
	blame-palette = "%s" "%s" "%s" "%s"
	merge-conflict-ours-diff-header-style = "%s"
	merge-conflict-theirs-diff-header-style = "%s"]]):format(
		c.diff.delete,
		c.fg1,
		c.red_muted,
		c.diff.add,
		c.fg1,
		c.green_muted,
		c.yellow,
		c.yellow,
		c.border,
		c.wisteria,
		c.wisteria,
		c.diag.error,
		c.black,
		c.bg_alt,
		c.bg_classic,
		c.bg1,
		c.yellow,
		c.yellow
	)
end

return M
