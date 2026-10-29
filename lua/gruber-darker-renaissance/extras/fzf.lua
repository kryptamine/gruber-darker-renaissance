local M = {}

---https://github.com/junegunn/fzf
M.path = "fzf/gruber-darker-renaissance.txt"

---@param c GruberDarkerRenaissanceColors
---@return string
function M.render(c)
	return ([[
# -1 keeps the terminal background, so fzf matches a transparent terminal
--color=fg:%s,bg:-1,hl:%s,fg+:%s,bg+:%s,hl+:%s
--color=info:%s,prompt:%s,pointer:%s,marker:%s
--color=spinner:%s,header:%s,border:%s,label:%s
--color=gutter:-1,separator:%s,scrollbar:%s,query:%s]]):format(
		c.fg,
		c.yellow,
		c.fg1,
		c.bg1,
		c.yellow,
		c.gray,
		c.yellow,
		c.yellow,
		c.green,
		c.wisteria,
		c.niagara,
		c.bg4,
		c.gray,
		c.bg4,
		c.bg4,
		c.fg
	)
end

return M
